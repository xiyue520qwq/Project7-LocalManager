package com.project7.localmanager;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalResourceCatalog {
    final Map<Integer, Pool> pools = new LinkedHashMap();
    final Map<Integer, DrawGift> drawGifts = new LinkedHashMap();
    final Map<Integer, Integer> memoryExchange = new LinkedHashMap();
    final Map<Integer, List<Integer>> chooseFragments = new LinkedHashMap();
    final Map<Integer, Hero> heroes = new LinkedHashMap();
    final Map<Integer, Skin> skins = new LinkedHashMap();
    final Map<Integer, Item> items = new LinkedHashMap();
    final Map<String, Treasure> treasures = new LinkedHashMap();
    final List<Item> fragments = new ArrayList();

    static final class Pool {

        /* renamed from: id */
        final int f17id;
        final int stamp;
        final int ticket;

        /* renamed from: s */
        final List<Integer> f18s = new ArrayList();

        /* renamed from: a */
        final List<Integer> f16a = new ArrayList();
        final List<Drop> drops = new ArrayList();

        Pool(String[] strArr) {
            this.f17id = Integer.parseInt(strArr[1]);
            this.stamp = Integer.parseInt(strArr[2]);
            this.ticket = Integer.parseInt(strArr[3]);
            for (String str : strArr[4].split(",")) {
                this.f18s.add(Integer.valueOf(Integer.parseInt(str)));
            }
            for (String str2 : strArr[5].split(",")) {
                this.f16a.add(Integer.valueOf(Integer.parseInt(str2)));
            }
        }
    }

    static final class Drop {
        final int count;
        final byte[] design;

        /* renamed from: id */
        final int f13id;
        final String kind;
        final int quality;
        final double weight;

        Drop(String[] strArr) {
            this.weight = Double.parseDouble(strArr[2]);
            this.kind = strArr[3];
            this.f13id = Integer.parseInt(strArr[4]);
            this.count = Integer.parseInt(strArr[5]);
            this.quality = Integer.parseInt(strArr[6]);
            this.design = strArr[7].isEmpty() ? null : Base64.getDecoder().decode(strArr[7]);
        }
    }

    static final class DrawGift {
        final int coin;
        final int count;
        final int interval;

        DrawGift(String[] strArr) {
            int parseInt = Integer.parseInt(strArr[2]);
            this.interval = parseInt;
            int parseInt2 = Integer.parseInt(strArr[3]);
            this.count = parseInt2;
            int parseInt3 = Integer.parseInt(strArr[4]);
            this.coin = parseInt3;
            if (parseInt <= 0 || parseInt2 <= 0 || parseInt3 != 105) {
                throw new IllegalArgumentException("invalid draw gift");
            }
        }
    }

    static final class Hero {
        final int duplicate;
        final int files;

        /* renamed from: id */
        final int f14id;
        final String name;
        final int rank;

        Hero(String[] strArr) {
            this.f14id = Integer.parseInt(strArr[1]);
            this.name = strArr[2];
            this.files = Integer.parseInt(strArr[3]);
            this.rank = Integer.parseInt(strArr[4]);
            this.duplicate = Integer.parseInt(strArr[5]);
        }
    }

    static final class Item {
        final int hero;

        /* renamed from: id */
        final int f15id;
        final String name;
        final int type;
        final int wrap;

        Item(String[] strArr) {
            this.f15id = Integer.parseInt(strArr[1]);
            this.name = strArr[2];
            this.type = Integer.parseInt(strArr[3]);
            this.wrap = Integer.parseInt(strArr[4]);
            this.hero = Integer.parseInt(strArr[5]);
        }
    }

    static final class Treasure {
        final int item;
        final int quality;
        final List<Integer> tricks = new ArrayList();
        final List<byte[]> attrs = new ArrayList();

        Treasure(String[] strArr) {
            this.item = Integer.parseInt(strArr[1]);
            this.quality = Integer.parseInt(strArr[2]);
            if (!strArr[3].isEmpty()) {
                for (String str : strArr[3].split(",")) {
                    this.tricks.add(Integer.valueOf(Integer.parseInt(str)));
                }
            }
            if (!strArr[4].isEmpty()) {
                for (String str2 : strArr[4].split(",")) {
                    String[] split = str2.split(":");
                    this.attrs.add(BsonLite.document("n", split[0], "v", Double.valueOf(Double.parseDouble(split[1]))));
                }
            }
        }

        byte[] data() {
            return BsonLite.document("cl", Integer.valueOf(this.quality), "lv", 1, "x", 0, "f", false, "ft", this.tricks, "attr", this.attrs, "era", new ArrayList(), "su", new ArrayList());
        }
    }

    static final class Skin {
        final int hero;

        /* renamed from: id */
        final int f19id;
        final int item;
        final String name;

        Skin(String[] strArr) {
            this.f19id = Integer.parseInt(strArr[1]);
            this.hero = Integer.parseInt(strArr[2]);
            this.item = Integer.parseInt(strArr[3]);
            this.name = strArr[4];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x01e3, code lost:
    
        throw new java.lang.IllegalArgumentException("invalid resource row");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    LocalResourceCatalog(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t", -1);
                        try {
                            if (split[0].equals("H") && split.length == 6) {
                                Hero hero = new Hero(split);
                                this.heroes.put(Integer.valueOf(hero.f14id), hero);
                            } else if (split[0].equals("S") && split.length == 5) {
                                Skin skin = new Skin(split);
                                this.skins.put(Integer.valueOf(skin.f19id), skin);
                            } else if (split[0].equals("I") && split.length == 6) {
                                Item item = new Item(split);
                                this.items.put(Integer.valueOf(item.f15id), item);
                            } else if (!split[0].equals("T") || split.length != 5) {
                                if (!split[0].equals("P") || split.length != 6) {
                                    if (split[0].equals("B") && split.length == 5) {
                                        this.drawGifts.put(Integer.valueOf(Integer.parseInt(split[1])), new DrawGift(split));
                                    } else if (split[0].equals("X") && split.length == 3) {
                                        int parseInt = Integer.parseInt(split[2]);
                                        if (parseInt <= 0) {
                                            throw new IllegalArgumentException("invalid exchange rate");
                                        }
                                        this.memoryExchange.put(Integer.valueOf(Integer.parseInt(split[1])), Integer.valueOf(parseInt));
                                    } else if (!split[0].equals("C") || split.length != 3) {
                                        if (!split[0].equals("D") || split.length != 8) {
                                            break;
                                        } else {
                                            this.pools.get(Integer.valueOf(Integer.parseInt(split[1]))).drops.add(new Drop(split));
                                        }
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        for (String str : split[2].split(",")) {
                                            arrayList.add(Integer.valueOf(Integer.parseInt(str)));
                                        }
                                        this.chooseFragments.put(Integer.valueOf(Integer.parseInt(split[1])), arrayList);
                                    }
                                } else {
                                    Pool pool = new Pool(split);
                                    this.pools.put(Integer.valueOf(pool.f17id), pool);
                                }
                            } else {
                                Treasure treasure = new Treasure(split);
                                this.treasures.put(treasure.item + ":" + treasure.quality, treasure);
                            }
                        } catch (RuntimeException e) {
                            throw new IOException("invalid resource catalog", e);
                        }
                    }
                } else {
                    bufferedReader.close();
                    for (Item item2 : this.items.values()) {
                        if (item2.type == 3 && this.heroes.containsKey(Integer.valueOf(item2.hero))) {
                            this.fragments.add(item2);
                        }
                    }
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
}
