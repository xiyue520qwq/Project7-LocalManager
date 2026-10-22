package org.commonmark.ext.gfm.strikethrough;

import org.commonmark.Extension;
import org.commonmark.ext.gfm.strikethrough.internal.StrikethroughDelimiterProcessor;
import org.commonmark.ext.gfm.strikethrough.internal.StrikethroughHtmlNodeRenderer;
import org.commonmark.ext.gfm.strikethrough.internal.StrikethroughTextContentNodeRenderer;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.NodeRenderer;
import org.commonmark.renderer.html.HtmlNodeRendererContext;
import org.commonmark.renderer.html.HtmlNodeRendererFactory;
import org.commonmark.renderer.html.HtmlRenderer;
import org.commonmark.renderer.text.TextContentNodeRendererContext;
import org.commonmark.renderer.text.TextContentNodeRendererFactory;
import org.commonmark.renderer.text.TextContentRenderer;

/* loaded from: classes.dex */
public class StrikethroughExtension implements Parser.ParserExtension, HtmlRenderer.HtmlRendererExtension, TextContentRenderer.TextContentRendererExtension {
    private final boolean requireTwoTildes;

    private StrikethroughExtension(Builder builder) {
        this.requireTwoTildes = builder.requireTwoTildes;
    }

    public static Extension create() {
        return builder().build();
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // org.commonmark.parser.Parser.ParserExtension
    public void extend(Parser.Builder parserBuilder) {
        parserBuilder.customDelimiterProcessor(new StrikethroughDelimiterProcessor(this.requireTwoTildes));
    }

    @Override // org.commonmark.renderer.html.HtmlRenderer.HtmlRendererExtension
    public void extend(HtmlRenderer.Builder rendererBuilder) {
        rendererBuilder.nodeRendererFactory(new HtmlNodeRendererFactory() { // from class: org.commonmark.ext.gfm.strikethrough.StrikethroughExtension.1
            @Override // org.commonmark.renderer.html.HtmlNodeRendererFactory
            public NodeRenderer create(HtmlNodeRendererContext context) {
                return new StrikethroughHtmlNodeRenderer(context);
            }
        });
    }

    @Override // org.commonmark.renderer.text.TextContentRenderer.TextContentRendererExtension
    public void extend(TextContentRenderer.Builder rendererBuilder) {
        rendererBuilder.nodeRendererFactory(new TextContentNodeRendererFactory() { // from class: org.commonmark.ext.gfm.strikethrough.StrikethroughExtension.2
            @Override // org.commonmark.renderer.text.TextContentNodeRendererFactory
            public NodeRenderer create(TextContentNodeRendererContext context) {
                return new StrikethroughTextContentNodeRenderer(context);
            }
        });
    }

    public static class Builder {
        private boolean requireTwoTildes = false;

        public Builder requireTwoTildes(boolean requireTwoTildes) {
            this.requireTwoTildes = requireTwoTildes;
            return this;
        }

        public Extension build() {
            return new StrikethroughExtension(this);
        }
    }
}
