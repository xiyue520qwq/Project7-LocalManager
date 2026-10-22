package com.project7.localmanager;

import java.net.URI;
import java.util.Arrays;
import java.util.List;
import org.commonmark.Extension;
import org.commonmark.ext.gfm.strikethrough.StrikethroughExtension;
import org.commonmark.ext.gfm.tables.TablesExtension;
import org.commonmark.node.AbstractVisitor;
import org.commonmark.node.Image;
import org.commonmark.node.Node;
import org.commonmark.node.Text;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;
import org.commonmark.renderer.text.TextContentRenderer;

/* loaded from: classes.dex */
final class LocalNoticeContent {
    private static final List<Extension> EXTENSIONS;
    private static final HtmlRenderer HTML;
    private static final Parser PARSER;

    static {
        List<Extension> asList = Arrays.asList(TablesExtension.create(), StrikethroughExtension.create());
        EXTENSIONS = asList;
        PARSER = Parser.builder().extensions(asList).build();
        HTML = HtmlRenderer.builder().extensions(asList).escapeHtml(true).sanitizeUrls(true).build();
    }

    private LocalNoticeContent() {
    }

    static String markdown(String str) {
        Node parse = PARSER.parse(str);
        parse.accept(new AbstractVisitor() { // from class: com.project7.localmanager.LocalNoticeContent.1
            @Override // org.commonmark.node.AbstractVisitor, org.commonmark.node.Visitor
            public void visit(Image image) {
                String render = TextContentRenderer.builder().build().render(image);
                if (render.isEmpty()) {
                    render = "[图片]";
                }
                image.insertBefore(new Text(render));
                image.unlink();
            }
        });
        return HTML.render(parse);
    }

    static boolean externalLinkAllowed(String str) {
        try {
            URI uri = new URI(str);
            if (("https".equalsIgnoreCase(uri.getScheme()) || "http".equalsIgnoreCase(uri.getScheme())) && uri.getHost() != null) {
                return uri.getUserInfo() == null;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    static String escape(String str) {
        return str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;").replace("'", "&#39;");
    }

    static final class NoticeParts {
        final String body;
        final String warning;

        NoticeParts(String str, String str2) {
            this.warning = str;
            this.body = str2;
        }
    }

    static NoticeParts splitNotice(String str) {
        String replace = str.replace("\r\n", "\n");
        int indexOf = replace.indexOf("\n\n");
        String substring = indexOf < 0 ? replace : replace.substring(0, indexOf);
        if (substring.contains("本游戏由【十原色】")) {
            return new NoticeParts(substring, indexOf >= 0 ? replace.substring(indexOf + 2) : "");
        }
        return new NoticeParts("", str);
    }

    static String document(String str, String str2) {
        String str3;
        NoticeParts splitNotice = splitNotice(str);
        if (splitNotice.warning.isEmpty()) {
            str3 = "";
        } else {
            str3 = "<aside class=\"anti-resale\" role=\"note\">" + escape(splitNotice.warning) + "</aside>";
        }
        return "<!doctype html><html lang=\"zh-CN\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\"><meta http-equiv=\"Content-Security-Policy\" content=\"default-src 'none'; style-src 'unsafe-inline'; img-src 'none'; script-src 'none'; base-uri 'none'; form-action 'none'\"><style>html{background:#fff}body{margin:0;padding:4px 22px 24px;font-family:sans-serif;font-size:15px;line-height:1.75;color:#1c252b;overflow-wrap:anywhere;letter-spacing:0}h1{font-size:22px}h2{font-size:19px}h3{font-size:17px}h1,h2,h3{line-height:1.45;margin:20px 0 10px}p{margin:10px 0}a{color:#0e756a}ul,ol{padding-left:24px}li{margin:5px 0}blockquote{margin:14px 0;padding:4px 14px;border-left:3px solid #0e756a;background:#e2f3ed}code{font-family:monospace;background:#f0f3f5;border-radius:4px;padding:1px 4px}pre{white-space:pre-wrap;overflow-wrap:anywhere;background:#f0f3f5;padding:12px;border-radius:8px}pre code{padding:0}table{border-collapse:collapse;width:100%;table-layout:fixed;margin:14px 0}th,td{border:1px solid #dfe5e9;padding:8px;text-align:left}th{background:#f5f7f8}hr{border:0;border-top:1px solid #dfe5e9;margin:24px 0}.notice{white-space:pre-wrap}.anti-resale{color:#a02f3e;font-weight:700;background:#fff2f3;border-left:3px solid #ae3947;border-radius:8px;padding:14px 16px;margin:12px 0 20px;white-space:pre-wrap}</style></head><body><h2>本地化声明</h2>" + str3 + "<div class=\"notice\">" + escape(splitNotice.body) + "</div><hr><h2>最新更新</h2>" + markdown(str2) + "</body></html>";
    }
}
