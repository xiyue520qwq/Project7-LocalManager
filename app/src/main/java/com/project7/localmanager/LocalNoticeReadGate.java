package com.project7.localmanager;

/* loaded from: classes.dex */
final class LocalNoticeReadGate {
    static final long REQUIRED_MILLIS = 10000;
    private long readMillis;
    private long visibleSince = -1;

    LocalNoticeReadGate(boolean z, long j) {
        this.readMillis = z ? REQUIRED_MILLIS : Math.max(0L, Math.min(REQUIRED_MILLIS, j));
    }

    void setVisible(boolean z, long j) {
        if (this.visibleSince >= 0) {
            this.readMillis = readMillis(j);
        }
        if (!z) {
            j = -1;
        }
        this.visibleSince = j;
    }

    long readMillis(long j) {
        long j2 = this.visibleSince;
        return Math.min(REQUIRED_MILLIS, this.readMillis + Math.min(REQUIRED_MILLIS, j2 >= 0 ? Math.max(0L, j - j2) : 0L));
    }

    int remainingSeconds(long j) {
        return (int) (((REQUIRED_MILLIS - readMillis(j)) + 999) / 1000);
    }

    boolean canConfirm(long j) {
        return readMillis(j) >= REQUIRED_MILLIS;
    }
}
