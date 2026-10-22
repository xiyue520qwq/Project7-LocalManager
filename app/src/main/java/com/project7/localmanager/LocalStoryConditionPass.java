package com.project7.localmanager;

import com.project7.localmanager.LocalStoryConditions;
import com.project7.localmanager.LocalTutorialStore;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes.dex */
final class LocalStoryConditionPass {
    int evaluations;
    final boolean memoize;
    final byte[] profile;
    final LocalTutorialStore.Progress progress;
    int requests;
    private final Map<Integer, Map<String, LocalStoryConditions.Evaluation>> results = new HashMap();

    LocalStoryConditionPass(byte[] bArr, LocalTutorialStore.Progress progress, boolean z) {
        this.profile = bArr;
        this.progress = progress;
        this.memoize = z;
    }

    LocalStoryConditions.Evaluation evaluate(int i, String str) {
        this.requests++;
        Map<String, LocalStoryConditions.Evaluation> map = this.results.get(Integer.valueOf(i));
        if (this.memoize && map != null && map.containsKey(str)) {
            return map.get(str);
        }
        this.evaluations++;
        LocalStoryConditions.Evaluation evaluate = LocalStoryConditions.evaluate(i, str, this.profile, this.progress, null);
        if (this.memoize) {
            this.results.computeIfAbsent(Integer.valueOf(i), new Function() { // from class: com.project7.localmanager.LocalStoryConditionPass$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LocalStoryConditionPass.lambda$evaluate$0((Integer) obj);
                }
            }).put(str, evaluate);
        }
        return evaluate;
    }

    static /* synthetic */ Map lambda$evaluate$0(Integer num) {
        return new HashMap();
    }
}
