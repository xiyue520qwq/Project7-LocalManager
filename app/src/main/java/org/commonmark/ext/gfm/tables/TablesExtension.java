package org.commonmark.ext.gfm.tables;

import org.commonmark.Extension;
import org.commonmark.ext.gfm.tables.internal.TableBlockParser;
import org.commonmark.ext.gfm.tables.internal.TableHtmlNodeRenderer;
import org.commonmark.ext.gfm.tables.internal.TableTextContentNodeRenderer;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.NodeRenderer;
import org.commonmark.renderer.html.HtmlNodeRendererContext;
import org.commonmark.renderer.html.HtmlNodeRendererFactory;
import org.commonmark.renderer.html.HtmlRenderer;
import org.commonmark.renderer.text.TextContentNodeRendererContext;
import org.commonmark.renderer.text.TextContentNodeRendererFactory;
import org.commonmark.renderer.text.TextContentRenderer;

/* loaded from: classes.dex */
public class TablesExtension implements Parser.ParserExtension, HtmlRenderer.HtmlRendererExtension, TextContentRenderer.TextContentRendererExtension {
    private TablesExtension() {
    }

    public static Extension create() {
        return new TablesExtension();
    }

    @Override // org.commonmark.parser.Parser.ParserExtension
    public void extend(Parser.Builder parserBuilder) {
        parserBuilder.customBlockParserFactory(new TableBlockParser.Factory());
    }

    @Override // org.commonmark.renderer.html.HtmlRenderer.HtmlRendererExtension
    public void extend(HtmlRenderer.Builder rendererBuilder) {
        rendererBuilder.nodeRendererFactory(new HtmlNodeRendererFactory() { // from class: org.commonmark.ext.gfm.tables.TablesExtension.1
            @Override // org.commonmark.renderer.html.HtmlNodeRendererFactory
            public NodeRenderer create(HtmlNodeRendererContext context) {
                return new TableHtmlNodeRenderer(context);
            }
        });
    }

    @Override // org.commonmark.renderer.text.TextContentRenderer.TextContentRendererExtension
    public void extend(TextContentRenderer.Builder rendererBuilder) {
        rendererBuilder.nodeRendererFactory(new TextContentNodeRendererFactory() { // from class: org.commonmark.ext.gfm.tables.TablesExtension.2
            @Override // org.commonmark.renderer.text.TextContentNodeRendererFactory
            public NodeRenderer create(TextContentNodeRendererContext context) {
                return new TableTextContentNodeRenderer(context);
            }
        });
    }
}
