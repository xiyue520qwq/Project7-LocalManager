package com.project7.localmanager;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalCommerceCatalog {
    final Map<Integer, Product> products = new LinkedHashMap();
    final Map<String, int[]> charges = new LinkedHashMap();
    final Map<Integer, int[]> skins = new LinkedHashMap();
    final Map<Integer, SkinProduct> skinProducts = new LinkedHashMap();

    LocalCommerceCatalog(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.US_ASCII));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t", -1);
                        try {
                            if ("@shop".equals(split[0])) {
                                this.products.put(Integer.valueOf(Integer.parseInt(split[1])), new Product(split));
                            } else if ("@charge".equals(split[0])) {
                                this.charges.put(split[1], new int[]{Integer.parseInt(split[2]), Integer.parseInt(split[3])});
                            } else if ("@skin".equals(split[0])) {
                                this.skins.put(Integer.valueOf(Integer.parseInt(split[1])), new int[]{Integer.parseInt(split[2]), Integer.parseInt(split[3])});
                            } else if ("@skinbuy".equals(split[0])) {
                                this.skinProducts.put(Integer.valueOf(Integer.parseInt(split[1])), new SkinProduct(split));
                            }
                        } catch (RuntimeException e) {
                            throw new IOException("invalid commerce catalog row", e);
                        }
                    }
                } else {
                    bufferedReader.close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    static final class SkinProduct {
        final Map<String, Integer> costs = new LinkedHashMap();
        final long end;
        final long start;
        final int type;

        SkinProduct(String[] strArr) {
            this.type = Integer.parseInt(strArr[2]);
            this.start = Long.parseLong(strArr[4]);
            this.end = Long.parseLong(strArr[5]);
            if (!strArr[3].isEmpty()) {
                for (String str : strArr[3].split(",")) {
                    String[] split = str.split("=", -1);
                    if (split.length != 2) {
                        throw new IllegalArgumentException("invalid skin cost");
                    }
                    this.costs.put(split[0], Integer.valueOf(Integer.parseInt(split[1])));
                }
            }
        }

        boolean purchasable() {
            int i = this.type;
            return (i == 1 || i == 4 || i == 5 || i == 6) && !this.costs.isEmpty();
        }

        String activityKey() {
            return "skin-" + this.start + "-" + this.end;
        }
    }

    static final class Product {

        /* renamed from: id */
        final int f0id;
        final int item;
        final int level;
        final int max;
        final int quantity;
        final int storyLimit;
        final int wrap;
        final int[] limits = new int[4];
        final Map<String, Integer> costs = new LinkedHashMap();

        Product(String[] strArr) {
            this.f0id = Integer.parseInt(strArr[1]);
            this.item = Integer.parseInt(strArr[2]);
            this.quantity = Integer.parseInt(strArr[3]);
            for (String str : strArr[4].split(",")) {
                String[] split = str.split(":");
                this.costs.put(split[0], Integer.valueOf(Integer.parseInt(split[1])));
            }
            for (int i = 0; i < 4; i++) {
                this.limits[i] = Integer.parseInt(strArr[i + 5]);
            }
            this.max = Integer.parseInt(strArr[9]);
            this.level = Integer.parseInt(strArr[10]);
            this.wrap = Integer.parseInt(strArr[11]);
            this.storyLimit = strArr.length > 12 ? Integer.parseInt(strArr[12]) : 0;
        }
    }
}
