package org.commonmark.ext.gfm.strikethrough.internal;

import java.util.Collections;
import java.util.Map;
import java.util.Set;
import org.commonmark.node.Node;
import org.commonmark.renderer.html.HtmlNodeRendererContext;
import org.commonmark.renderer.html.HtmlWriter;

/* loaded from: classes.dex */
public class StrikethroughHtmlNodeRenderer extends StrikethroughNodeRenderer {
    private final HtmlNodeRendererContext context;
    private final HtmlWriter html;

    @Override // org.commonmark.ext.gfm.strikethrough.internal.StrikethroughNodeRenderer, org.commonmark.renderer.NodeRenderer
    public /* bridge */ /* synthetic */ Set getNodeTypes() {
        return super.getNodeTypes();
    }

    public StrikethroughHtmlNodeRenderer(HtmlNodeRendererContext context) {
        this.context = context;
        this.html = context.getWriter();
    }

    @Override // org.commonmark.renderer.NodeRenderer
    public void render(Node node) {
        Map<String, String> attributes = this.context.extendAttributes(node, "del", Collections.emptyMap());
        this.html.tag("del", attributes);
        renderChildren(node);
        this.html.tag("/del");
    }

    private void renderChildren(Node parent) {
        Node node = parent.getFirstChild();
        while (node != null) {
            Node next = node.getNext();
            this.context.render(node);
            node = next;
        }
    }
}
