package com.project7.localmanager;

import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class LocalDiaryEngine$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ LocalEventCatalog f$0;

    public /* synthetic */ LocalDiaryEngine$$ExternalSyntheticLambda0(LocalEventCatalog localEventCatalog) {
        this.f$0 = localEventCatalog;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return LocalDiaryEngine.lambda$prepare$0(this.f$0, (Integer) obj);
    }
}
