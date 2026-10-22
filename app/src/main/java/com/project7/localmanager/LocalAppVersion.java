package com.project7.localmanager;

import android.content.Context;
import android.content.pm.PackageManager;

/* loaded from: classes.dex */
final class LocalAppVersion {
    LocalAppVersion() {
    }

    static String label(Context context) {
        try {
            return "v" + context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "版本未知";
        }
    }
}
