package com.project7.localmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
final class LocalMazeExtras {
    LocalMazeExtras() {
    }

    /* renamed from: v */
    private static int m51v(byte[] bArr, String str) {
        return LocalMazeBattleEngine.m49v(bArr, str);
    }

    /* renamed from: d */
    private static byte[] m50d(byte[] bArr, String str) {
        return LocalMazeBattleEngine.m48d(bArr, str);
    }

    static boolean coreRoom(byte[] bArr, Random random) {
        int m51v = m51v(bArr, "box_weight");
        int m51v2 = m51v(bArr, "core_weight");
        if (m51v < 0 || m51v2 < 0 || m51v + m51v2 <= 0) {
            throw new IllegalArgumentException("缺少巡逻奖励房间权重");
        }
        return random.nextInt(Math.addExact(m51v, m51v2)) >= m51v;
    }

    static byte[] cores(byte[] bArr, byte[] bArr2) {
        if (m51v(bArr2, "core_count") != 10 || m51v(bArr2, "cube_count") != 1) {
            throw new IllegalArgumentException("巡逻特殊敌人配置无效");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < 10; i++) {
            linkedHashMap.put(Integer.toString(i), LocalMazeBattleEngine.rolls(bArr, "core"));
        }
        linkedHashMap.put("10", LocalMazeBattleEngine.rolls(bArr, "cube"));
        return LocalMazeBattleEngine.document(linkedHashMap);
    }

    static byte[] breakables(byte[] bArr, byte[] bArr2, Random random) {
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(bArr2, "breakables"));
        if (arrayList.size() < 3) {
            throw new IllegalArgumentException("缺少原版巡逻破坏物配置");
        }
        Collections.shuffle(arrayList, random);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int nextInt = random.nextInt(4);
        for (int i = 0; i < nextInt; i++) {
            linkedHashMap.put(((Integer) arrayList.get(i)).toString(), LocalMazeBattleEngine.rolls(bArr, "breakable"));
        }
        return LocalMazeBattleEngine.document(linkedHashMap);
    }

    static byte[] previews(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : BsonLite.keys(bArr)) {
            linkedHashMap.put(str, LocalMazeBattleEngine.reward(LocalResourceEngine.array(m50d(bArr, str))));
        }
        return LocalMazeBattleEngine.document(linkedHashMap);
    }

    static List<byte[]> collected(byte[] bArr, byte[] bArr2) {
        ArrayList arrayList = new ArrayList();
        byte[] m50d = m50d(bArr, "coreGrants");
        byte[] m50d2 = m50d(bArr, "breakableGrants");
        for (String str : Arrays.asList("hexinzhixia_kill", "breakable_kill")) {
            if (BsonLite.keys(bArr2).contains(str) && BsonLite.documentValue(bArr2, str) == null) {
                throw new IllegalArgumentException("巡逻掉落记录格式无效");
            }
            List<String> keys = BsonLite.keys(m50d(bArr2, str));
            if (new HashSet(keys).size() != keys.size()) {
                throw new IllegalArgumentException("巡逻掉落记录重复");
            }
        }
        byte[] m50d3 = m50d(bArr2, "hexinzhixia_kill");
        for (String str2 : BsonLite.keys(m50d3)) {
            byte[] m50d4 = m50d(m50d3, str2);
            byte[] m50d5 = m50d(m50d, str2);
            Integer intValue = BsonLite.intValue(m50d4, "0");
            Integer intValue2 = BsonLite.intValue(m50d4, "1");
            if (!BsonLite.keys(m50d).contains(str2) || BsonLite.keys(m50d4).size() != 2 || intValue == null || intValue2 == null || intValue.intValue() < 0 || intValue.intValue() > 10 || intValue2.intValue() < 0 || intValue2.intValue() > 1) {
                throw new IllegalArgumentException("巡逻特殊敌人击杀记录无效");
            }
            for (int i = 0; i < intValue.intValue(); i++) {
                arrayList.addAll(LocalResourceEngine.array(m50d(m50d5, Integer.toString(i))));
            }
            if (intValue2.intValue() == 1) {
                arrayList.addAll(LocalResourceEngine.array(m50d(m50d5, "10")));
            }
        }
        byte[] m50d6 = m50d(bArr2, "breakable_kill");
        for (String str3 : BsonLite.keys(m50d6)) {
            List<Integer> intArrayValues = BsonLite.intArrayValues(m50d6, str3);
            byte[] m50d7 = m50d(m50d2, str3);
            if (BsonLite.documentValue(m50d6, str3) == null || !BsonLite.keys(m50d2).contains(str3) || intArrayValues.size() != BsonLite.keys(m50d(m50d6, str3)).size() || new HashSet(intArrayValues).size() != intArrayValues.size()) {
                throw new IllegalArgumentException("巡逻破坏物记录无效");
            }
            Iterator<Integer> it = intArrayValues.iterator();
            while (it.hasNext()) {
                int intValue3 = it.next().intValue();
                if (!BsonLite.keys(m50d7).contains(Integer.toString(intValue3))) {
                    throw new IllegalArgumentException("巡逻破坏物与入场记录不符");
                }
                arrayList.addAll(LocalResourceEngine.array(m50d(m50d7, Integer.toString(intValue3))));
            }
        }
        return arrayList;
    }
}
