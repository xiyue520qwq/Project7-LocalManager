# 发行 APK 构建记录

由 `2.0.48Mod` 反编译产物回编译得到的可安装 APK。**这是重打包产物，不是作者签名版本。**

## 产物

| 项目 | 值 |
| --- | --- |
| 文件名 | `Project7-LocalManager-2.0.48Mod-release.apk` |
| 大小 | 3,122,109 字节 |
| SHA-256 | `a3bf16a9e10a455e47921f2ff374700228a012ce5a0c91c39416c5fa381cd9f8` |
| 包名 | `com.project7.localmanages` |
| 版本 | 2.0.48Mod（versionCode 20048） |
| minSdk / targetSdk | 26 / 32 |
| 签名 | v2 + v3 通过（v1 已写入但 minSdk 26 下不参与校验） |
| 签名证书 | `CN=Project7 Local Manager, O=Project7, C=CN`，SHA-256 `6eafffd019ad44f68472babd4dbf1eef9f154ca96e1a907366a1c0b2a2d361fc` |

## 与输入包的差异

| 项 | 输入 `2.0.48Mod.apk` | 本次发行包 |
| --- | --- | --- |
| dex | 3 个（`classes.dex` 486 类 + `classes2`/`classes3` 各 2 类） | **1 个**，486 类 |
| MT 注入组件 | `MTDataFilesProvider` + `MTDataFilesWakeUpActivity`，清单中出现 4 次 | **已全部移除**（4 个类 + 清单 4 项） |
| 清单 | 含 `bin.mt.*` 组件 | 仅 `MainActivity` + `GatewayService` |
| 签名 | MT 内置测试证书 | 本项目新生成的发行密钥 |
| assets | 35 个 | 35 个（未改动） |
| `classes.dex` 类数 | 486 | **486（与原始一致）** |

除剥离 MT 组件与重签名外，**代码与数据未做任何修改**。

## 构建步骤

```bash
# 1) 反编译
java -jar apktool_2.11.1.jar d -f -o build48 "Project7 本地管理_2.0.48Mod.apk"

# 2) 剥离 MT 管理器注入的组件
rm -rf build48/smali_classes2 build48/smali_classes3
# 并删除 AndroidManifest.xml 中 4 个 bin.mt.* 节点（2 个 activity + 2 个 provider）

# 3) 回编译
java -jar apktool_2.11.1.jar b build48 -o unsigned.apk

# 4) 对齐
zipalign -p -f 4 unsigned.apk aligned.apk

# 5) 签名（首次需先生成密钥）
keytool -genkeypair -keystore project7-release.keystore -alias project7 \
        -keyalg RSA -keysize 2048 -validity 10000 \
        -dname "CN=Project7 Local Manager, OU=Local, O=Project7, L=Unknown, ST=Unknown, C=CN"
apksigner sign --ks project7-release.keystore --ks-key-alias project7 \
        --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
        --out release.apk aligned.apk

# 6) 校验
apksigner verify --verbose --print-certs release.apk
zipalign -c -v 4 release.apk
```

## 密钥

| 项 | 值 |
| --- | --- |
| 文件 | `project7-release.keystore`（仓库外，与工作区同级） |
| 别名 | `project7` |
| 库口令 / 密钥口令 | `project7-release` |

> **务必替换口令并离线备份密钥库。** 后续版本必须用同一个密钥签名才能覆盖升级；
> 密钥丢失后无法发布可升级的更新。

## 未验证项

- 未在真机或模拟器上安装运行，功能与稳定性未经实测
- 剧情 / 战斗 / 存档相关逻辑沿用原 Mod 的裁剪状态（四条剧情线引擎已缺失）
