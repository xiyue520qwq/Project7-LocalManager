package org.commonmark.ext.gfm.strikethrough.internal;

import java.util.Set;
import org.commonmark.node.Node;
import org.commonmark.renderer.text.TextContentNodeRendererContext;
import org.commonmark.renderer.text.TextContentWriter;

/* loaded from: classes.dex */
public class StrikethroughTextContentNodeRenderer extends StrikethroughNodeRenderer {
    private final TextContentNodeRendererContext context;
    private final TextContentWriter textContent;

    @Override // org.commonmark.ext.gfm.strikethrough.internal.StrikethroughNodeRenderer, org.commonmark.renderer.NodeRenderer
    public /* bridge */ /* synthetic */ Set getNodeTypes() {
        return super.getNodeTypes();
    }

    public StrikethroughTextContentNodeRenderer(TextContentNodeRendererContext context) {
        this.context = context;
        this.textContent = context.getWriter();
    }

    @Override // org.commonmark.renderer.NodeRenderer
    public void render(Node node) {
        this.textContent.write('/');
        renderChildren(node);
        this.textContent.write('/');
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
