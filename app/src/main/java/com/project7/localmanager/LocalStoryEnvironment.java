package com.project7.localmanager;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ThreadLocalRandom;

/* loaded from: classes.dex */
final class LocalStoryEnvironment {
    private static final ThreadLocal<Fixture> FIXTURE = new ThreadLocal<>();

    LocalStoryEnvironment() {
    }

    private static final class Fixture {
        final Random random;
        final long seed;
        long sequence;
        final long time;

        Fixture(long j, long j2) {
            this.time = j;
            this.seed = j2;
            this.random = new Random(j2);
        }
    }

    static final class Scope implements AutoCloseable {
        private boolean closed;
        private final Fixture previous = (Fixture) LocalStoryEnvironment.FIXTURE.get();

        Scope(Fixture fixture) {
            LocalStoryEnvironment.FIXTURE.set(fixture);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            if (this.previous == null) {
                LocalStoryEnvironment.FIXTURE.remove();
            } else {
                LocalStoryEnvironment.FIXTURE.set(this.previous);
            }
            this.closed = true;
        }
    }

    static Scope fixture(long j, long j2) {
        return new Scope(new Fixture(j, j2));
    }

    static long now() {
        Fixture fixture = FIXTURE.get();
        return fixture == null ? System.currentTimeMillis() : fixture.time;
    }

    static int nextInt(int i) {
        Fixture fixture = FIXTURE.get();
        return fixture == null ? ThreadLocalRandom.current().nextInt(i) : fixture.random.nextInt(i);
    }

    static String identity() {
        Fixture fixture = FIXTURE.get();
        if (fixture == null) {
            return UUID.randomUUID().toString().replace("-", "").substring(0, 24);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            StringBuilder sb = new StringBuilder();
            sb.append(fixture.seed);
            sb.append(":");
            long j = fixture.sequence;
            fixture.sequence = 1 + j;
            sb.append(j);
            byte[] digest = messageDigest.digest(sb.toString().getBytes(StandardCharsets.US_ASCII));
            StringBuilder sb2 = new StringBuilder();
            for (int i = 0; i < 12; i++) {
                sb2.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(digest[i] & 255)));
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }
}
