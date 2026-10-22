package org.commonmark.renderer.html;

/* loaded from: classes.dex */
public interface UrlSanitizer {
    String sanitizeImageUrl(String str);

    String sanitizeLinkUrl(String str);
}
