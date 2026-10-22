package com.project7.localmanager;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
final class LocalUiSearch {
    LocalUiSearch() {
    }

    static List<Integer> matching(List<String> list, String str) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        String lowerCase = str.trim().toLowerCase(Locale.ROOT);
        String[] split = lowerCase.isEmpty() ? new String[0] : lowerCase.split("\\s+");
        for (int i = 0; i < list.size(); i++) {
            String lowerCase2 = list.get(i).toLowerCase(Locale.ROOT);
            int length = split.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = true;
                    break;
                }
                if (!lowerCase2.contains(split[i2])) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }
}
