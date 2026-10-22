.class final Lcom/project7/localmanager/LocalTreasureAttr;
.super Ljava/lang/Object;
.source "LocalTreasureAttr.java"


# static fields
.field private static final NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    .line 12
    const-string v1, "max_hp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "phy_att_str"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mag_att_str"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phydef"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "magdef"

    aput-object v2, v0, v1

    .line 13
    const-string v1, "block_rate"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    const-string v2, "penetrate_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bless_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "injure_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "attack_twice_rate"

    aput-object v2, v0, v1

    .line 14
    const-string v1, "avoid_rate"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xc

    const-string v2, "cri_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cd_reset_rate"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "magic_shield_val"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rebound_rate"

    aput-object v2, v0, v1

    .line 15
    const-string v1, "absorb_rate"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x11

    const-string v2, "delay_hurt_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cri_hurt_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cri_hurt_reduce_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hurt_addition_rate"

    aput-object v2, v0, v1

    .line 16
    const-string v1, "hurt_reduction_rate"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v1, 0x16

    const-string v2, "attack_hurt_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "attack_hurt_reduction_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "_att_speed_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "insight"

    aput-object v2, v0, v1

    .line 17
    const-string v1, "construct"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/16 v1, 0x1b

    const-string v2, "leader"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "friendly"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "fatigue"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "_phy_str_delta"

    aput-object v2, v0, v1

    .line 18
    const-string v1, "_mag_str_delta"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v1, 0x20

    const-string v2, "_phy_def_delta"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "_mag_def_delta"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "_hp_delta"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "_base_max_hp"

    aput-object v2, v0, v1

    .line 19
    const-string v1, "_base_phy_att_str"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/16 v1, 0x25

    const-string v2, "_base_mag_att_str"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "_base_phy_def"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "_base_mag_def"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "_base_max_hp_addition_val"

    aput-object v2, v0, v1

    .line 20
    const-string v1, "_base_max_hp_addition_rate"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/16 v1, 0x2a

    const-string v2, "_max_hp_addition_val"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "_max_hp_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "_base_phy_str_addition_val"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "_base_phy_str_addition_rate"

    aput-object v2, v0, v1

    .line 21
    const-string v1, "_phy_att_str_addition_val"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const/16 v1, 0x2f

    const-string v2, "_phy_att_str_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "_base_mag_str_addition_val"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "_base_mag_str_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "_mag_att_str_addition_val"

    aput-object v2, v0, v1

    .line 22
    const-string v1, "_mag_att_str_addition_rate"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const/16 v1, 0x34

    const-string v2, "_base_phy_def_addition_val"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "_base_phy_def_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "_phy_def_addition_val"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "_phy_def_addition_rate"

    aput-object v2, v0, v1

    .line 23
    const-string v1, "_base_mag_def_addition_val"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const/16 v1, 0x39

    const-string v2, "_base_mag_def_addition_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "_mag_def_addition_val"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "_mag_def_addition_rate"

    aput-object v2, v0, v1

    .line 10
    sput-object v0, Lcom/project7/localmanager/LocalTreasureAttr;->NAMES:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static keyOf([B)Ljava/lang/String;
    .locals 3

    .line 93
    const-string v0, "n"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 94
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 95
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 98
    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .line 107
    if-lt p0, v1, :cond_3

    sget-object v1, Lcom/project7/localmanager/LocalTreasureAttr;->NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt p0, v1, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Lcom/project7/localmanager/LocalTreasureAttr;->NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 108
    :cond_3
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    return-object v0

    .line 99
    :cond_4
    :goto_1
    return-object v0
.end method

.method static merge(Ljava/util/Map;[B)V
    .locals 12

    .line 31
    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 35
    :cond_0
    :try_start_0
    const-string v0, "ti"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    return-void

    .line 39
    :cond_1
    const-string v0, "items"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    return-void

    .line 43
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_3

    .line 86
    nop

    .line 89
    return-void

    .line 45
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 46
    instance-of v4, v3, [B

    if-nez v4, :cond_4

    .line 47
    goto :goto_2

    .line 49
    :cond_4
    check-cast v3, [B

    .line 50
    const-string v4, "tr"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 51
    if-nez v3, :cond_5

    .line 52
    goto :goto_2

    .line 54
    :cond_5
    const-string v4, "attr"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    .line 55
    if-nez v3, :cond_6

    .line 56
    goto :goto_2

    .line 58
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 59
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v4, :cond_7

    .line 44
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_7
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 61
    instance-of v7, v6, [B

    if-nez v7, :cond_8

    .line 62
    goto :goto_4

    .line 64
    :cond_8
    check-cast v6, [B

    .line 65
    invoke-static {v6}, Lcom/project7/localmanager/LocalTreasureAttr;->keyOf([B)Ljava/lang/String;

    move-result-object v7

    .line 66
    if-nez v7, :cond_9

    .line 67
    goto :goto_4

    .line 69
    :cond_9
    const-string v8, "v"

    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    .line 70
    if-nez v6, :cond_a

    .line 71
    goto :goto_4

    .line 73
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 74
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 75
    goto :goto_4

    .line 77
    :cond_b
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 78
    instance-of v10, v6, Ljava/lang/Number;

    if-eqz v10, :cond_c

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    goto :goto_3

    :cond_c
    const-wide/16 v10, 0x0

    .line 79
    :goto_3
    add-double/2addr v10, v8

    .line 80
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 81
    goto :goto_4

    .line 83
    :cond_d
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {p0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_e
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    return-void

    .line 32
    :cond_f
    :goto_5
    return-void
.end method
