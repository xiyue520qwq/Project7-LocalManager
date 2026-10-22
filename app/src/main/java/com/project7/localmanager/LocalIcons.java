package com.project7.localmanager;

import android.content.Context;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
final class LocalIcons {
    static final int ARCHIVE = 20;
    static final int BACK = 17;
    static final int CALENDAR = 5;
    static final int CHECK = 23;
    static final int CLOSE = 22;
    static final int COPY = 13;
    static final int DOWN = 15;
    static final int HOME = 1;
    static final int LEVEL = 18;
    static final int LOGS = 4;
    static final int MAIL = 3;
    private static final String[] NAMES = {"", "house", "users", "mail", "logs", "calendar_days", "play", "power", "plus", "refresh_cw", "send", "search", "undo_2", "copy", "trash_2", "chevron_down", "chevron_right", "arrow_left", "trending_up", "shirt", "archive", "megaphone", "x", "check", "sliders_horizontal"};
    static final int NOTICE = 21;
    static final int PLAY = 6;
    static final int PLUS = 8;
    static final int POWER = 7;
    static final int REFRESH = 9;
    static final int RIGHT = 16;
    static final int SEARCH = 11;
    static final int SEND = 10;
    static final int SETTINGS = 24;
    static final int SHIRT = 19;
    static final int TRASH = 14;
    static final int UNDO = 12;
    static final int USERS = 2;

    LocalIcons() {
    }

    static int resource(Context context, int i) {
        if (i > 0) {
            String[] strArr = NAMES;
            if (i < strArr.length) {
                int identifier = context.getResources().getIdentifier("ic_" + strArr[i], "drawable", context.getPackageName());
                if (identifier == 0) {
                    throw new IllegalStateException("Missing vector: " + strArr[i]);
                }
                return identifier;
            }
        }
        throw new IllegalArgumentException("Unknown icon: " + i);
    }

    static Drawable drawable(Context context, int i) {
        return context.getDrawable(resource(context, i)).mutate();
    }
}
