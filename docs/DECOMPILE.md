# 反编译过程记录

## 环境

本机未预装 JDK / Android SDK，全部工具为临时下载的便携版本：

| 工具 | 版本 | 用途 |
| --- | --- | --- |
| Temurin JDK | 17.0.20.1+1 (Windows x64) | 运行 apktool / jadx |
| jadx | 1.5.1 | 反编译 dex → Java 源码 |
| apktool | 2.11.1 | 解码清单 / 资源，baksmali → smali |

## 复现命令

```bash
export JAVA_HOME=/path/to/jdk-17
export PATH="$JAVA_HOME/bin:$PATH"

# 1) 资源 + smali
java -jar apktool_2.11.1.jar d -f -o out_apktool "Project7 本地管理_2.0.47Beta.apk"

# 2) Java 源码
java -cp "jadx/lib/*" jadx.cli.JadxCLI -d out_jadx \
     --show-bad-code --deobf "Project7 本地管理_2.0.47Beta.apk"
```

## 反编译结果

- jadx：255 个 dex 单元处理完成，`finished with errors, count: 4`
  （4 处为 `org.commonmark` 内被裁剪的泛型/桥接方法，其余代码完整可读）
- 产物：269 个 `.java`，其中 `com.project7.localmanager` 134 个
- apktool：`resources.arsc` 仅 3,348 字节，资源表极小；`res/` 全部为矢量图标（`<vector>`），
  无 PNG 位图（仅 `res/drawable-nodpi-v4/project7.png` 应用图标）
- 无 `lib/` 目录：APK 不含任何 native `.so`，全部逻辑在 dex + assets 中

## 归档时的整理

| 原始产物 | 归档位置 |
| --- | --- |
| `out_jadx/sources/com`、`out_jadx/sources/org` | `app/src/main/java/` |
| `out_apktool/AndroidManifest.xml` | `app/src/main/AndroidManifest.xml` |
| `out_apktool/assets` | `app/src/main/assets/` |
| `out_apktool/res` | `app/src/main/res/` |
| `out_apktool/smali` | `smali/` |
| `out_apktool/apktool.yml` | `docs/apktool.yml` |
| `out_apktool/original`、`unknown`、`META-INF` | 未归档（仅签名文件与打包残留） |

## 已知差异

1. **变量名**：局部变量为 `var1`、`v0` 之类的占位名；jadx 的 `--deobf` 只还原了部分混淆痕迹，
   本项目实际上并未做名称混淆，类名与方法名基本保持原样。
2. **lambda**：`$$ExternalSyntheticLambda0` 类为编译器生成，源码中原本是 lambda 表达式。
3. **内联常量**：部分 `static final` 常量已被编译期内联，源码中表现为字面量。
4. **`R` 类**：`R.java` 为 jadx 依资源表重建，字段 id 与原始 `R` 一致，但分组注释丢失。
5. **`import android.R`**：`MainActivity` 顶部引用框架 `R` 属正常现象（原始代码使用了
   `android.R.id.*`），并非反编译错误。
