package org.commonmark.renderer.html;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class DefaultUrlSanitizer implements UrlSanitizer {
    private Set<String> protocols;

    public DefaultUrlSanitizer() {
        this(Arrays.asList("http", "https", "mailto"));
    }

    public DefaultUrlSanitizer(Collection<String> protocols) {
        this.protocols = new HashSet(protocols);
    }

    @Override // org.commonmark.renderer.html.UrlSanitizer
    public String sanitizeLinkUrl(String url) {
        String url2 = stripHtmlSpaces(url);
        int i = 0;
        int n = url2.length();
        while (true) {
            if (i < n) {
                switch (url2.charAt(i)) {
                    case '#':
                    case '/':
                    case '?':
                        break;
                    case ':':
                        String protocol = url2.substring(0, i).toLowerCase();
                        if (!this.protocols.contains(protocol)) {
                            return "";
                        }
                        break;
                    default:
                        i++;
                }
            }
        }
        return url2;
    }

    @Override // org.commonmark.renderer.html.UrlSanitizer
    public String sanitizeImageUrl(String url) {
        return sanitizeLinkUrl(url);
    }

    private String stripHtmlSpaces(String s) {
        int i = 0;
        int n = s.length();
        while (n > 0 && isHtmlSpace(s.charAt(n - 1))) {
            n--;
        }
        while (i < n && isHtmlSpace(s.charAt(i))) {
            i++;
        }
        if (i == 0 && n == s.length()) {
            return s;
        }
        return s.substring(i, n);
    }

    private boolean isHtmlSpace(int ch) {
        switch (ch) {
            case 9:
            case 10:
            case 12:
            case 13:
            case 32:
                return true;
            default:
                return false;
        }
    }
}
