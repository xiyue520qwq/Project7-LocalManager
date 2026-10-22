# v2.0.48Mod 版本说明

> **这不是官方构建。** 本文件记录 `Project7 本地管理_2.0.48Mod.apk` 的溯源分析结果，
> 供审阅本 PR 时判断该版本是否可以合并。

## 一、判定为第三方重打包的依据

| 证据 | 说明 |
| --- | --- |
| 包名变更 | `com.project7.localmanager` → `com.project7.localmanages`（末尾多一个 `s`），与官方包名不同，可与原版共存安装 |
| MT 管理器注入 | 清单中出现 `bin.mt.file.content.MTDataFilesProvider` 与 `MTDataFilesWakeUpActivity`（各重复两次），这是 MT 管理器重打包重签名时自动注入的组件，官方构建不会包含 |
| 版本名 | `versionName = "2.0.48Mod"`，`versionCode = 20048` |
| 构建工具痕迹 | assets 中新增 `client_activity_compat.pyc`（Python 3.6 字节码，magic `03f30d0a`），是同目录 `.py` 的编译产物，说明打包前经过人工处理 |
| 签名证书 | v2/v3 签名为 MT 管理器内置测试证书：`EMAILADDRESS=android@android.com, CN=Android, OU=Android, O=Android, L=Mountain View, ST=California, C=US`，SHA-256 `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`。APK 内**完全没有 `META-INF/`**（无 v1 签名） |
| 多 dex 结构 | 2.0.47 只有 `classes.dex`；本版本有 3 个 dex，其中 `classes2.dex`、`classes3.dex` 各 9.6 KB 且内容重复，装的全是 MT 注入的两个组件 |

原 2.0.47Beta 使用 `CN=Android Debug` 证书（作者自建流程），本版本由 MT 管理器重签，**签名与原版不同**。

## 二、与 2.0.47Beta 的代码差异

### 删除的类（14 个）

```
LocalAlanCityEngine          LocalStoryClearConditions
LocalDailyPureEngine         LocalStoryGeneralEngine
LocalDalviraCityEngine       LocalStoryTreasureConditions
LocalDalviraHeroEngine       LocalStoryTreasureRewardEngine
LocalDalviraStoryEngine      LocalWenziBuildingEngine
LocalFlashbackEngine         LocalWenziCityEngine
LocalOratioCityEngine        LocalWenziHeroEngine
```

覆盖 **阿岚、达尔维拉、奥拉托、温兹** 四条线的城市 / 英雄 / 剧情引擎，以及剧情通关条件、
剧情宝物条件与奖励引擎、回溯（Flashback）引擎。全量检索确认这些类在 2.0.48Mod 中
**残留引用为 0**，属整块删除而非改名，因此对应的剧情与城市功能在本版本中不可用。

### 新增的类（4 个）

| 类 | 作用 |
| --- | --- |
| `LocalArtifactFix` | 给 `ar` 子文档补 `o=50`、`il=20`、`aao=20` 三个字段，并保证 `oa` 存在 |
| `LocalRefreshFix` | 刷新相关修补 |
| `LocalTreasureAttr` | 宝物属性 |
| `LocalTreasureMax` | 宝物上限 |

### 其他改动

- 59 个既有类有内容改动，集中在 `LocalGatewayServer`、`LocalDailyEngine`、`LocalConstructionEngine`、`LocalEventEngine` 等
- `R.java` 按新资源表重建

## 三、assets 数据差异

| 文件 | 2.0.47Beta | 2.0.48Mod | 变化 |
| --- | --- | --- | --- |
| `patrol.tsv` | 52,680 B（2580 行） | 3,802 B（186 行） | **-93%**，巡查数据大幅删减 |
| `historical_activities.json` | 150,436 B | 57,780 B | **-62%**，历史活动条目减少 |
| `event_graph.tsv` | 835,419 B | 797,669 B | -4.5% |
| `growth.tsv` | 1,096,xxx B | 1,07x,xxx B | 略减 |
| `economy.tsv` | 5531 行 | 5513 行 | 略减 |
| `daily.tsv` | 24,321,477 B | 24,333,492 B | +12 KB |
| `update_notice.md` | 首条为 v2.0.47Beta | 首条为 **v2.0.44Beta** | **公告回滚**，缺失 v2.0.45 / v2.0.46 / v2.0.47 三条 |
| `client_activity_compat.pyc` | 无 | 14,078 B | 新增 |
| `hakopania.bson` / `new_player.bson` | — | 前者变动 | 模板调整 |

**公告回滚到 v2.0.44 是重要信号**：说明该 Mod 的代码基线早于 2.0.47，
并非在 2.0.47 基础上继续开发，而是"更早的树 + 版本号提升 + 内容裁剪"。

## 四、安全检查

| 检查项 | 结果 |
| --- | --- |
| 权限 | 与 2.0.47 完全一致（`INTERNET`、`FOREGROUND_SERVICE`、`FOREGROUND_SERVICE_DATA_SYNC`、`POST_NOTIFICATIONS`），无新增 |
| `Runtime.exec` / `ProcessBuilder` | 0 / 0，两版本一致 |
| `DexClassLoader` / `Class.forName` / `setAccessible` | 0，无动态加载与反射 |
| `System.load` / `loadLibrary` | 0，无 native 库 |
| 网络端点 | 仅 `https://project7.invalid/notice/`（占位域名），与 2.0.47 相同 |
| `Socket` 调用数 | 15 → 15，一致 |

**未发现夹带后门、外联地址或动态加载行为的迹象。** MT 注入的两个组件仅用于文件选择，
且受 `android.permission.MANAGE_DOCUMENTS` 保护。

## 五、合并建议

本 PR **建议保持 draft 或不合入 main**，原因：

1. 它是内容被裁剪的分支版本，不是 2.0.47 的功能升级，合并会让 main 丢失四条剧情线与大量巡查数据
2. 包名不同（`localmanages`），与 main 的工程标识不一致，合并后工程无法对应单一应用
3. 来源非官方构建，作者未确认

如需保留，建议以独立仓库或 `mod/` 子目录形式归档，而非替换 main 主线。
