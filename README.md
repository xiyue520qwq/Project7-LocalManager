# Project7 本地管理 · 反编译源码归档

> 本仓库内容由 **APK 反编译** 得到，用于源码阅读、行为分析与自行研究，**不是**原始开发工程。
> 变量名、注释、部分语法结构由反编译器推断，与原作者的源码存在差异。

> [!WARNING]
> **当前分支（`feat/v2.0.48-mod`）归档的是第三方重打包的 `2.0.48Mod`，不是官方构建。**
> 包名被改为 `com.project7.localmanages`，清单中被注入 MT 管理器的文件提供者，
> 四条剧情线（阿岚 / 达尔维拉 / 奥拉托 / 温兹）的引擎被整块删除，巡查数据减少约 93%，
> 更新公告回滚到 v2.0.44。溯源分析与完整差异见 [`docs/MOD_NOTES.md`](docs/MOD_NOTES.md)。
> `main` 分支保留官方 2.0.47Beta 的归档。

游戏本地网关 / 本地管理器，为单机版《七都》提供离线账号、剧情与数值服务。
纯 Android Framework 实现（无 AndroidX），启动后以 `GatewayService` 前台服务的形式在本机端口
上模拟游戏服务端，游戏本体连上后即可离线游玩。

---

## 一、APK 元信息

| 项目 | 值 |
| --- | --- |
| 应用名 | Project7 本地管理 |
| 包名 | `com.project7.localmanages` |
| 版本 | 2.0.48Mod |
| versionCode | 20048 |
| minSdkVersion | 26 (Android 8.0) |
| targetSdkVersion | 32 (Android 12L) |
| compileSdkVersion | 32 |
| APK 大小 | 3,122,026 字节 |
| APK SHA-256 | `3924e796a06783da2b8ae7a733e5a28cfd1aa8814c526738a263b89b5e37d208` |
| 签名 | MT 管理器内置测试证书 `CN=Android, O=Android`（SHA-256 `a4:0d:a8:0a:…:5d:c0`），仅 v2/v3 签名，无 v1 |
| 组件 | `MainActivity`、`GatewayService`、**MT 注入的** `MTDataFilesProvider` + `MTDataFilesWakeUpActivity`（各重复两次，分布在 classes2/classes3） |
| dex | 3 个：`classes.dex` 907 KB + `classes2.dex` / `classes3.dex` 各 9.6 KB（后两者为 MT 注入组件） |
| 权限 | `INTERNET`、`FOREGROUND_SERVICE`、`FOREGROUND_SERVICE_DATA_SYNC`、`POST_NOTIFICATIONS` |

## 二、代码规模

| 内容 | 数量 |
| --- | --- |
| Java 源文件 | 261 个（其中本项目 `com.project7.localmanages` 123 个） |
| smali 文件 | 490 个（`smali/` 486 + `smali_classes2/` 2 + `smali_classes3/` 2） |
| 资源文件 | drawable 图标 25 个 + `values` 样式 + 应用图标 |
| assets 数据 | 35 个（`.tsv` 配置表、`.bson` 模板、`.py` 兼容脚本、`.pyc`、公告） |

## 三、目录结构

```
Project7-LocalManager/
├── app/
│   ├── build.gradle                     # 参考用 Gradle 配置（重建，未验证可编译）
│   └── src/main/
│       ├── AndroidManifest.xml          # apktool 解码后的清单
│       ├── java/
│       │   ├── com/project7/localmanager/   # 项目本体，134 个类
│       │   └── org/commonmark/              # 内嵌第三方（CommonMark Java，被裁剪打包进 dex）
│       ├── assets/                      # 运行时数据与 Python 兼容脚本
│       └── res/                         # 解码后的资源（矢量图标 / 样式）
├── smali/                               # apktool baksmali 结果（classes.dex），可用于字节级比对与回编
├── smali_classes2/                      # classes2.dex —— 仅含 MT 注入组件
├── smali_classes3/                      # classes3.dex —— 与 classes2 内容重复
├── docs/
│   ├── apktool.yml                      # apktool 反编译元数据
│   ├── DECOMPILE.md                     # 反编译过程、工具版本与复现命令
│   └── MOD_NOTES.md                     # 本版 Mod 溯源分析与差异清单
├── build.gradle
├── settings.gradle
├── .gitignore
└── README.md
```

