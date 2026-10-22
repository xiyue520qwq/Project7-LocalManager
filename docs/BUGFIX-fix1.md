# 修复：战斗结算后不显示「已完成」

版本：`2.0.48Mod-fix1`（versionCode 20049）
修复点：1 处，`LocalChapterCityEngine` 内联 `commit()` 时丢失了原版语义。

## 一、完整因果链

游戏客户端判断某个关卡「已完成」，走的是这条链：

```
战斗结算 → q7EconomyCommit.scene = 关卡id
        → 客户端下次同步 → LocalEconomyEngine.recover()
        → recover() 读 scene，scene > 0 才 progress.recordCondition("battle", scene)
        → LocalCityProgress.hasBattle(progress, id) 查询 progress.eventConditions["battle"]
        → 命中则界面显示「已完成」
```

## 二、断点位置

`recover()` 在 2.0.47 与 2.0.48Mod 中**完全一致**：

```java
int scene = intValue(doc, "scene");
if (scene > 0) {
    progress.recordCondition("battle", Collections.singleton(scene));
}
```

结算写入 `scene` 的地方也一致（`LocalEconomyEngine` 第 86 行）：

```java
BsonLite.document("id", uuid(), "av", remainingActions, "scene", Integer.valueOf(i))
```

问题出在**写入之后又被覆盖**。`LocalChapterCityEngine` 在 friendly 值变动后会重写整个 `q7EconomyCommit`：

**原作者 2.0.47：**
```java
result.profile = ... "q7EconomyCommit",
    LocalStoryFriendshipEngine.commit(result.profile, progress, linkedHashMap));
```

`commit()` 的实现是「取已有文档 → 只替换 id 与 ef」，`scene` / `cf` 原样保留：

```java
byte[] doc = doc(bArr, "q7EconomyCommit");
String id = stringValue(doc, "id");
if (id == null || id.equals(progress.economyCommit)) {
    doc = document("av", ..., "sgw", ..., "scene", 0, "cf", EMPTY, "ef", EMPTY);  // 仅首次
}
// ... 合并 ef
return withProfileDocument(withProfileString(doc, "id", uuid()), "ef", ef);
```

**你的 2.0.48Mod（内联展开）：**
```java
result.profile = ... "q7EconomyCommit",
    BsonLite.document("id", uuid(), "av", ..., "sgw", ..., "scene", 0,
                      "cf", BsonLite.EMPTY_DOCUMENT, "ef", bArr8));
```

**无条件新建文档，`scene` 硬编码 0，`cf` 也一起清空。** 于是：

1. 战斗结算把 `scene` 写成关卡 id ✅
2. 紧接着本次结算带来的 friendly 变动触发 `LocalChapterCityEngine`，把 `scene` 覆盖成 0 ❌
3. 客户端同步时 `recover()` 看到 `scene == 0`，跳过 `recordCondition("battle", ...)`
4. `eventConditions["battle"]` 里没有这个关卡 → `hasBattle()` 返回 false → **界面不显示「已完成」**

这也解释了为什么是「战斗后不显示」而不是「完全不记录」：结算本身是成功的，只是完成标记在最后一步被抹掉了。

## 三、修复

把内联处的 `scene` 从常量 0 改成读取已有值：

```smali
# 原
const/4 v7, 0x0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8

# 改
iget-object v7, v0, LocalResourceEngine$Result;->profile:[B
const-string v8, "q7EconomyCommit"
invoke-static {v7, v8}, LocalResourceEngine;->doc([BLjava/lang/String;)[B
move-result-object v7
const-string v8, "scene"
invoke-static {v7, v8}, BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;
move-result-object v7
if-eqz v7, :q7_scene_default
move-object v8, v7
goto :q7_scene_ready
:q7_scene_default
const/4 v7, 0x0
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
:q7_scene_ready
aput-object v8, v4, v5
```

仅使用原有临时寄存器 `v7` / `v8`，不影响数组寄存器 `v4` 与索引寄存器 `v5`。

## 四、验证

成品 APK 反编译回读，补丁已生效：

```java
Integer intValue3 = BsonLite.intValue(
        LocalResourceEngine.doc(result.profile, "q7EconomyCommit"), "scene");
objArr[7] = intValue3 != null ? intValue3 : 0;
```

| 项 | 值 |
| --- | --- |
| 文件 | `Project7-LocalManager-2.0.48Mod-fix1.apk` |
| 大小 | 3,122,109 字节 |
| SHA-256 | `ff86fffcf06f71464afd10a74b67c0481f33b29edeb196aecb29b8ea310aab6d` |
| versionCode / Name | 20049 / `2.0.48Mod-fix1` |
| classes.dex | 486 类，907,300 字节（原始 907,264，+36 字节） |
| 签名 | 与 fix0 同一发行密钥，可覆盖升级 |

## 五、同一处引入的第二个回归（未修）

内联版本还把 `cf` 写成了 `EMPTY_DOCUMENT`，而原版 `commit()` 会保留 `cf`。
`cf` 存放巡查疲劳记录，被清空可能导致疲劳值异常。这一处**没有改**，因为：

- 与本次报告的「已完成」症状无直接关系
- 缺少真机验证条件，不宜一次改动过多

若确认存在疲劳相关异常，可按同样方式补：把 `"cf", EMPTY_DOCUMENT` 换成读取已有 `cf`。

## 六、未验证项

**没有真机安装测试。** 补丁的正确性基于静态分析 + 反编译回读，未经过实际运行验证。
请安装后打一场主线关卡，确认结算后城市界面出现「已完成」。
