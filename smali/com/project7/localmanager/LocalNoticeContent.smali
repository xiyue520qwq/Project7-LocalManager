.class final Lcom/project7/localmanager/LocalNoticeContent;
.super Ljava/lang/Object;
.source "LocalNoticeContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;
    }
.end annotation


# static fields
.field private static final EXTENSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTML:Lorg/commonmark/renderer/html/HtmlRenderer;

.field private static final PARSER:Lorg/commonmark/parser/Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/commonmark/Extension;

    .line 19
    invoke-static {}, Lorg/commonmark/ext/gfm/tables/TablesExtension;->create()Lorg/commonmark/Extension;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;->create()Lorg/commonmark/Extension;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalNoticeContent;->EXTENSIONS:Ljava/util/List;

    .line 20
    invoke-static {}, Lorg/commonmark/parser/Parser;->builder()Lorg/commonmark/parser/Parser$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/commonmark/parser/Parser$Builder;->extensions(Ljava/lang/Iterable;)Lorg/commonmark/parser/Parser$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/commonmark/parser/Parser$Builder;->build()Lorg/commonmark/parser/Parser;

    move-result-object v1

    sput-object v1, Lcom/project7/localmanager/LocalNoticeContent;->PARSER:Lorg/commonmark/parser/Parser;

    .line 21
    invoke-static {}, Lorg/commonmark/renderer/html/HtmlRenderer;->builder()Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->extensions(Ljava/lang/Iterable;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v2}, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->escapeHtml(Z)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->sanitizeUrls(Z)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->build()Lorg/commonmark/renderer/html/HtmlRenderer;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalNoticeContent;->HTML:Lorg/commonmark/renderer/html/HtmlRenderer;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static document(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 68
    invoke-static {p0}, Lcom/project7/localmanager/LocalNoticeContent;->splitNotice(Ljava/lang/String;)Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;

    move-result-object p0

    .line 69
    iget-object v0, p0, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->warning:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<aside class=\"anti-resale\" role=\"note\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->warning:Ljava/lang/String;

    invoke-static {v1}, Lcom/project7/localmanager/LocalNoticeContent;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</aside>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<!doctype html><html lang=\"zh-CN\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"><meta http-equiv=\"Content-Security-Policy\" content=\"default-src \'none\'; style-src \'unsafe-inline\'; img-src \'none\'; script-src \'none\'; base-uri \'none\'; form-action \'none\'\"><style>html{background:#fff}body{margin:0;padding:4px 22px 24px;font-family:sans-serif;font-size:15px;line-height:1.75;color:#1c252b;overflow-wrap:anywhere;letter-spacing:0}h1{font-size:22px}h2{font-size:19px}h3{font-size:17px}h1,h2,h3{line-height:1.45;margin:20px 0 10px}p{margin:10px 0}a{color:#0e756a}ul,ol{padding-left:24px}li{margin:5px 0}blockquote{margin:14px 0;padding:4px 14px;border-left:3px solid #0e756a;background:#e2f3ed}code{font-family:monospace;background:#f0f3f5;border-radius:4px;padding:1px 4px}pre{white-space:pre-wrap;overflow-wrap:anywhere;background:#f0f3f5;padding:12px;border-radius:8px}pre code{padding:0}table{border-collapse:collapse;width:100%;table-layout:fixed;margin:14px 0}th,td{border:1px solid #dfe5e9;padding:8px;text-align:left}th{background:#f5f7f8}hr{border:0;border-top:1px solid #dfe5e9;margin:24px 0}.notice{white-space:pre-wrap}.anti-resale{color:#a02f3e;font-weight:700;background:#fff2f3;border-left:3px solid #ae3947;border-radius:8px;padding:14px 16px;margin:12px 0 20px;white-space:pre-wrap}</style></head><body><h2>\u672c\u5730\u5316\u58f0\u660e</h2>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<div class=\"notice\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->body:Ljava/lang/String;

    .line 90
    invoke-static {p0}, Lcom/project7/localmanager/LocalNoticeContent;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</div><hr><h2>\u6700\u65b0\u66f4\u65b0</h2>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p1}, Lcom/project7/localmanager/LocalNoticeContent;->markdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</body></html>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    return-object p0
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 50
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 51
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "&#39;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 50
    return-object p0
.end method

.method static externalLinkAllowed(Ljava/lang/String;)Z
    .locals 3

    .line 41
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 42
    const-string p0, "https"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "http"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 42
    :goto_0
    return v0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    return v0
.end method

.method static markdown(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/project7/localmanager/LocalNoticeContent;->PARSER:Lorg/commonmark/parser/Parser;

    invoke-virtual {v0, p0}, Lorg/commonmark/parser/Parser;->parse(Ljava/lang/String;)Lorg/commonmark/node/Node;

    move-result-object p0

    .line 28
    new-instance v0, Lcom/project7/localmanager/LocalNoticeContent$1;

    invoke-direct {v0}, Lcom/project7/localmanager/LocalNoticeContent$1;-><init>()V

    invoke-virtual {p0, v0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 36
    sget-object v0, Lcom/project7/localmanager/LocalNoticeContent;->HTML:Lorg/commonmark/renderer/html/HtmlRenderer;

    invoke-virtual {v0, p0}, Lorg/commonmark/renderer/html/HtmlRenderer;->render(Lorg/commonmark/node/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static splitNotice(Ljava/lang/String;)Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;
    .locals 5

    .line 60
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 62
    if-gez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    :goto_0
    const-string v3, "\u672c\u6e38\u620f\u7531\u3010\u5341\u539f\u8272\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1

    new-instance v0, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;

    invoke-direct {v0, v4, p0}, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 64
    :cond_1
    new-instance p0, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