## 四、核心模块说明

`com.project7.localmanager` 下按职责大致分为四层：

**入口与 UI**
- `MainActivity` — 单 Activity 的全部界面（账号管理、邮件、日志、公告等），全部用代码构建 View
- `GatewayService` — 前台服务，持有本地网关生命周期
- `LocalAppVersion` / `LocalDiagnosticLog` — 版本信息与诊断日志

**网关与协议**
- `LocalGatewayServer` — 本地 HTTP 网关主体（最大单文件，约 210 KB）
- `BsonLite` — 精简 BSON 编解码，用于与游戏客户端交换二进制协议
- `LocalClientCompatibility` — 客户端版本兼容与响应字段适配

**账号与存档**
- `LocalAccountStore` / `LocalProfileStore` / `LocalActivityStore` — 账号、档案、行为记录持久化
- `LocalAvatarPayload` / `LocalAccountFeatures` — 头像与账号特性开关

**业务引擎（按玩法拆分）**
- 城市与章节：`LocalAlanCityEngine`、`LocalAnCityEngine`、`LocalArkCityEngine`、`LocalDalviraCityEngine`、`LocalChapterCityEngine`
- 战斗与成长：`LocalCombatCatalog`、`LocalHeroLiberateEngine`、`LocalEquipmentEngine`、`LocalStarEngine`
- 玩法系统：`LocalDailyEngine`、`LocalCommerceEngine`、`LocalConstructionEngine`、`LocalTreasureOperationEngine`、`LocalDrawEngine`、`LocalHomeWishEngine`
- 剧情：`LocalDalviraStoryEngine`、`LocalDiaryEngine`、`LocalDeepEchoEngine`、`LocalCgEngine`

**assets 内嵌资源**
- `*.tsv` — 数值与配置表（`daily.tsv` 约 24 MB，是最大的一张表）
- `*.bson` — 新手账号模板 `new_player.bson`、`hakopania.bson`
- `client_*.py` — 针对游戏本体（cocos2d-x + Python 客户端）的兼容补丁脚本，用于修正本地化内容与客户端校验

## 五、关于构建

`app/build.gradle` 与 `settings.gradle` 是**根据清单和 dex 反推重建的参考配置**，仅用于说明工程参数
（包名、SDK 版本、版本号），**未经验证能够直接编译通过**。原因：

1. 反编译出的 Java 存在少量无法还原的语法（如 `synthetic` lambda 类、泛型推断），
2. `org.commonmark` 已被裁剪并打包进 dex，工程里若同时保留源码与依赖会产生重复类，
3. 原工程的签名配置、资源混淆策略未包含在 APK 中。

若需要可运行的产物，推荐直接用 `smali/` 回编：

```bash
# 需要 apktool 2.11.1
apktool b smali -o rebuilt.apk
# 再用你的 debug keystore 签名
```

## 六、免责声明

- 本仓库代码由 APK 反编译生成，**著作权归原开发者所有**。此处归档仅用于个人学习、研究与
  对自己构建的应用做源码备份。
- 项目本身为**非盈利**的本地化 / 单机化工具（见 `assets/local_notice.txt`），请勿用于任何商业用途。
- 请勿将本仓库内容用于绕过正版验证、传播付费内容或其他侵权场景。
- 若原作者认为本归档不当，可提出后立即删除。

## 七、致谢

- 原始项目：Project7 本地管理（十原色 本地化）
- 部分实现逻辑参考：GitHub `AnimeGamesProxy`
- 内嵌第三方：[CommonMark Java](https://github.com/commonmark/commonmark-java)、[Lucide Icons](https://lucide.dev)（见 `assets/../licenses`）
