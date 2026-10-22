package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
final class LocalDiaryEngine {
    LocalDiaryEngine() {
    }

    static byte[] reset(byte[] bArr, int i) {
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileDocument(BsonLite.withProfileDocument(bArr, "q7DiaryBeforeReset", BsonLite.document("targetWeek", Integer.valueOf(i), "np", m19d(bArr, "np"))), "np", BsonLite.document("n", BsonLite.EMPTY_DOCUMENT, "p", BsonLite.EMPTY_DOCUMENT, "pn", Collections.emptyList(), "ppn", false)), "q7DiaryWeek", i);
        for (byte[] bArr2 : LocalResourceEngine.array(m19d(m19d(withProfileInt, "heromgr"), "hrs"))) {
            int m20v = m20v(bArr2, "0");
            byte[] m19d = m19d(bArr2, "1");
            if (Boolean.TRUE.equals(BsonLite.boolValue(m19d, "cfd"))) {
                withProfileInt = BsonLite.withHeroDocument(withProfileInt, m20v, BsonLite.withProfileBool(m19d, "cfd", false));
            }
        }
        return withProfileInt;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v19 int, still in use, count: 2, list:
          (r4v19 int) from 0x04f4: IF  (wrap:int:0x04ee: INVOKE (r0v28 java.lang.Integer) VIRTUAL call: java.lang.Integer.intValue():int A[MD:():int (c), WRAPPED]) != (r4v19 int)  -> B:239:0x04f9 A[HIDDEN]
          (r4v19 int) from 0x04f9: PHI (r4v10 int) = (r4v9 int), (r4v19 int) binds: [B:240:0x04f7, B:218:0x04f4] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    static void prepare(com.project7.localmanager.LocalResourceEngine.Result r26, com.project7.localmanager.LocalEventCatalog r27, com.project7.localmanager.LocalTutorialStore.Progress r28) {
        /*
            Method dump skipped, instructions count: 1397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.project7.localmanager.LocalDiaryEngine.prepare(com.project7.localmanager.LocalResourceEngine$Result, com.project7.localmanager.LocalEventCatalog, com.project7.localmanager.LocalTutorialStore$Progress):void");
    }

    static /* synthetic */ boolean lambda$prepare$0(LocalEventCatalog localEventCatalog, Integer num) {
        return localEventCatalog.notes.containsKey(num) && localEventCatalog.notes.get(num)[0] == 1;
    }

    static String diagnostic(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] m19d = m19d(bArr, "np");
        List<Integer> intArrayValues = BsonLite.intArrayValues(m19d, "pn");
        StringBuilder sb = new StringBuilder();
        sb.append("week=");
        sb.append(m20v(m19d(bArr, "weeknum"), "w"));
        sb.append(" day=");
        sb.append(m20v(m19d(bArr, "weeknum"), "d"));
        sb.append(" playerNotes=");
        sb.append(intArrayValues.size());
        sb.append(" last=");
        sb.append(intArrayValues.isEmpty() ? 0 : intArrayValues.get(intArrayValues.size() - 1).intValue());
        sb.append(" heroDiaries=");
        sb.append(BsonLite.keys(m19d(m19d, "n")).size());
        sb.append(" completed=");
        sb.append(progress != null ? progress.completedEvents.size() : 0);
        sb.append(" receipts=");
        sb.append(BsonLite.keys(m19d(bArr, "q7effects")).size());
        return sb.toString();
    }

    static String evidence(byte[] bArr, LocalTutorialStore.Progress progress, LocalEventCatalog localEventCatalog) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        byte[] m19d = m19d(bArr, "q7effects");
        byte[] m19d2 = m19d(bArr, "q7WeekTransition");
        for (Map.Entry<Integer, LocalEventCatalog.Effect> entry : localEventCatalog.effects.entrySet()) {
            if (entry.getValue().noteIds.stream().anyMatch(new LocalDiaryEngine$$ExternalSyntheticLambda0(localEventCatalog))) {
                int intValue = entry.getKey().intValue();
                if (progress.completedEvents.contains(Integer.valueOf(intValue))) {
                    linkedHashSet.add(Integer.valueOf(intValue));
                }
                if (Boolean.TRUE.equals(BsonLite.boolValue(m19d, "c" + intValue))) {
                    linkedHashSet2.add(Integer.valueOf(intValue));
                }
                if (Boolean.TRUE.equals(BsonLite.boolValue(m19d, "m" + intValue))) {
                    linkedHashSet3.add(Integer.valueOf(intValue));
                }
            }
        }
        return "route=" + BsonLite.stringValue(m19d(bArr, "std"), "rt") + " transitionWeek=" + BsonLite.intValue(m19d2, "week") + " tokenMatch=" + Objects.equals(BsonLite.stringValue(m19d2, "id"), progress.weekCommit) + " progressWeek=" + progress.weekIndex + " baseline=" + BsonLite.intArrayValues(bArr, "q7WeekEventBaseline") + " completedNoteEvents=" + linkedHashSet + " awardedNoteEvents=" + linkedHashSet2 + " offeredNoteEvents=" + linkedHashSet3 + " dialogFacts=" + progress.eventConditions.getOrDefault("dialog", Collections.emptySet()) + " available=" + progress.availableEvents + " processing=" + progress.processingEvents;
    }

    static byte[] add(byte[] bArr, String str, int i) {
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(bArr, str));
        if (!arrayList.contains(Integer.valueOf(i))) {
            arrayList.add(Integer.valueOf(i));
        }
        return BsonLite.withProfileIntArray(bArr, str, arrayList);
    }

    /* renamed from: d */
    static byte[] m19d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m20v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }
}
