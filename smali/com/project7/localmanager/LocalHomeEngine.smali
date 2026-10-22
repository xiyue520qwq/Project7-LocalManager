.class final Lcom/project7/localmanager/LocalHomeEngine;
.super Ljava/lang/Object;
.source "LocalHomeEngine.java"


# static fields
.field static final CALLBACK:Ljava/lang/String; = "q7HomeCallback"

.field static final METHODS:[Ljava/lang/String;

.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 51

    .line 9
    const-string v0, "requestEnterHeroHome"

    const-string v1, "requestBuyRoom"

    const-string v2, "requestHeroEnterRoom"

    const-string v3, "requestHeroEnterRoomBatch"

    const-string v4, "requestChangeMainHomeHero"

    const-string v5, "requestRoomBaseInfo"

    const-string v6, "createFurnitureScheme"

    const-string v7, "switchFurnitureScheme"

    const-string v8, "generaSchemeType"

    const-string v9, "saveFurnitureScheme"

    const-string v10, "getServerOneSchemeData"

    const-string v11, "getServerOneFurnitureData"

    const-string v12, "canAddFurnitureToScheme"

    const-string v13, "changeFurnitureEffState"

    const-string v14, "renameRoom"

    const-string v15, "modifyVisitSet"

    const-string v16, "modifyXinwuSet"

    const-string v17, "requestCheckLuckyDrawFurnitureOpen"

    const-string v18, "requestLuckyDrawFurnitureCard"

    const-string v19, "requestLuckyDrawFurnitureLianchouCard"

    const-string v20, "sellFurnitureByID"

    const-string v21, "sellFurnitureByItemList"

    const-string v22, "doBuyFurniture"

    const-string v23, "doAddSawFurniture"

    const-string v24, "addKnownFurnitureScheme"

    const-string v25, "requestBuyMusicByMusicCoin"

    const-string v26, "requestSetHeroHomeCurMusic"

    const-string v27, "requestRoomJiejingOpen"

    const-string v28, "calcCrystal"

    const-string v29, "activeSkill"

    const-string v30, "upgradeSkill"

    const-string v31, "breakSkill"

    const-string v32, "swapSkillOption"

    const-string v33, "upRoomLevel"

    const-string v34, "requestGiveRoomGift"

    const-string v35, "requestGiveHeroSpecialGift"

    const-string v36, "requestNewTaskLinkByHeroId"

    const-string v37, "requestCompleteWishTask"

    const-string v38, "requestGetHeroHomeSpecialReward"

    const-string v39, "requestHeroHomeWishMoney"

    const-string v40, "requestShowTaskLinkResult"

    const-string v41, "clearHeroHomeTaskReward"

    const-string v42, "requestAddHeroHomeResource"

    const-string v43, "requestSaveHeroCamera"

    const-string v44, "clearHeroHomeRecordHistory"

    const-string v45, "requestHeroHomeMark"

    const-string v46, "updateHeroHomeRed"

    const-string v47, "processClientTask"

    const-string v48, "requestGetTask"

    const-string v49, "requestGetTaskReward"

    const-string v50, "requestGiveUpTask"

    filled-new-array/range {v0 .. v50}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalHomeEngine;->METHODS:[Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalHomeEngine;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 8

    .line 127
    sget-object v7, Lcom/project7/localmanager/LocalHomeEngine;->RANDOM:Ljava/util/Random;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/project7/localmanager/LocalHomeEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJLjava/util/Random;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJLjava/util/Random;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 35

    .line 130
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v4, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-wide/from16 v13, p5

    const-string v15, "requestBuyRoom"

    const-string v9, "requestEnterHeroHome"

    const-string v2, "modifyVisitSet"

    const-string v7, "requestLuckyDrawFurniture"

    const-string v8, "k"

    const-string v6, "t"

    const-string v5, "i"

    const-string v16, "r"

    invoke-static {v1, v10, v4, v13, v14}, Lcom/project7/localmanager/LocalHomeEngine;->initialize([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;J)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v3

    .line 131
    move-object/from16 v17, v8

    const-string v8, "hhd"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v1, "hg"

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    move-object/from16 v18, v7

    iget-object v7, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    invoke-static {v3}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 133
    :cond_0
    iget-object v7, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 135
    const/16 v19, 0x5

    const/16 v23, 0x0

    :try_start_0
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_45
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_44

    if-eqz v24, :cond_2

    .line 136
    :try_start_1
    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->enter(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 137
    iget-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "dxqr"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 138
    iget-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "dxqr"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :try_start_2
    new-array v4, v2, [Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v24, 0x1

    aput-object v2, v4, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v22, 0x2

    aput-object v2, v4, v22

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 137
    :goto_0
    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v25, v1

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object v14, v9

    move-object/from16 v1, v17

    move-object/from16 v20, v18

    const/16 v18, 0x3

    move-object v9, v5

    move-object/from16 v17, v15

    move-object v15, v8

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 188
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v4, v0

    move-object/from16 v25, v1

    move-object v9, v5

    move-object/from16 v32, v6

    move-object v5, v7

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move/from16 v18, v2

    move-wide v2, v13

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move-object v4, v0

    move-object/from16 v25, v1

    :goto_3
    move-object v9, v5

    move-object/from16 v32, v6

    move-object v5, v7

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    :goto_4
    const/16 v18, 0x3

    :goto_5
    move-object/from16 v17, v15

    :goto_6
    move-object v15, v8

    :goto_7
    const/4 v8, 0x2

    goto/16 :goto_3e

    .line 139
    :cond_2
    :try_start_4
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_45
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_44

    if-eqz v4, :cond_3

    :try_start_5
    invoke-static {v3, v10, v12}, Lcom/project7/localmanager/LocalHomeEngine;->buyRoom(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v25, v1

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object v14, v9

    move-object/from16 v1, v17

    move-object/from16 v20, v18

    const/16 v18, 0x3

    move-object v9, v5

    move-object/from16 v17, v15

    move-object v15, v8

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 140
    :cond_3
    :try_start_6
    const-string v4, "requestHeroEnterRoom"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_45
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_44

    if-eqz v4, :cond_4

    .line 141
    :try_start_7
    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalHomeEngine;->enter(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 142
    const-string v2, "replyHeroEnterRoom"
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_a

    move-object/from16 v25, v1

    const/4 v4, 0x4

    :try_start_8
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v16, v1, v23

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v1, v4
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v4, 0x2

    :try_start_9
    aput-object v5, v1, v4
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v4, 0x3

    :try_start_a
    aput-object v12, v1, v4
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_8

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object v14, v9

    move-object/from16 v1, v17

    move-object/from16 v20, v18

    const/16 v18, 0x3

    move-object v9, v5

    move-object/from16 v17, v15

    move-object v15, v8

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 188
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_8
    move-object v9, v5

    move-object/from16 v32, v6

    move-object v5, v7

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    :goto_9
    move/from16 v18, v4

    move-object/from16 v17, v15

    move-object v4, v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    :goto_a
    move-object v9, v5

    move-object/from16 v32, v6

    move-object v5, v7

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    :goto_b
    const/16 v18, 0x3

    move-object/from16 v17, v15

    move-object v15, v8

    move v8, v4

    goto/16 :goto_3d

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    move-object/from16 v25, v1

    :goto_d
    move-object v4, v0

    goto/16 :goto_3

    .line 143
    :cond_4
    move-object/from16 v25, v1

    :try_start_c
    const-string v1, "requestHeroEnterRoomBatch"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_43
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_42

    if-eqz v1, :cond_5

    :try_start_d
    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalHomeEngine;->batch(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_8

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object v14, v9

    move-object/from16 v1, v17

    move-object/from16 v20, v18

    const/16 v18, 0x3

    move-object v9, v5

    move-object/from16 v17, v15

    move-object v15, v8

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 144
    :cond_5
    :try_start_e
    const-string v1, "requestChangeMainHomeHero"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_43
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_42

    const-string v4, "h"

    if-eqz v1, :cond_6

    .line 145
    :try_start_f
    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    iget-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_8

    move-object/from16 v26, v7

    :try_start_10
    const-string v7, "\u795e\u5668\u4f7f\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 146
    iget-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v7, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    move-object/from16 v27, v9

    const-string v9, "mhh"

    invoke-static {v7, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    invoke-static {v2, v8, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 147
    const-string v2, "replyChangeMainHomeHero"

    const/4 v7, 0x4

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v16, v9, v23

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v9, v7
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_12

    const/4 v7, 0x2

    :try_start_11
    aput-object v5, v9, v7
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_10

    move-object/from16 v28, v5

    :try_start_12
    new-array v5, v7, [Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_e

    :try_start_13
    aput-object v4, v5, v23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v5, v4

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_18

    const/4 v4, 0x3

    :try_start_14
    aput-object v1, v9, v4
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_c

    :try_start_15
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_18

    .line 148
    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v1, v17

    move-object/from16 v20, v18

    move-object/from16 v33, v26

    move-object/from16 v14, v27

    move-object/from16 v9, v28

    const/16 v18, 0x3

    move-object/from16 v17, v15

    move-object v15, v8

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 188
    :catch_c
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move-object/from16 v9, v28

    goto/16 :goto_9

    :catch_e
    move-exception v0

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    move-object v4, v0

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move-object/from16 v9, v28

    goto :goto_11

    :catch_10
    move-exception v0

    goto :goto_10

    :catch_11
    move-exception v0

    :goto_10
    move-object v4, v0

    move-object v9, v5

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    :goto_11
    const/16 v18, 0x3

    move-object/from16 v17, v15

    move-object v15, v8

    move v8, v7

    goto/16 :goto_3e

    :catch_12
    move-exception v0

    goto :goto_12

    :catch_13
    move-exception v0

    :goto_12
    move-object v4, v0

    move-object v9, v5

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    goto/16 :goto_4

    .line 148
    :cond_6
    move-object/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    :try_start_16
    const-string v1, "requestRoomBaseInfo"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_41
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_40

    const-string v5, "nm"

    const-string v7, "fnd"

    if-eqz v1, :cond_7

    .line 149
    :try_start_17
    iget-object v1, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "sc"

    aput-object v4, v2, v23

    const-string v4, "sc"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v2, v7
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_17} :catch_18

    const/4 v4, 0x2

    :try_start_18
    aput-object v5, v2, v4
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_17
    .catch Ljava/lang/ArithmeticException; {:try_start_18 .. :try_end_18} :catch_16

    :try_start_19
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_19} :catch_18

    const/4 v5, 0x3

    :try_start_1a
    aput-object v4, v2, v5
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_1a} :catch_14

    :try_start_1b
    const-string v4, "th"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const-string v4, "th"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v19

    const-string v4, "vt"

    const/4 v9, 0x6

    aput-object v4, v2, v9

    const/4 v4, 0x7

    const-string v5, "vt"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_1b} :catch_18

    .line 150
    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v1, v17

    move-object/from16 v20, v18

    move-object/from16 v33, v26

    move-object/from16 v14, v27

    move-object/from16 v9, v28

    const/16 v18, 0x3

    move-object/from16 v17, v15

    move-object v15, v8

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 188
    :catch_14
    move-exception v0

    goto :goto_13

    :catch_15
    move-exception v0

    :goto_13
    move-object v4, v0

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v28

    move/from16 v18, v5

    move-object/from16 v17, v15

    move-object/from16 v5, v26

    goto/16 :goto_6

    :catch_16
    move-exception v0

    goto :goto_14

    :catch_17
    move-exception v0

    :goto_14
    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move-object/from16 v9, v28

    goto/16 :goto_b

    :catch_18
    move-exception v0

    goto :goto_15

    :catch_19
    move-exception v0

    :goto_15
    move-object v4, v0

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move-object/from16 v9, v28

    goto/16 :goto_4

    .line 151
    :cond_7
    const/4 v9, 0x6

    :try_start_1c
    const-string v1, "renameRoom"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_41
    .catch Ljava/lang/ArithmeticException; {:try_start_1c .. :try_end_1c} :catch_40

    if-eqz v1, :cond_a

    .line 152
    :try_start_1d
    const-string v1, "n"

    invoke-static {v12, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_1d} :catch_1e

    .line 153
    if-eqz v1, :cond_8

    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_1e .. :try_end_1e} :catch_18

    const/16 v4, 0x28

    if-gt v2, v4, :cond_8

    const/4 v2, 0x1

    goto :goto_16

    :cond_8
    move/from16 v2, v23

    :goto_16
    :try_start_1f
    const-string v4, "\u623f\u95f4\u540d\u79f0\u65e0\u6548"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 154
    iget-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-wide/16 v29, 0x3e8

    div-long v9, v13, v29

    long-to-int v4, v9

    .line 155
    const-string v9, "lnt"

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v9

    sub-int v9, v4, v9

    const/16 v10, 0x708

    if-lt v9, v10, :cond_9

    const/4 v9, 0x1

    goto :goto_17

    :cond_9
    move/from16 v9, v23

    :goto_17
    const-string v10, "\u4fee\u6539\u623f\u95f4\u540d\u79f0\u9700\u95f4\u969430\u5206\u949f"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 156
    const-string v9, "lnt"

    invoke-static {v2, v9, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 157
    iget-object v5, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 158
    const-string v2, "replyRenameRoom"

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Object;

    const-string v9, "n"

    aput-object v9, v7, v23
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_1f} :catch_1e

    const/16 v24, 0x1

    :try_start_20
    aput-object v1, v7, v24
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_20 .. :try_end_20} :catch_1c

    const/4 v1, 0x2

    :try_start_21
    aput-object v6, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_21 .. :try_end_21} :catch_1a

    const/4 v9, 0x3

    :try_start_22
    aput-object v4, v7, v9

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_22 .. :try_end_22} :catch_22

    .line 159
    move-object/from16 v10, p1

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v20, v18

    move-object/from16 v33, v26

    move-object/from16 v14, v27

    move/from16 v18, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    goto/16 :goto_33

    .line 188
    :catch_1a
    move-exception v0

    goto :goto_18

    :catch_1b
    move-exception v0

    :goto_18
    move-object/from16 v10, p1

    move-object v4, v0

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move-object/from16 v9, v28

    const/16 v18, 0x3

    goto/16 :goto_1e

    :catch_1c
    move-exception v0

    goto :goto_1a

    :catch_1d
    move-exception v0

    goto :goto_1a

    :catch_1e
    move-exception v0

    goto :goto_19

    :catch_1f
    move-exception v0

    :goto_19
    const/16 v24, 0x1

    :goto_1a
    move-object/from16 v10, p1

    goto/16 :goto_15

    .line 159
    :cond_a
    const/4 v1, 0x2

    const/4 v5, 0x4

    const/4 v9, 0x3

    const/16 v24, 0x1

    :try_start_23
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_3f
    .catch Ljava/lang/ArithmeticException; {:try_start_23 .. :try_end_23} :catch_3e

    if-nez v10, :cond_19

    :try_start_24
    const-string v10, "modifyXinwuSet"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object/from16 v10, p1

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v20, v18

    move-object/from16 v33, v26

    move-object/from16 v14, v27

    move/from16 v18, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    goto/16 :goto_2f

    .line 165
    :cond_b
    const-string v2, "requestCheckLuckyDrawFurnitureOpen"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_35
    .catch Ljava/lang/ArithmeticException; {:try_start_24 .. :try_end_24} :catch_34

    if-eqz v2, :cond_d

    :try_start_25
    iget-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "level"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    const-string v4, "P"

    const/16 v7, 0xa2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_25 .. :try_end_25} :catch_22

    move-object/from16 v10, p1

    :try_start_26
    invoke-static {v10, v4, v7}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    const-string v7, "level"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lt v2, v4, :cond_c

    move/from16 v2, v24

    goto :goto_1b

    :cond_c
    move/from16 v2, v23

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_26 .. :try_end_26} :catch_20

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v20, v18

    move-object/from16 v33, v26

    move-object/from16 v14, v27

    move/from16 v18, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    goto/16 :goto_33

    .line 188
    :catch_20
    move-exception v0

    goto :goto_1d

    :catch_21
    move-exception v0

    goto :goto_1d

    :catch_22
    move-exception v0

    goto :goto_1c

    :catch_23
    move-exception v0

    :goto_1c
    move-object/from16 v10, p1

    :goto_1d
    move-object v4, v0

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move/from16 v18, v9

    move-object/from16 v9, v28

    :goto_1e
    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    goto/16 :goto_3e

    .line 166
    :cond_d
    move-object/from16 v10, p1

    move-object/from16 v7, v18

    :try_start_27
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_33
    .catch Ljava/lang/ArithmeticException; {:try_start_27 .. :try_end_27} :catch_32

    if-eqz v2, :cond_e

    move-object v2, v3

    move-object v4, v3

    move-object/from16 v3, p1

    move/from16 v18, v9

    move/from16 v1, v24

    const/4 v5, 0x6

    move-object v9, v4

    move-object/from16 v4, p2

    move-object/from16 v31, v28

    move-object/from16 v5, p3

    move-object/from16 v32, v6

    move-object/from16 v6, p4

    move-object/from16 v20, v7

    move-object/from16 v1, v17

    move-object/from16 v33, v26

    move-object/from16 v17, v15

    move-object v15, v8

    move-wide/from16 v7, p5

    move-object v13, v9

    move-object/from16 v14, v27

    move-object/from16 v9, p7

    :try_start_28
    invoke-static/range {v2 .. v9}, Lcom/project7/localmanager/LocalHomeEngine;->draw(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJLjava/util/Random;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_28 .. :try_end_28} :catch_24

    move-object/from16 v9, v31

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 188
    :catch_24
    move-exception v0

    goto :goto_1f

    :catch_25
    move-exception v0

    :goto_1f
    move-wide/from16 v2, p5

    move-object v4, v0

    move-object/from16 v6, v20

    move-object/from16 v9, v31

    :goto_20
    move-object/from16 v5, v33

    goto/16 :goto_7

    .line 167
    :cond_e
    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v20, v7

    move/from16 v18, v9

    move-object/from16 v1, v17

    move-object/from16 v33, v26

    move-object/from16 v14, v27

    move-object/from16 v31, v28

    move-object/from16 v17, v15

    move-object v15, v8

    :try_start_29
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->handles(Ljava/lang/String;)Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_31
    .catch Ljava/lang/ArithmeticException; {:try_start_29 .. :try_end_29} :catch_30

    if-eqz v2, :cond_f

    :try_start_2a
    invoke-static {v13, v10, v11, v12}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_2a .. :try_end_2a} :catch_24

    move-object/from16 v9, v31

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 168
    :cond_f
    :try_start_2b
    sget-object v2, Lcom/project7/localmanager/LocalHomeWishEngine;->METHODS:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_31
    .catch Ljava/lang/ArithmeticException; {:try_start_2b .. :try_end_2b} :catch_30

    if-eqz v2, :cond_10

    move-object/from16 v5, p2

    :try_start_2c
    invoke-static {v13, v10, v5, v11, v12}, Lcom/project7/localmanager/LocalHomeWishEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_2c} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_2c .. :try_end_2c} :catch_24

    move-object/from16 v9, v31

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 169
    :cond_10
    move-object/from16 v5, p2

    :try_start_2d
    sget-object v2, Lcom/project7/localmanager/LocalRoomGrowthEngine;->METHODS:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_2d} :catch_31
    .catch Ljava/lang/ArithmeticException; {:try_start_2d .. :try_end_2d} :catch_30

    if-eqz v2, :cond_11

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    :try_start_2e
    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_2e} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_2e .. :try_end_2e} :catch_24

    move-object/from16 v9, v31

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 170
    :cond_11
    :try_start_2f
    const-string v2, "requestGiveHeroSpecialGift"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_2f} :catch_31
    .catch Ljava/lang/ArithmeticException; {:try_start_2f .. :try_end_2f} :catch_30

    if-eqz v2, :cond_12

    :try_start_30
    invoke-static {v13, v10, v12}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->give(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_30} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_30 .. :try_end_30} :catch_24

    move-object/from16 v9, v31

    const/4 v8, 0x2

    goto/16 :goto_33

    .line 171
    :cond_12
    :try_start_31
    const-string v2, "requestGiveRoomGift"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_31} :catch_31
    .catch Ljava/lang/ArithmeticException; {:try_start_31 .. :try_end_31} :catch_30

    if-eqz v2, :cond_16

    .line 172
    :try_start_32
    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v12, v1}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v5, "HG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    .line 173
    iget-object v6, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v6

    const-string v7, "\u795e\u5668\u4f7f\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 174
    iget-object v6, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "hri"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "\u8bf7\u5148\u8ba9\u795e\u5668\u4f7f\u5165\u4f4f"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_32} :catch_2d
    .catch Ljava/lang/ArithmeticException; {:try_start_32 .. :try_end_32} :catch_2c

    .line 175
    const-string v6, "effect"

    if-eqz v5, :cond_14

    :try_start_33
    const-string v7, "heroid"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_14

    const-string v7, "text"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_14

    .line 176
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_13

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    if-gt v7, v8, :cond_15

    const-string v7, "item_id"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_33} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_33 .. :try_end_33} :catch_24

    if-lez v7, :cond_15

    const/4 v7, 0x1

    goto :goto_22

    :cond_13
    const/4 v8, 0x4

    goto :goto_21

    .line 175
    :cond_14
    const/4 v8, 0x4

    .line 176
    :cond_15
    :goto_21
    move/from16 v7, v23

    :goto_22
    :try_start_34
    const-string v9, "\u8d60\u793c\u4e0e\u795e\u5668\u4f7f\u4e0d\u5339\u914d"

    .line 175
    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 177
    const-string v7, "item_id"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    invoke-static {v13, v7, v9}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 178
    iget-object v7, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v15}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    const-string v9, "hxq"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v9, v2, v5}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v5

    .line 179
    iget-object v6, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v15, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    iput-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 180
    const-string v5, "replyGiveRoomGift"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v16, v6, v23

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v7
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_34} :catch_2d
    .catch Ljava/lang/ArithmeticException; {:try_start_34 .. :try_end_34} :catch_2c

    move-object/from16 v9, v31

    const/4 v7, 0x2

    :try_start_35
    aput-object v9, v6, v7
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_35} :catch_2b
    .catch Ljava/lang/ArithmeticException; {:try_start_35 .. :try_end_35} :catch_2a

    :try_start_36
    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v7, v4
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_36} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_36 .. :try_end_36} :catch_28

    const/16 v21, 0x2

    :try_start_37
    aput-object v1, v7, v21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v18

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, v6, v18

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v13, v5, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_37} :catch_27
    .catch Ljava/lang/ArithmeticException; {:try_start_37 .. :try_end_37} :catch_26

    .line 181
    move/from16 v8, v21

    goto/16 :goto_33

    .line 188
    :catch_26
    move-exception v0

    goto :goto_23

    :catch_27
    move-exception v0

    :goto_23
    move-wide/from16 v2, p5

    move-object v4, v0

    move-object/from16 v6, v20

    move/from16 v8, v21

    goto/16 :goto_2b

    :catch_28
    move-exception v0

    goto :goto_26

    :catch_29
    move-exception v0

    goto :goto_26

    :catch_2a
    move-exception v0

    goto :goto_24

    :catch_2b
    move-exception v0

    :goto_24
    move-wide/from16 v2, p5

    move-object v4, v0

    move v8, v7

    goto :goto_2a

    :catch_2c
    move-exception v0

    goto :goto_25

    :catch_2d
    move-exception v0

    :goto_25
    move-object/from16 v9, v31

    :goto_26
    move-wide/from16 v2, p5

    move-object v4, v0

    move-object/from16 v6, v20

    goto/16 :goto_20

    .line 182
    :cond_16
    move-object/from16 v9, v31

    const/4 v8, 0x4

    const/16 v21, 0x2

    :try_start_38
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->handles(Ljava/lang/String;)Z

    move-result v2
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_38} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_38 .. :try_end_38} :catch_2e

    if-eqz v2, :cond_17

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, v21

    move-wide/from16 v6, p5

    :try_start_39
    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;J)V

    goto/16 :goto_33

    .line 183
    :cond_17
    move/from16 v8, v21

    sget-object v2, Lcom/project7/localmanager/LocalHomeCollectionEngine;->METHODS:Ljava/util/Set;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v13, v10, v5, v11, v12}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)V

    goto/16 :goto_33

    .line 184
    :cond_18
    invoke-static {v13, v10, v11, v12}, Lcom/project7/localmanager/LocalHomeEngine;->scheme(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_39} :catch_37
    .catch Ljava/lang/ArithmeticException; {:try_start_39 .. :try_end_39} :catch_36

    goto/16 :goto_33

    .line 188
    :catch_2e
    move-exception v0

    goto :goto_27

    :catch_2f
    move-exception v0

    :goto_27
    move/from16 v8, v21

    goto :goto_29

    :catch_30
    move-exception v0

    goto :goto_28

    :catch_31
    move-exception v0

    :goto_28
    move-object/from16 v9, v31

    const/4 v8, 0x2

    :goto_29
    move-wide/from16 v2, p5

    move-object v4, v0

    :goto_2a
    move-object/from16 v6, v20

    :goto_2b
    move-object/from16 v5, v33

    goto/16 :goto_3e

    :catch_32
    move-exception v0

    goto :goto_2c

    :catch_33
    move-exception v0

    :goto_2c
    move-object/from16 v32, v6

    move/from16 v18, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    move-wide/from16 v2, p5

    move-object v4, v0

    move-object v6, v7

    goto :goto_2e

    :catch_34
    move-exception v0

    goto :goto_2d

    :catch_35
    move-exception v0

    :goto_2d
    move-object/from16 v10, p1

    move-object/from16 v32, v6

    move-object/from16 v20, v18

    move/from16 v18, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    move-wide/from16 v2, p5

    move-object v4, v0

    move-object/from16 v6, v20

    :goto_2e
    move-object/from16 v5, v26

    goto/16 :goto_3e

    .line 159
    :cond_19
    move-object/from16 v10, p1

    move-object v13, v3

    move-object/from16 v32, v6

    move-object/from16 v20, v18

    move-object/from16 v33, v26

    move-object/from16 v14, v27

    move/from16 v18, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    .line 160
    :goto_2f
    :try_start_3a
    const-string v3, "s"

    invoke-static {v12, v3}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 161
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    if-eq v3, v8, :cond_1c

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1b

    goto :goto_30

    :cond_1a
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    if-ne v3, v8, :cond_1b

    goto :goto_30

    :cond_1b
    move/from16 v4, v23

    goto :goto_31

    :cond_1c
    :goto_30
    const/4 v4, 0x1

    :goto_31
    const-string v5, "\u623f\u95f4\u8bbe\u7f6e\u65e0\u6548"

    .line 160
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 162
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3a} :catch_3d
    .catch Ljava/lang/ArithmeticException; {:try_start_3a .. :try_end_3a} :catch_3c

    if-eqz v2, :cond_1d

    :try_start_3b
    const-string v2, "vs"
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3b} :catch_37
    .catch Ljava/lang/ArithmeticException; {:try_start_3b .. :try_end_3b} :catch_36

    goto :goto_32

    .line 188
    :catch_36
    move-exception v0

    goto/16 :goto_29

    :catch_37
    move-exception v0

    goto/16 :goto_29

    .line 162
    :cond_1d
    :try_start_3c
    const-string v2, "xs"

    .line 163
    :goto_32
    iget-object v4, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reply"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "s"

    aput-object v5, v4, v23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3c} :catch_3d
    .catch Ljava/lang/ArithmeticException; {:try_start_3c .. :try_end_3c} :catch_3c

    .line 165
    nop

    .line 185
    :goto_33
    move-wide/from16 v2, p5

    move-object v4, v13

    move-object/from16 v5, v33

    :try_start_3d
    invoke-static {v4, v5, v10, v2, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;J)V

    .line 186
    const-string v6, "inv"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    iget-object v7, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "inv"

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    const-string v6, "requestRoomBaseInfo"

    .line 187
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_3d} :catch_3b
    .catch Ljava/lang/ArithmeticException; {:try_start_3d .. :try_end_3d} :catch_3a

    if-nez v6, :cond_1e

    move-object/from16 v6, v20

    :try_start_3e
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_34

    :cond_1e
    move-object/from16 v6, v20

    goto :goto_34

    .line 186
    :cond_1f
    move-object/from16 v6, v20

    .line 187
    :goto_34
    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalHomeEngine;->syncOwned(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3e .. :try_end_3e} :catch_39
    .catch Ljava/lang/ArithmeticException; {:try_start_3e .. :try_end_3e} :catch_38

    goto :goto_35

    .line 188
    :catch_38
    move-exception v0

    goto/16 :goto_3d

    :catch_39
    move-exception v0

    goto/16 :goto_3d

    .line 212
    :cond_20
    :goto_35
    move-object/from16 v13, p0

    goto/16 :goto_42

    .line 188
    :catch_3a
    move-exception v0

    goto :goto_36

    :catch_3b
    move-exception v0

    :goto_36
    move-object/from16 v6, v20

    goto/16 :goto_3d

    :catch_3c
    move-exception v0

    goto :goto_37

    :catch_3d
    move-exception v0

    :goto_37
    move-wide/from16 v2, p5

    move-object/from16 v6, v20

    move-object/from16 v5, v33

    goto :goto_3d

    :catch_3e
    move-exception v0

    goto :goto_38

    :catch_3f
    move-exception v0

    :goto_38
    move-object/from16 v10, p1

    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move/from16 v18, v9

    move-object/from16 v9, v28

    move-object/from16 v34, v8

    move v8, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v34

    goto :goto_3d

    :catch_40
    move-exception v0

    goto :goto_39

    :catch_41
    move-exception v0

    :goto_39
    move-object/from16 v32, v6

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    move-object/from16 v5, v26

    move-object/from16 v9, v28

    goto :goto_3c

    :catch_42
    move-exception v0

    goto :goto_3b

    :catch_43
    move-exception v0

    goto :goto_3b

    :catch_44
    move-exception v0

    goto :goto_3a

    :catch_45
    move-exception v0

    :goto_3a
    move-object/from16 v25, v1

    :goto_3b
    move-object v9, v5

    move-object/from16 v32, v6

    move-object v5, v7

    move-wide v2, v13

    move-object/from16 v1, v17

    move-object/from16 v6, v18

    :goto_3c
    const/16 v18, 0x3

    move-object/from16 v17, v15

    move-object v15, v8

    const/4 v8, 0x2

    :goto_3d
    move-object v4, v0

    .line 189
    :goto_3e
    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v7, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 190
    move-object/from16 v13, p0

    move-object/from16 v14, v25

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v8, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_21

    .line 191
    invoke-static {v7}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 192
    :cond_21
    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const-string v5, "m"

    aput-object v5, v8, v23

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v8, v5

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "showMessageStr"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 193
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V

    .line 194
    move-object/from16 v4, v17

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    aput-object v12, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyBuyRoom"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 195
    :cond_22
    const-string v4, "requestHeroEnterRoom"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    aput-object v12, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyHeroEnterRoom"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 196
    :cond_23
    const-string v4, "requestHeroEnterRoomBatch"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v4, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyHeroEnterRoomBatch"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 197
    :cond_24
    const-string v4, "requestChangeMainHomeHero"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    aput-object v12, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyChangeMainHomeHero"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 198
    :cond_25
    const-string v4, "requestGiveRoomGift"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    aput-object v12, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyGiveRoomGift"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 199
    :cond_26
    const-string v4, "requestAddHeroHomeResource"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    aput-object v12, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyAddHeroHomeResource"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 200
    :cond_27
    const-string v4, "requestSaveHeroCamera"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v4, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replySaveHeroCamera"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 201
    :cond_28
    const-string v4, "requestGiveHeroSpecialGift"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v4, 0x2

    aput-object v9, v5, v4

    aput-object v12, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyGiveHeroSpecialGift"

    invoke-virtual {v7, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 202
    :cond_29
    const-string v4, "requestCompleteWishTask"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x6

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v5, v14

    const/4 v8, 0x2

    aput-object v9, v5, v8

    invoke-static {v12, v9}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v18

    move-object/from16 v8, v32

    const/4 v14, 0x4

    aput-object v8, v5, v14

    new-instance v14, Lcom/project7/localmanager/BsonLite$UuidValue;

    const-string v15, "000000000000000000000000"

    invoke-direct {v14, v15}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v14, v5, v19

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    const-string v14, "replyCompleteWishTask"

    invoke-virtual {v7, v14, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_3f

    :cond_2a
    move-object/from16 v8, v32

    const/4 v4, 0x6

    .line 204
    :goto_3f
    const-string v5, "requestGetTask"

    const-string v14, "requestGetTaskReward"

    const-string v15, "requestGiveUpTask"

    filled-new-array {v5, v14, v15}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 205
    const-string v5, "requestGetTask"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "replyGetTask"

    goto :goto_40

    :cond_2b
    const-string v5, "requestGetTaskReward"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v5, "replyGetTaskReward"

    goto :goto_40

    :cond_2c
    const-string v5, "replyGiveUpTask"

    :goto_40
    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v16, v15, v23

    .line 206
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v15, v17

    const/4 v14, 0x2

    aput-object v9, v15, v14

    aput-object v12, v15, v18

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v14

    .line 205
    invoke-virtual {v7, v5, v14}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 207
    :cond_2d
    const-string v5, "requestBuyMusicByMusicCoin"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, 0x4

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v16, v14, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v5, 0x2

    aput-object v9, v14, v5

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v23

    const-string v1, "key"

    invoke-static {v12, v1}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v15

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v14, v18

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v4, "replyBuyMusicByMusicCoin"

    invoke-virtual {v7, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 208
    :cond_2e
    const-string v1, "createFurnitureScheme"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "st"

    if-eqz v1, :cond_2f

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v16, v1, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v1, v14

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v18

    const-string v5, "sk"

    const/4 v14, 0x4

    aput-object v5, v1, v14

    const-string v5, "sk"

    invoke-static {v12, v5}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v19

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v5, "replyCreateFurnitureScheme"

    invoke-virtual {v7, v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 209
    :cond_2f
    const-string v1, "generaSchemeType"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v16, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v14, 0x1

    aput-object v1, v5, v14

    const/4 v1, 0x2

    aput-object v4, v5, v1

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v18

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v4, "replyGeneraSchemeType"

    invoke-virtual {v7, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 210
    :cond_30
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "Lianchou"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "replyLuckyDrawFurnitureLianchouCard"

    goto :goto_41

    :cond_31
    const-string v1, "replyLuckyDrawFurnitureCard"

    :goto_41
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "rs"

    aput-object v5, v4, v23

    .line 211
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v9, v4, v5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v23

    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    aput-object v5, v4, v18

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 210
    invoke-virtual {v7, v1, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 213
    :cond_32
    move-object v4, v7

    :goto_42
    iget-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v5, 0x1

    invoke-static {v1, v10, v2, v3, v5}, Lcom/project7/localmanager/LocalHomeDailyEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;JZ)[B

    move-result-object v1

    iput-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 214
    invoke-static {v4, v10, v2, v3}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;J)V

    .line 215
    invoke-static {v4, v13}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 216
    invoke-static {v4, v13}, Lcom/project7/localmanager/LocalHomeDailyEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 217
    invoke-static {v4}, Lcom/project7/localmanager/LocalDrawEngine;->compactItemUpdates(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 218
    return-object v4
.end method

.method private static batch(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 14

    .line 253
    const-string v0, "fs"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "rs"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "hs"

    invoke-static {p1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 254
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 260
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 254
    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0x6c

    if-gt v2, v6, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v2, v6, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v6, "\u6279\u91cf\u5165\u4f4f\u6570\u636e\u65e0\u6548"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    move v7, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v11, "r"

    const/4 v12, 0x4

    if-ge v7, v8, :cond_1

    .line 257
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v13, "f"

    aput-object v13, v8, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v8, v4

    aput-object v11, v8, v10

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "h"

    aput-object v9, v8, v12

    const/4 v9, 0x5

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :try_start_0
    invoke-static {p0, v8}, Lcom/project7/localmanager/LocalHomeEngine;->enter(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 260
    :cond_1
    new-array p1, v12, [Ljava/lang/Object;

    aput-object v11, p1, v3

    aput-object v5, p1, v4

    const-string v0, "i"

    aput-object v0, p1, v10

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v11, v1, v3

    aput-object v2, v1, v4

    aput-object v0, v1, v10

    aput-object v6, v1, v9

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    aput-object v0, p1, v9

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "replyHeroEnterRoomBatch"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 261
    return-void
.end method

.method private static buyRoom(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 10

    .line 227
    const-string v0, "f"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "r"

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "R"

    invoke-static {p1, v4, v3}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    .line 228
    const-string v3, "release"

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "\u623f\u95f4\u672a\u5f00\u653e"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v1, p2}, Lcom/project7/localmanager/LocalHomeEngine;->roomOwned([BII)Z

    move-result v3

    if-nez v3, :cond_3

    .line 230
    const-string v3, "init"

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v6, "cost"

    if-nez v3, :cond_1

    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v7, "\u623f\u95f4\u65e0\u6cd5\u8d2d\u4e70"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 231
    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result p1

    const-string v3, "yuanbao"

    invoke-static {p0, v3, p1}, Lcom/project7/localmanager/LocalGiftEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V

    .line 232
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "hhd"

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    const-string v6, "fi"

    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 233
    if-nez v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    const-string v9, "1"

    invoke-static {v7, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v8

    .line 234
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v6, v1, v7}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object p1

    invoke-static {v8, v3, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 235
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 237
    :cond_3
    const/4 p1, 0x4

    new-array v3, p1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "i"

    const/4 v7, 0x2

    aput-object v6, v3, v7

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    aput-object v2, p1, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "replyBuyRoom"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 238
    return-void
.end method

.method static callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V
    .locals 3

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "_result_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "q7HomeCallback"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    return-void
.end method

.method private static choose(Ljava/util/List;Ljava/util/Random;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/Random;",
            ")[B"
        }
    .end annotation

    .line 361
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "w"

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeEngine;->number([BLjava/lang/String;)D

    move-result-wide v5

    add-double/2addr v3, v5

    goto :goto_0

    .line 362
    :cond_0
    cmpl-double v0, v3, v1

    const/4 v5, 0x1

    if-lez v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v7, "\u914d\u9001\u5956\u52b1\u5408\u540c\u65e0\u6548"

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v7, v3

    .line 363
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalHomeEngine;->number([BLjava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v7, v3

    cmpg-double v3, v7, v1

    if-gez v3, :cond_2

    return-object v0

    .line 364
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method static count([BI)I
    .locals 3

    .line 46
    nop

    .line 47
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "items"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 48
    const-string v2, "i"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    goto :goto_0

    .line 49
    :cond_1
    return v0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static day(J)Ljava/lang/String;
    .locals 4

    .line 371
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "Asia/Shanghai"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 372
    new-instance v1, Ljava/util/Date;

    const-wide/32 v2, 0x1808580

    sub-long/2addr p0, v2

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static defaultScheme(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)[B
    .locals 24

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v3, "T"

    invoke-static {v0, v3, v1}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 60
    const-string v4, "player_home"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v9, "c"

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/16 v5, 0x12

    const-string v21, ""

    const/4 v6, 0x1

    const/16 v22, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v7, v23

    check-cast v7, Ljava/lang/String;

    const-string v8, "I:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 61
    iget-object v8, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-string v8, "isPlaced"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-eq v8, v6, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "id"

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 63
    new-array v11, v5, [Ljava/lang/Object;

    aput-object v10, v11, v22

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v6

    const-string v10, "k"

    aput-object v10, v11, v20

    aput-object v8, v11, v19

    const-string v10, "pos"

    aput-object v10, v11, v18

    new-instance v6, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 64
    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v6, v11, v17

    const-string v5, "np"

    aput-object v5, v11, v16

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v5, v11, v15

    const-string v5, "r"

    aput-object v5, v11, v14

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 65
    const-string v6, "rot"

    invoke-static {v7, v6}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v5, v11, v13

    const-string v5, "s"

    aput-object v5, v11, v12

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v6, 0xb

    aput-object v5, v11, v6

    const-string v5, "p"

    const/16 v6, 0xc

    aput-object v5, v11, v6

    const/16 v5, 0xd

    aput-object v21, v11, v5

    const/16 v5, 0xe

    aput-object v9, v11, v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/16 v6, 0xf

    aput-object v5, v11, v6

    const-string v5, "il"

    const/16 v6, 0x10

    aput-object v5, v11, v6

    const/16 v5, 0x11

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v11, v5

    .line 63
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-static {v2, v8, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 60
    :cond_1
    const/16 v5, 0x12

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 67
    :cond_2
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "t"

    aput-object v4, v0, v22

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "e"

    aput-object v1, v0, v20

    aput-object v2, v0, v19

    const-string v1, "cp"

    aput-object v1, v0, v18

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    const-string v2, "initCameraPos"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v1, v0, v17

    const-string v1, "cr"

    aput-object v1, v0, v16

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 68
    const-string v2, "initCameraRot"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v1, v0, v15

    const-string v1, "cc"

    aput-object v1, v0, v14

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 69
    const-string v2, "initCameraCenter"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v1, v0, v13

    const-string v1, "ct"

    aput-object v1, v0, v12

    const/16 v1, 0xb

    aput-object v21, v0, v1

    const/16 v1, 0xc

    aput-object v9, v0, v1

    const/16 v1, 0xd

    aput-object v21, v0, v1

    const-string v1, "l"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "cb"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 67
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method private static draw(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJLjava/util/Random;)V
    .locals 31

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    const-string v3, "t"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v5, "Lianchou"

    move-object/from16 v6, p3

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :cond_0
    move v5, v7

    .line 377
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "P"

    invoke-static {v1, v9, v8}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v10, "level"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-lt v9, v10, :cond_1

    const/16 v9, 0xa2

    if-ne v4, v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const-string v10, "\u4ec5\u5e38\u9a7b\u90fd\u5e02\u914d\u9001\u5df2\u63a5\u5165"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 378
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v9

    .line 379
    invoke-static/range {p5 .. p6}, Lcom/project7/localmanager/LocalHomeEngine;->day(J)Ljava/lang/String;

    move-result-object v10

    .line 380
    const-string v12, "q7DrawDay"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "cctd"

    if-eqz v13, :cond_2

    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v13

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 381
    :goto_2
    add-int/2addr v13, v5

    const/16 v15, 0x1f4

    if-gt v13, v15, :cond_3

    move v15, v7

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    const-string v11, "\u4eca\u65e5\u914d\u9001\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {v15, v11}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 382
    const-string v11, "cost"

    invoke-static {v8, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    const/4 v6, 0x2

    if-ne v15, v6, :cond_4

    move v15, v7

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const-string v6, "\u914d\u9001\u8d39\u7528\u5408\u540c\u7f3a\u5931"

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 383
    const-string v6, "ticket"

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    const/4 v15, 0x0

    goto :goto_5

    :cond_5
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalHomeEngine;->count([BI)I

    move-result v15

    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 384
    :goto_5
    if-lez v15, :cond_6

    invoke-static {v0, v6, v15}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 385
    :cond_6
    sub-int v6, v5, v15

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v6

    const-string v15, "lt"

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v16

    const/16 v7, 0xa

    if-ne v5, v7, :cond_7

    const/16 v17, 0x1

    goto :goto_6

    :cond_7
    const/16 v17, 0x0

    :goto_6
    move/from16 v18, v6

    add-int v6, v16, v17

    .line 386
    if-ne v5, v7, :cond_a

    const-string v7, "discount"

    invoke-static {v8, v7}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v8, v18

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, [B

    move-object/from16 v16, v3

    const-string v3, "0"

    invoke-static {v7, v3}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_8

    move/from16 v19, v4

    int-to-long v3, v8

    const-string v8, "1"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v3, v7

    const-wide/16 v7, 0xa

    div-long/2addr v3, v7

    long-to-int v8, v3

    goto :goto_8

    :cond_8
    move/from16 v19, v4

    :goto_8
    move-object/from16 v3, v16

    move-object/from16 v7, v17

    move/from16 v4, v19

    goto :goto_7

    :cond_9
    move-object/from16 v16, v3

    move/from16 v19, v4

    goto :goto_9

    :cond_a
    move-object/from16 v16, v3

    move/from16 v19, v4

    move/from16 v8, v18

    .line 387
    :goto_9
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3, v8}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 388
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "D:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 389
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "ct"

    invoke-static {v9, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v8

    .line 390
    const/4 v11, 0x1

    :goto_b
    move-object/from16 v17, v10

    const-string v10, "i"

    const/16 v18, 0x3

    move-object/from16 v20, v12

    if-gt v11, v5, :cond_12

    .line 391
    add-int v21, v8, v11

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move/from16 v21, v6

    const-string v6, "G"

    invoke-virtual {v1, v6, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    if-nez v6, :cond_d

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeEngine;->choose(Ljava/util/List;Ljava/util/Random;)[B

    move-result-object v6

    .line 392
    :cond_d
    const-string v12, "options"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalHomeEngine;->choose(Ljava/util/List;Ljava/util/Random;)[B

    move-result-object v6

    .line 393
    new-instance v12, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 394
    const-string v1, "g"

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v28, v1

    move-object/from16 v1, v22

    check-cast v1, [B

    .line 395
    const-string v2, "skin"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v24

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v25

    const-string v2, "n"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v26

    .line 396
    if-lez v24, :cond_e

    move-object/from16 v22, v12

    move-object/from16 v23, p2

    move/from16 v25, v26

    move-wide/from16 v26, p5

    invoke-static/range {v22 .. v27}, Lcom/project7/localmanager/LocalHomeEngine;->skinCopies(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;IIJ)V

    move/from16 v30, v13

    move-object/from16 v29, v14

    const/4 v6, 0x2

    move-wide/from16 v13, p5

    goto :goto_d

    .line 397
    :cond_e
    const-string v2, "pendant"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v2, p2

    move/from16 v30, v13

    move-object/from16 v29, v14

    move-wide/from16 v13, p5

    invoke-static {v12, v2, v1, v13, v14}, Lcom/project7/localmanager/LocalHomeEngine;->pendant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BJ)V

    move/from16 v6, v18

    goto :goto_d

    .line 398
    :cond_f
    move-object/from16 v2, p2

    move/from16 v30, v13

    move-object/from16 v29, v14

    move-wide/from16 v13, p5

    const/16 v27, 0x1

    const-string v24, "item"

    move-object/from16 v22, v12

    move-object/from16 v23, p2

    invoke-static/range {v22 .. v27}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    const-string v2, "furniture"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    const/4 v6, 0x4

    .line 399
    :cond_10
    :goto_d
    move-object/from16 v2, p7

    move-object/from16 v1, v28

    move-object/from16 v14, v29

    move/from16 v13, v30

    goto :goto_c

    .line 400
    :cond_11
    move/from16 v30, v13

    move-object/from16 v29, v14

    move-wide/from16 v13, p5

    iget-object v1, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v2, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    invoke-virtual {v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const-string v2, "rtype"

    invoke-static {v1, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v10, v17

    move-object/from16 v12, v20

    move/from16 v6, v21

    move-object/from16 v14, v29

    move/from16 v13, v30

    goto/16 :goto_b

    .line 403
    :cond_12
    move/from16 v21, v6

    move/from16 v30, v13

    move-object/from16 v29, v14

    invoke-static {v8, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v9, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 404
    move-object/from16 v2, v29

    invoke-static {v1, v2, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    move/from16 v2, v21

    invoke-static {v1, v15, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 405
    move-object/from16 v3, v17

    move-object/from16 v6, v20

    invoke-static {v1, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    move/from16 v3, v19

    invoke-static {v0, v1, v3}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V

    .line 406
    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v8, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const-string v6, "d"

    const/4 v9, 0x2

    aput-object v6, v8, v9

    aput-object v1, v8, v18

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v6, "syncLuckyDrawActivityData"

    invoke-virtual {v0, v6, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 407
    const/16 v1, 0xa

    if-ne v5, v1, :cond_13

    const-string v1, "replyLuckyDrawFurnitureLianchouCard"

    goto :goto_e

    :cond_13
    const-string v1, "replyLuckyDrawFurnitureCard"

    :goto_e
    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Object;

    const-string v6, "rs"

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v6

    const/4 v11, 0x2

    aput-object v10, v8, v11

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v16, v10, v9

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v6

    aput-object v7, v10, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v18

    const/4 v3, 0x4

    aput-object v15, v10, v3

    const/4 v3, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v3

    const/4 v2, 0x6

    const-string v3, "rwd"

    aput-object v3, v10, v2

    const/4 v2, 0x7

    const/16 v3, 0xa

    if-ne v5, v3, :cond_14

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    :goto_f
    aput-object v4, v10, v2

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, v8, v18

    .line 407
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 409
    return-void
.end method

.method private static enter(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 13

    .line 240
    const-string v0, "f"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "r"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "h"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 241
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->roomOwned([BII)Z

    move-result v2

    const-string v3, "\u623f\u95f4\u5c1a\u672a\u8d2d\u4e70"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 242
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, p1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const-string v5, "\u795e\u5668\u4f7f\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "hhd"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 244
    const-string v7, "hri"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 245
    const-string v11, "1"

    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 246
    const-string v12, "0"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-eq v12, p1, :cond_2

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v3

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    .line 247
    :cond_3
    new-instance v10, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v10, v9}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    goto :goto_2

    .line 249
    :cond_4
    if-eqz p1, :cond_5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v2

    new-array p1, v10, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v8, v3

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_5
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v7, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 251
    return-void
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 26
    sget-object v0, Lcom/project7/localmanager/LocalHomeEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static initialize([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 2

    .line 72
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->initialize([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;J)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static initialize([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;J)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 22

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    new-instance v10, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v10, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 76
    const-string v4, "hhd"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    const-string v6, "fi"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v5, :cond_3

    .line 78
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 79
    iget-object v7, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "R:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    iget-object v9, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 81
    const-string v9, "init"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_0

    const-string v9, "release"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_0

    .line 82
    const-string v9, "louceng_id"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v13, Lcom/project7/localmanager/LocalHomeEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalHomeEngine$$ExternalSyntheticLambda0;

    invoke-interface {v5, v9, v13}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const-string v13, "room_id"

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v9, v11

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v9, v12

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_2
    invoke-static {v0, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 87
    iget-object v5, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 89
    :cond_3
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "fnd"

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v14, "s"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    const-string v9, "player_home"

    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 90
    const-string v7, "cur"

    invoke-static {v8, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v4, "local_default"

    :cond_5
    move-object v6, v4

    .line 92
    nop

    .line 93
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v11

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    if-eqz v11, :cond_6

    move v5, v12

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 95
    :cond_7
    const-string v11, "q7HomeInit"

    if-nez v5, :cond_c

    .line 96
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v5, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 97
    iget-object v4, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "I:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 98
    iget-object v5, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v12, "F"

    invoke-static {v1, v12, v5}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    .line 99
    const-string v12, "itemid"

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v12

    const-string v5, "count"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v4

    iget-object v5, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalHomeEngine;->count([BI)I

    move-result v5

    sub-int v17, v4, v5

    .line 100
    if-lez v12, :cond_8

    if-lez v17, :cond_8

    const/16 v18, 0x1

    const-string v19, "item"

    move-object v4, v10

    move-object/from16 v5, p2

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    move-object/from16 v21, v7

    move v7, v12

    move-object v12, v8

    move/from16 v8, v17

    move-object v2, v9

    move/from16 v9, v18

    invoke-static/range {v4 .. v9}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    goto :goto_4

    :cond_8
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v12, v8

    move-object v2, v9

    goto :goto_4

    .line 97
    :cond_9
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v12, v8

    move-object v2, v9

    :goto_4
    move-object v9, v2

    move-object v8, v12

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    const/4 v12, 0x1

    move-wide/from16 v2, p3

    goto :goto_3

    :cond_a
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v12, v8

    move-object v2, v9

    goto :goto_5

    .line 96
    :cond_b
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v12, v8

    move-object v2, v9

    .line 103
    :goto_5
    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->defaultScheme(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v4, v20

    invoke-static {v12, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    move-object v6, v4

    goto :goto_6

    .line 104
    :cond_c
    move-object v4, v6

    move-object/from16 v21, v7

    move-object v12, v8

    move-object v2, v9

    invoke-static {v12, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_e

    .line 105
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v12, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_d

    move-object v8, v12

    goto :goto_6

    .line 107
    :cond_e
    move-object v6, v4

    move-object v8, v12

    :goto_6
    move-object/from16 v3, v21

    invoke-static {v8, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 108
    invoke-static {v15, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    invoke-static {v0, v14, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 109
    const-string v3, "cst"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    :cond_f
    const-string v2, "nm"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 111
    :cond_10
    const-string v3, "\u6307\u6325\u4f7f\u7684\u623f\u95f4"

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 112
    :cond_11
    iget-object v2, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v13, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 113
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v2, 0x1

    invoke-static {v0, v11, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 114
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v2, 0xa2

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static/range {p3 .. p4}, Lcom/project7/localmanager/LocalHomeEngine;->day(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "q7DrawDay"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 116
    const-string v3, "cctd"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static/range {p3 .. p4}, Lcom/project7/localmanager/LocalHomeEngine;->day(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 117
    invoke-static {v10, v0, v2}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V

    .line 119
    :cond_12
    invoke-static {v10, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->initialize(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 120
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-wide/from16 v2, p3

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->initialize([BJ)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 121
    const/4 v0, 0x0

    invoke-static {v10, v1, v0}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 122
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/project7/localmanager/LocalHomeDailyEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;JZ)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 123
    invoke-static {v10, v1, v2, v3}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;J)V

    .line 124
    return-object v10
.end method

.method static inventoryCounts([B)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string v1, "inv"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "items"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 54
    const-string v2, "i"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "w"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$initialize$0(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 82
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static number([BLjava/lang/String;)D
    .locals 0

    .line 368
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method static pairSet([BLjava/lang/String;ILjava/lang/Object;)[B
    .locals 5

    .line 39
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    const-string v3, "1"

    aput-object v3, v2, p2

    const/4 p2, 0x3

    aput-object p3, v2, p2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v1, v0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method static pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v1, "0"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method private static pendant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BJ)V
    .locals 23

    .line 434
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v0, "pendant"

    invoke-static {v7, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v1, v8, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    const-string v2, "\u6302\u9970\u5408\u540c\u65e0\u6548"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 435
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 436
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v0

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "heromgr"

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v14, "pp"

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 437
    new-instance v15, Ljava/util/ArrayList;

    const-string v5, "pa"

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    move-object v4, v0

    move-object v3, v1

    move v1, v9

    :goto_1
    const-string v0, "n"

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 440
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    const-string v0, "trans"

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, [B

    .line 442
    const-string v8, "0"

    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v8

    const-string v10, "1"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    const-string v18, "item"

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move-object/from16 v2, v18

    move-object/from16 v22, v3

    move v3, v8

    move-object v8, v4

    move v4, v9

    move-object v9, v5

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object v4, v8

    move-object v5, v9

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_2

    .line 443
    :cond_1
    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v8, v4

    move-object v9, v5

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v1, "\u91cd\u590d\u6302\u9970\u8f6c\u6362\u5408\u540c\u7f3a\u5931"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    move-object/from16 v16, v9

    move-object v2, v13

    move-object v10, v14

    move-object/from16 v0, v21

    move-object/from16 v3, v22

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v13, 0x0

    move-object/from16 v21, v8

    move-object v8, v15

    goto/16 :goto_6

    .line 445
    :cond_2
    move/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v8, v4

    move-object v9, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v0

    const-string v1, "d"

    if-eqz v0, :cond_4

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    const-string v5, "pat"

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, [B

    new-instance v3, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v3, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 450
    :cond_3
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v3, v10

    move-object v2, v13

    move-object v10, v14

    const-wide/16 v18, 0x3e8

    div-long v13, p3, v18

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v3, v14

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-static {v8, v9, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    .line 452
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v11, v4}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 453
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "h"

    const/4 v5, 0x0

    aput-object v3, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "updateHeroData"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 454
    move-object/from16 v16, v9

    move-object v8, v15

    move-object/from16 v0, v21

    move-object/from16 v3, v22

    move-object/from16 v21, v4

    const/4 v4, 0x2

    goto/16 :goto_5

    .line 455
    :cond_4
    move-object v2, v13

    move-object v10, v14

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 457
    const-string v3, "ppc"

    move-object/from16 v4, v22

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v21, v8

    move-object/from16 v8, v16

    check-cast v8, [B

    move-object/from16 v16, v9

    new-instance v9, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v9, v8}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v16

    move-object/from16 v8, v21

    goto :goto_4

    .line 459
    :cond_5
    move-object/from16 v21, v8

    move-object/from16 v16, v9

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x0

    aput-object v8, v9, v14

    move-object v8, v15

    const-wide/16 v18, 0x3e8

    div-long v14, p3, v18

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v9, v15

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-static {v4, v10, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 461
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    .line 460
    invoke-static {v4, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 462
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 463
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    const/4 v1, 0x1

    aput-object v3, v5, v1

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v5, "syncHeroMgrPendingData"

    invoke-virtual {v6, v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 465
    :goto_5
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    new-array v5, v4, [Ljava/lang/Integer;

    const-string v9, "i"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v5, v13

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v5, v9

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :goto_6
    add-int/lit8 v1, v20, 0x1

    move-object v15, v8

    move-object v14, v10

    move-object/from16 v5, v16

    move v8, v4

    move v10, v9

    move v9, v13

    move-object/from16 v4, v21

    move-object v13, v2

    move-object v2, v0

    goto/16 :goto_1

    .line 468
    :cond_6
    return-void
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 220
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static roomOwned([BII)Z
    .locals 1

    .line 223
    const-string v0, "hhd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "fi"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 224
    if-eqz p0, :cond_0

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_0
    return-object p0
.end method

.method private static scheme(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V
    .locals 27

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "st"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sk"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "fnd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v10, "s"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11, v5}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 264
    const-string v13, "T"

    invoke-static {v1, v13, v5}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    const/4 v14, 0x1

    xor-int/2addr v13, v14

    const-string v15, "\u623f\u95f4\u7c7b\u578b\u4e0d\u5b58\u5728"

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 265
    const-string v13, "generaSchemeType"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "sd"

    const-string v16, "r"

    const-string v14, "cur"

    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v20, v9

    const/4 v9, 0x4

    const/16 v21, 0x0

    if-eqz v13, :cond_4

    .line 266
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    nop

    .line 268
    iget-object v2, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v3, v21

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "F:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 269
    iget-object v7, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 270
    const-string v7, "category"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/16 v12, 0xa

    if-eq v7, v12, :cond_0

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v12, "itemid"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v7, v6}, Lcom/project7/localmanager/LocalHomeEngine;->count([BI)I

    move-result v6

    if-lez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 268
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    const-string v2, "player_home2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x28

    if-lt v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move/from16 v2, v21

    :goto_1
    const-string v3, "\u6269\u5c55\u623f\u95f4\u9700\u898140\u79cd\u5bb6\u5177\uff1b\u6d77\u6ee8\u623f\u578b\u89e3\u9501\u5408\u540c\u5c1a\u5f85\u6838\u5bf9"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 273
    const-string v2, "local_default"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v14, v3, v21

    const/4 v6, 0x1

    aput-object v2, v3, v6

    aput-object v2, v3, v19

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeEngine;->defaultScheme(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v18

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v12

    .line 274
    new-array v1, v9, [Ljava/lang/Object;

    aput-object v4, v1, v21

    aput-object v5, v1, v6

    aput-object v15, v1, v19

    aput-object v12, v1, v18

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncSchemeData"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 276
    :cond_3
    new-array v1, v9, [Ljava/lang/Object;

    aput-object v16, v1, v21

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v4, v1, v19

    aput-object v5, v1, v18

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replyGeneraSchemeType"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    goto/16 :goto_c

    .line 278
    :cond_4
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v9, 0x64

    if-gt v13, v9, :cond_5

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    move/from16 v9, v21

    :goto_2
    const-string v13, "\u88c5\u9970\u65b9\u6848\u4e0d\u5b58\u5728"

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 279
    invoke-static {v12, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 280
    move-object/from16 v22, v10

    const-string v10, "createFurnitureScheme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v23, "d"

    move-object/from16 v24, v11

    const-string v11, "syncScheme"

    const/16 v25, 0x5

    move-object/from16 v26, v15

    const/4 v15, 0x6

    if-eqz v10, :cond_8

    .line 281
    if-nez v9, :cond_7

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    move/from16 v2, v21

    :goto_3
    const-string v3, "\u88c5\u9970\u65b9\u6848\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeEngine;->defaultScheme(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)[B

    move-result-object v9

    .line 282
    :cond_7
    invoke-static {v12, v7, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v12

    .line 283
    new-array v1, v15, [Ljava/lang/Object;

    aput-object v4, v1, v21

    const/4 v2, 0x1

    aput-object v5, v1, v2

    aput-object v6, v1, v19

    aput-object v7, v1, v18

    const/4 v3, 0x4

    aput-object v23, v1, v3

    aput-object v9, v1, v25

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 284
    new-array v1, v15, [Ljava/lang/Object;

    aput-object v16, v1, v21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v2

    aput-object v4, v1, v19

    aput-object v5, v1, v18

    aput-object v6, v1, v3

    aput-object v7, v1, v25

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replyCreateFurnitureScheme"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto/16 :goto_c

    .line 286
    :cond_8
    if-eqz v9, :cond_9

    const/4 v10, 0x1

    goto :goto_4

    :cond_9
    move/from16 v10, v21

    :goto_4
    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 287
    const-string v10, "switchFurnitureScheme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 288
    invoke-static {v12, v14, v7}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    const-string v1, "cst"

    invoke-static {v8, v1, v5}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 289
    :cond_a
    const/4 v10, 0x1

    const-string v13, "getServerOneSchemeData"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 290
    new-array v1, v15, [Ljava/lang/Object;

    aput-object v4, v1, v21

    aput-object v5, v1, v10

    aput-object v6, v1, v19

    aput-object v7, v1, v18

    const/4 v2, 0x4

    aput-object v23, v1, v2

    aput-object v9, v1, v25

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 291
    :cond_b
    const-string v10, "getServerOneFurnitureData"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v13, "fk"

    const-string v14, "e"

    if-eqz v10, :cond_d

    .line 292
    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 293
    if-eqz v1, :cond_c

    const/4 v14, 0x1

    goto :goto_5

    :cond_c
    move/from16 v14, v21

    :goto_5
    const-string v2, "\u5bb6\u5177\u4e0d\u5b58\u5728"

    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V

    .line 294
    goto/16 :goto_c

    :cond_d
    const-string v10, "saveFurnitureScheme"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_12

    const-string v15, "canAddFurnitureToScheme"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    goto/16 :goto_8

    .line 308
    :cond_e
    const-string v4, "changeFurnitureEffState"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 309
    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 310
    const-string v6, "es"

    if-eqz v4, :cond_f

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_f

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v10

    const/4 v11, 0x4

    if-gt v10, v11, :cond_f

    const/4 v10, 0x1

    goto :goto_6

    :cond_f
    move/from16 v10, v21

    :goto_6
    const-string v11, "\u5bb6\u5177\u6548\u679c\u65e0\u6548"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 311
    const-string v10, "id"

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "F"

    invoke-static {v1, v11, v10}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v10, "effType"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v10, 0x1

    if-eq v1, v10, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    move/from16 v1, v21

    :goto_7
    const-string v10, "\u4e00\u6b21\u6027\u5bb6\u5177\u6548\u679c\u4e0d\u5e94\u6301\u4e45\u5316"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 312
    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v4, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 313
    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v9, v14, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 314
    invoke-static {v12, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v12

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V

    .line 315
    goto/16 :goto_c

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u623f\u95f4\u64cd\u4f5c\u672a\u63a5\u5165"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_12
    :goto_8
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 297
    move-object/from16 v9, v26

    invoke-static {v3, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_13

    const/4 v9, 0x1

    goto :goto_9

    :cond_13
    move/from16 v9, v21

    :goto_9
    const-string v13, "\u88c5\u9970\u6570\u636e\u7f3a\u5931"

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    move-object/from16 v26, v8

    goto :goto_a

    .line 299
    :cond_14
    const-string v13, "fd"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v13, "k"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    const/16 v17, 0x1

    xor-int/lit8 v15, v15, 0x1

    move-object/from16 v26, v8

    const-string v8, "\u5bb6\u5177\u6807\u8bc6\u7f3a\u5931"

    invoke-static {v15, v8}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 300
    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v13, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    invoke-static {v9, v14, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 302
    :goto_a
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v1, v5, v3}, Lcom/project7/localmanager/LocalHomeEngine;->validate([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 303
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 304
    invoke-static {v12, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v12

    .line 305
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v21

    const/4 v3, 0x1

    aput-object v5, v2, v3

    aput-object v6, v2, v19

    aput-object v7, v2, v18

    const/4 v4, 0x4

    aput-object v23, v2, v4

    aput-object v1, v2, v25

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_b

    .line 303
    :cond_15
    const/4 v3, 0x1

    .line 307
    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V

    .line 308
    move-object/from16 v8, v26

    .line 318
    :goto_c
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v24

    invoke-static {v2, v5, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    move-object/from16 v3, v22

    invoke-static {v8, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    move-object/from16 v3, v20

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 319
    return-void
.end method

.method private static skinCopies(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;IIJ)V
    .locals 16

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "\u914d\u9001\u65f6\u88c5\u5408\u540c\u7f3a\u5931"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 412
    move v4, v2

    :goto_1
    const-string v5, "heromgr"

    move/from16 v6, p3

    if-ge v4, v6, :cond_4

    .line 413
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v8, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v7

    const-string v8, "d"

    const/16 v9, 0x1f4

    const/4 v10, 0x2

    if-eqz v7, :cond_2

    .line 414
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v7, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v5, v7}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v5

    const-string v7, "sk"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    .line 415
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v9, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    move v9, v2

    :goto_2
    const-string v12, "\u8863\u6a71\u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v12, 0x3e8

    div-long v12, p4, v12

    move/from16 v14, p2

    invoke-static {v14, v9, v12, v13}, Lcom/project7/localmanager/LocalCommerceEngine;->purchasedSkin(ILjava/lang/String;J)[B

    move-result-object v12

    .line 417
    iget-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v15, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v11, v9, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v11

    invoke-static {v5, v7, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    invoke-static {v13, v15, v5}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v5

    iput-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 418
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "h"

    aput-object v7, v5, v2

    iget v7, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "s"

    aput-object v7, v5, v10

    const/4 v7, 0x3

    new-instance v11, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v11, v9}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v11, v5, v7

    const/4 v7, 0x4

    aput-object v8, v5, v7

    const/4 v7, 0x5

    aput-object v12, v5, v7

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    const-string v7, "syncOneSkinData"

    invoke-virtual {v0, v7, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 419
    goto :goto_4

    .line 420
    :cond_2
    move/from16 v14, p2

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    const-string v11, "ps"

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 421
    new-instance v13, Ljava/util/ArrayList;

    iget v15, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 422
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v9, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    const-string v15, "\u5f85\u9886\u53d6\u8863\u6a71\u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget v9, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v9

    invoke-static {v7, v11, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v7

    .line 424
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    iput-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v8, v5, v2

    aput-object v7, v5, v3

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    const-string v7, "syncHeroMgrPendingData"

    invoke-virtual {v0, v7, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 426
    :goto_4
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    new-array v7, v10, [Ljava/lang/Integer;

    iget v8, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->item:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 428
    :cond_4
    move/from16 v14, p2

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "es"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_5
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 431
    return-void
.end method

.method static syncOwned(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 8

    .line 345
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object v1

    .line 346
    iget-object v2, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "F:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 347
    iget-object v6, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "itemid"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 348
    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 346
    :cond_0
    goto :goto_0

    .line 350
    :cond_1
    new-array p1, v5, [Ljava/lang/Object;

    const-string v1, "d"

    aput-object v1, p1, v4

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncOwnFurniture"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 351
    return-void
.end method

.method static text([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 221
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static validate([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)[B
    .locals 19

    .line 321
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    array-length v3, v2

    const-string v4, "e"

    const/4 v6, 0x0

    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 321
    const/high16 v8, 0x40000

    if-gt v3, v8, :cond_0

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v8, 0x1f4

    if-gt v3, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    const-string v8, "\u88c5\u9970\u65b9\u6848\u8fc7\u5927"

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 322
    const-string v3, "t"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "\u88c5\u9970\u65b9\u6848\u7684\u623f\u95f4\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 323
    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object v10

    .line 324
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 325
    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    const-string v14, "id"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v6, "F"

    invoke-static {v0, v6, v15}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    .line 326
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "k"

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    :goto_2
    const-string v5, "\u5bb6\u5177\u6570\u636e\u65e0\u6548"

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 327
    const-string v5, "pos"

    const/4 v15, 0x3

    move-object/from16 p0, v11

    const/4 v11, 0x1

    invoke-static {v13, v5, v15, v11}, Lcom/project7/localmanager/LocalHomeEngine;->vector([BLjava/lang/String;IZ)V

    const-string v5, "r"

    invoke-static {v13, v5, v15, v11}, Lcom/project7/localmanager/LocalHomeEngine;->vector([BLjava/lang/String;IZ)V

    const-string v5, "np"

    const/4 v11, 0x0

    invoke-static {v13, v5, v15, v11}, Lcom/project7/localmanager/LocalHomeEngine;->vector([BLjava/lang/String;IZ)V

    .line 328
    const-string v5, "s"

    invoke-static {v13, v5}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v5

    .line 329
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isFinite(D)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_2

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    cmpg-double v5, v15, v17

    if-gtz v5, :cond_2

    goto :goto_3

    :cond_2
    move v5, v11

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v5, 0x1

    :goto_4
    const-string v15, "\u5bb6\u5177\u7f29\u653e\u65e0\u6548"

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 330
    const-string v5, "p"

    invoke-static {v13, v5}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 331
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v11, 0x1

    :goto_6
    const-string v15, "\u5bb6\u5177\u7236\u8282\u70b9\u65e0\u6548"

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 332
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move-object v15, v12

    .line 333
    :goto_7
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-interface {v11, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v17, v11

    const-string v11, "\u5bb6\u5177\u9644\u7740\u5173\u7cfb\u5faa\u73af"

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p3

    move-object/from16 v11, v17

    goto :goto_7

    .line 334
    :cond_6
    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x1

    add-int/2addr v5, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v2, "category"

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v11, "T"

    invoke-static {v0, v11, v1}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    const-string v15, "maxCount"

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 337
    if-lez v2, :cond_8

    if-gt v14, v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v11, 0x1

    :goto_9
    const-string v2, "\u6b64\u7c7b\u5bb6\u5177\u653e\u7f6e\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 339
    const-string v2, "itemid"

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v5, v2, :cond_9

    const/4 v11, 0x1

    goto :goto_a

    :cond_9
    const/4 v11, 0x0

    :goto_a
    const-string v2, "il"

    invoke-static {v13, v2, v11}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 340
    invoke-static {v3, v12, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 341
    move-object/from16 v11, p0

    move-object/from16 v2, p3

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 342
    :cond_a
    move-object/from16 v0, p3

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static vector([BLjava/lang/String;IZ)V
    .locals 4

    .line 353
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    xor-int/lit8 p0, p3, 0x1

    const-string p1, "\u5bb6\u5177\u5750\u6807\u7f3a\u5931"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void

    .line 354
    :cond_0
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    const-string v0, "\u5bb6\u5177\u5750\u6807\u65e0\u6548"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 355
    move p1, p3

    :goto_1
    if-ge p1, p2, :cond_3

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 355
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 359
    :cond_3
    return-void
.end method
