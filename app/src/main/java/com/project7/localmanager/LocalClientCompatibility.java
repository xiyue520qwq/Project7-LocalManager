package com.project7.localmanager;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

/* loaded from: classes.dex */
final class LocalClientCompatibility {
    LocalClientCompatibility() {
    }

    static String encode(String str) {
        return "import base64; exec(compile(base64.b64decode('" + Base64.getEncoder().encodeToString(str.getBytes(StandardCharsets.UTF_8)) + "'), '<q7_compat>', 'exec'))";
    }

    static String module(String str, String str2) {
        if (!str.matches("[a-z_]+")) {
            throw new IllegalArgumentException("invalid compatibility module");
        }
        return "import gg, base64, traceback\ntry:\n    exec(compile(base64.b64decode('" + Base64.getEncoder().encodeToString(str2.getBytes(StandardCharsets.UTF_8)) + "'), '<q7_" + str + ">', 'exec'), globals())\nexcept Exception:\n    gg.avatar.callServerMethod('evalEcho', {'m': 'q7_compat_failed:" + str + "\\n' + traceback.format_exc()})\nelse:\n    gg.avatar.callServerMethod('evalEcho', {'m': 'q7_compat_loaded:" + str + "'})\n";
    }
}
