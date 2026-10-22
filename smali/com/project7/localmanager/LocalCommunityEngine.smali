.class final Lcom/project7/localmanager/LocalCommunityEngine;
.super Ljava/lang/Object;
.source "LocalCommunityEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalCommunityEngine$Result;
    }
.end annotation


# static fields
.field static final METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    const-string v0, "queryEventOptAsk"

    const-string v1, "getSocialMsgComment"

    const-string v2, "getSocialMsgCommentFromObjectId"

    const-string v3, "getSocialMsgHotComment"

    const-string v4, "getSocialMsgHotCommentFromObjectId"

    const-string v5, "getSocialMsgRandomComment"

    const-string v6, "getSocialMsgRandomCommentFromObjectId"

    const-string v7, "addSocialMsgComment"

    const-string v8, "likeSocialMsgComment"

    const-string v9, "requestMainlineHttpInfo"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalCommunityEngine;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([B[B[BLjava/lang/String;[BI)Lcom/project7/localmanager/LocalCommunityEngine$Result;
    .locals 30

    .line 21
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-string v6, "social"

    const-string v7, "1"

    const-string v9, "e"

    const-string v10, "m"

    const-string v11, "showMessageStr"

    const-string v12, "sm"

    const-string v13, "sd"

    const-string v14, "cmd"

    const-string v15, "id"

    new-instance v5, Lcom/project7/localmanager/LocalCommunityEngine$Result;

    invoke-direct {v5, v1, v8}, Lcom/project7/localmanager/LocalCommunityEngine$Result;-><init>([B[B)V

    .line 23
    move-object/from16 v16, v6

    :try_start_0
    const-string v6, "requestMainlineHttpInfo"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_31
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_30

    const-string v8, "d"

    move-object/from16 v20, v12

    const/4 v12, 0x4

    if-eqz v6, :cond_4

    .line 24
    :try_start_1
    invoke-static {v4, v14}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 25
    const/4 v6, 0x1

    if-lt v2, v6, :cond_3

    if-gt v2, v12, :cond_3

    .line 26
    const-string v6, "mainline"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2e

    const-string v7, "i"

    const-string v9, "rs"

    const-string v13, "mainlineHttpInfoReply"

    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 27
    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-ne v15, v2, :cond_1

    const-string v15, "request"

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    move-object/from16 p1, v3

    const/4 v3, 0x1

    invoke-static {v15, v12, v3}, Lcom/project7/localmanager/LocalCommunityEngine;->sameQuery([B[BZ)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v3, p1

    goto :goto_2

    .line 28
    :cond_0
    const/16 v12, 0x8

    new-array v3, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v14, v3, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v12, 0x1

    aput-object v2, v3, v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2e

    const/4 v2, 0x2

    :try_start_3
    aput-object v8, v3, v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    const-string v2, "response"

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v3, v6

    const-string v2, "ud"

    const/4 v6, 0x4

    aput-object v2, v3, v6

    const/4 v2, 0x5

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    aput-object v6, v3, v2

    const/4 v2, 0x6

    const-string v6, "ed"

    aput-object v6, v3, v2

    const/4 v2, 0x7

    const-string v6, "ed"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 29
    iget-object v3, v5, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_2e

    const/4 v6, 0x2

    :try_start_5
    aput-object v7, v4, v6
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v6, 0x3

    :try_start_6
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v3, v13, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 30
    return-object v5

    .line 115
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object/from16 v15, p2

    move-object v8, v1

    move v14, v6

    goto :goto_5

    .line 27
    :cond_1
    move-object/from16 p1, v3

    const/16 v12, 0x8

    :goto_2
    const/4 v12, 0x4

    goto/16 :goto_0

    .line 32
    :cond_2
    iget-object v2, v5, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v4, 0x1

    aput-object v6, v3, v4
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_2e

    const/4 v4, 0x2

    :try_start_7
    aput-object v7, v3, v4
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v6, 0x3

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 33
    iget-object v2, v5, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_2e

    const/4 v3, 0x2

    :try_start_9
    new-array v4, v3, [Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v3, 0x0

    :try_start_a
    aput-object v10, v4, v3

    const-string v3, "\u6682\u65e0\u672c\u5730\u7f13\u5b58\u7684\u5267\u60c5\u8bc4\u8bba"

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 34
    return-object v5

    .line 115
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move-object/from16 v15, p2

    move-object v8, v1

    move v14, v3

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v15, p2

    move-object v8, v1

    move v14, v4

    :goto_5
    move-object/from16 v22, v10

    move-object/from16 v21, v11

    goto/16 :goto_2d

    .line 25
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u672a\u77e5\u5267\u60c5\u8bc4\u8bba\u67e5\u8be2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_4
    const/16 v12, 0x8

    const-string v6, "queryEventOptAsk"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 37
    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 38
    const-string v4, "options"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    .line 39
    nop

    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v14, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_5

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v6

    int-to-long v12, v6

    add-long/2addr v14, v12

    goto :goto_6

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid cached choice counts"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_6
    iget-object v4, v5, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v6, "queryEventOptReply"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v7, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v7, v9
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_2e

    const/4 v2, 0x2

    :try_start_b
    aput-object v8, v7, v2
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_6

    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-lez v2, :cond_7

    goto :goto_7

    :cond_7
    :try_start_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_7
    const/4 v2, 0x3

    aput-object v3, v7, v2

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 43
    return-object v5

    .line 115
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_8
    move-object/from16 v15, p2

    move-object v8, v1

    move v14, v2

    goto/16 :goto_5

    .line 45
    :cond_8
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalCommunityEngine;->handles(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 46
    invoke-static {v4, v15}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v6

    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    move-object/from16 v9, v20

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v12

    .line 49
    if-lez v6, :cond_25

    if-eqz v12, :cond_25

    .line 50
    move-object/from16 v20, v5

    const-string v5, "addSocialMsgComment"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2f
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_2e

    move-object/from16 v21, v11

    const-string v11, ""

    move-object/from16 v22, v10

    const-string v10, "c"

    if-eqz v5, :cond_12

    .line 51
    :try_start_d
    const-string v2, "cm"

    invoke-static {v4, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_11

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_1c

    if-gez v5, :cond_10

    .line 54
    move-object/from16 v5, p2

    move-object/from16 v4, v16

    const/16 v16, 0x8

    :try_start_e
    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 55
    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v19

    move-object/from16 v23, v10

    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v10

    .line 56
    move/from16 v19, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v24, v15

    const/16 v15, 0x3e8

    if-ge v6, v15, :cond_f

    .line 57
    const-string v6, "account"

    invoke-static {v1, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    if-eqz v6, :cond_e

    .line 59
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    invoke-static {v15}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p3, v6

    const-string v6, "-"

    invoke-virtual {v15, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/16 v15, 0x18

    move-object/from16 v25, v13

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 60
    const-string v13, "sends"

    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    .line 61
    const-string v15, "ct"

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v15

    move-object/from16 v26, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v9

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_18

    .line 62
    if-lez v8, :cond_a

    move/from16 v15, p5

    move-object/from16 p4, v13

    move-object/from16 v9, v20

    move-object/from16 v20, v12

    int-to-long v12, v15

    move-object/from16 v28, v14

    int-to-long v14, v8

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x78

    cmp-long v8, v12, v14

    if-ltz v8, :cond_9

    goto :goto_a

    :cond_9
    :try_start_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8bf7\u7a0d\u540e\u518d\u53d1\u9001\u7559\u8a00"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_8

    .line 115
    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    move-object v8, v1

    move-object v15, v5

    goto/16 :goto_2a

    .line 62
    :cond_a
    move-object/from16 p4, v13

    move-object/from16 v28, v14

    move-object/from16 v9, v20

    move-object/from16 v20, v12

    .line 63
    :goto_a
    :try_start_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "%08x"
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_18

    const/4 v14, 0x1

    :try_start_11
    new-array v15, v14, [Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_16

    :try_start_12
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v18, 0x0

    aput-object v14, v15, v18

    invoke-static {v12, v13, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 64
    const-string v12, "name"

    invoke-static {v1, v12}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 65
    const-string v13, "headImage"

    invoke-static {v1, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v13
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_18

    .line 66
    if-nez v13, :cond_b

    const/4 v13, 0x3

    :try_start_13
    new-array v14, v13, [Ljava/io/Serializable;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v14, v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v13
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_8

    const/4 v13, 0x2

    :try_start_14
    aput-object v11, v14, v13
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_a

    :try_start_15
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_c

    .line 115
    :catch_a
    move-exception v0

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    move-object v8, v1

    move-object v15, v5

    move v14, v13

    goto/16 :goto_2d

    .line 66
    :cond_b
    :try_start_16
    new-instance v11, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v11, v13}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    .line 67
    :goto_c
    const/16 v13, 0x16

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "_id"
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_18

    const/4 v15, 0x0

    :try_start_17
    aput-object v14, v13, v15
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_17} :catch_14

    :try_start_18
    new-instance v14, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v14, v8}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v14, v13, v8

    const-string v8, "uid"
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_18 .. :try_end_18} :catch_18

    const/4 v14, 0x2

    :try_start_19
    aput-object v8, v13, v14
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_19} :catch_12

    const/4 v8, 0x3

    :try_start_1a
    aput-object v6, v13, v8

    const-string v8, "uuid"

    const/4 v14, 0x4

    aput-object v8, v13, v14

    const/4 v8, 0x5

    aput-object v6, v13, v8

    const/4 v8, 0x6

    const-string v14, "name"

    aput-object v14, v13, v8

    const/4 v8, 0x7

    .line 68
    if-nez v12, :cond_c

    move-object/from16 v12, p3

    :cond_c
    aput-object v12, v13, v8

    const-string v8, "comment"

    aput-object v8, v13, v16

    const/16 v8, 0x9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v8

    const/16 v2, 0xa

    const-string v8, "like"

    aput-object v8, v13, v2

    const/16 v2, 0xb

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v2

    const/16 v2, 0xc

    const-string v8, "icon"

    aput-object v8, v13, v2

    const/16 v2, 0xd

    aput-object v11, v13, v2

    const/16 v2, 0xe

    const-string v8, "headImage"

    aput-object v8, v13, v2

    const/16 v2, 0xf

    aput-object v11, v13, v2

    const/16 v2, 0x10

    const-string v8, "icon_style"

    aput-object v8, v13, v2

    const/16 v2, 0x11

    const-string v8, "player"

    aput-object v8, v13, v2

    const/16 v2, 0x12

    const-string v8, "icon_num"

    aput-object v8, v13, v2

    const/16 v2, 0x13

    .line 69
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v2

    const/16 v2, 0x14

    const-string v8, "bk"

    aput-object v8, v13, v2

    const/16 v2, 0x15

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v2

    .line 67
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 70
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v3, v7, v10}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    .line 72
    iget-object v2, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    const-string v3, "sends"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, p4

    move/from16 v6, p5

    invoke-static {v8, v4, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    .line 73
    iget-object v2, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    array-length v2, v2

    const/high16 v3, 0x800000

    if-gt v2, v3, :cond_d

    .line 74
    const-string v2, "ct"

    move-object/from16 v3, v20

    invoke-static {v3, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 75
    iget-object v3, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v6, v28

    invoke-static {v6, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    move-object/from16 v8, v26

    move-object/from16 v10, v27

    invoke-static {v8, v10, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    move-object/from16 v12, v25

    invoke-static {v1, v12, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 76
    iget-object v3, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v4, "syncOneSocialMsg"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v24, v8, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v8, v10
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_1a} :catch_18

    const/4 v6, 0x2

    :try_start_1b
    aput-object v23, v8, v6
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_1b} :catch_10

    const/4 v6, 0x3

    :try_start_1c
    aput-object v2, v8, v6

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 77
    iget-object v8, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v10, "getSocialMsgCommentReply"

    const/4 v2, 0x4

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v24, v11, v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_1c .. :try_end_1c} :catch_18

    const/4 v12, 0x1

    :try_start_1d
    aput-object v2, v11, v12

    const-string v2, "cms"
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_1d} :catch_e

    const/4 v13, 0x2

    :try_start_1e
    aput-object v2, v11, v13

    iget-object v2, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_1e .. :try_end_1e} :catch_c

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object v4, v7

    move-object v7, v5

    move-object v5, v14

    move v14, v6

    move/from16 v29, v13

    move v13, v12

    move/from16 v12, v29

    move v6, v15

    move-object v15, v7

    move/from16 v7, v16

    :try_start_1f
    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCommunityEngine;->page([B[BLjava/lang/String;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v11, v3

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v8, v10, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 78
    return-object v9

    .line 115
    :catch_c
    move-exception v0

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    move-object v15, v5

    move/from16 v29, v13

    move v13, v12

    move/from16 v12, v29

    goto/16 :goto_15

    :catch_e
    move-exception v0

    goto :goto_e

    :catch_f
    move-exception v0

    :goto_e
    move-object v15, v5

    move v13, v12

    goto/16 :goto_28

    :catch_10
    move-exception v0

    goto :goto_f

    :catch_11
    move-exception v0

    :goto_f
    move-object v15, v5

    move-object v8, v1

    move v14, v6

    goto/16 :goto_2d

    .line 73
    :cond_d
    move-object v15, v5

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u672c\u5730\u8bba\u575b\u5b58\u6863\u5df2\u8fbe\u4fdd\u5b58\u4e0a\u9650"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :catch_12
    move-exception v0

    goto :goto_10

    :catch_13
    move-exception v0

    :goto_10
    move-object v15, v5

    goto/16 :goto_2c

    :catch_14
    move-exception v0

    goto :goto_11

    :catch_15
    move-exception v0

    :goto_11
    move v14, v15

    goto :goto_13

    :catch_16
    move-exception v0

    goto :goto_12

    :catch_17
    move-exception v0

    :goto_12
    move-object v15, v5

    move v13, v14

    goto/16 :goto_28

    .line 58
    :cond_e
    move-object v15, v5

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8d26\u53f7\u8d44\u6599\u4e0d\u5b8c\u6574"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_f
    move-object v15, v5

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u672c\u5730\u5e16\u5b50\u7559\u8a00\u5df2\u8fbe\u4fdd\u5b58\u4e0a\u9650"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :catch_18
    move-exception v0

    goto :goto_13

    :catch_19
    move-exception v0

    :goto_13
    move-object v15, v5

    goto/16 :goto_28

    .line 53
    :cond_10
    move-object/from16 v15, p2

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_14

    .line 52
    :cond_11
    move-object/from16 v15, p2

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 53
    :goto_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u7559\u8a00\u5185\u5bb9\u4e3a\u7a7a\u6216\u8fc7\u957f"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_1f} :catch_1a

    .line 115
    :catch_1a
    move-exception v0

    goto :goto_15

    :catch_1b
    move-exception v0

    :goto_15
    move-object v8, v1

    move v14, v12

    goto/16 :goto_2d

    :catch_1c
    move-exception v0

    goto :goto_16

    :catch_1d
    move-exception v0

    :goto_16
    move-object/from16 v15, p2

    goto/16 :goto_28

    .line 80
    :cond_12
    move/from16 v19, v6

    move-object/from16 v23, v10

    move-object v3, v12

    move-object v12, v13

    move-object v6, v14

    move-object/from16 v24, v15

    const/4 v5, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v15, p2

    move-object v10, v9

    move-object/from16 v9, v20

    :try_start_20
    const-string v5, "likeSocialMsgComment"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_2b
    .catch Ljava/lang/ArithmeticException; {:try_start_20 .. :try_end_20} :catch_2a

    if-eqz v5, :cond_1b

    .line 81
    move-object/from16 v5, v23

    :try_start_21
    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    nop

    .line 83
    move-object/from16 v4, p1

    invoke-static {v15, v4, v7}, Lcom/project7/localmanager/LocalCommunityEngine;->comments([B[BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v16, v14

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_21 .. :try_end_21} :catch_20

    if-eqz v17, :cond_14

    :try_start_22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, [B

    const-string v13, "_id"

    invoke-static {v14, v13}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_2b
    .catch Ljava/lang/ArithmeticException; {:try_start_22 .. :try_end_22} :catch_2a

    if-eqz v13, :cond_13

    const/16 v16, 0x1

    :cond_13
    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_17

    .line 84
    :cond_14
    if-eqz v2, :cond_1a

    if-eqz v16, :cond_1a

    .line 85
    :try_start_23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    nop

    .line 87
    const-string v13, "l"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    .line 88
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    :goto_18
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_23 .. :try_end_23} :catch_20

    if-eqz v20, :cond_16

    :try_start_24
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p1, v14

    move-object/from16 v14, v20

    check-cast v14, Ljava/lang/String;

    .line 89
    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 90
    if-eqz v14, :cond_15

    move-object/from16 p3, v13

    new-instance v13, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v13, v14}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_2b
    .catch Ljava/lang/ArithmeticException; {:try_start_24 .. :try_end_24} :catch_2a

    or-int v13, v16, v13

    move/from16 v16, v13

    goto :goto_19

    :cond_15
    move-object/from16 p3, v13

    .line 91
    :goto_19
    move-object/from16 v14, p1

    move-object/from16 v13, p3

    goto :goto_18

    .line 92
    :cond_16
    if-nez v16, :cond_19

    .line 93
    :try_start_25
    new-instance v13, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v13, v2}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v13, "account"

    invoke-static {v1, v13}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 95
    if-eqz v13, :cond_18

    .line 96
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-static {v13}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 97
    const-string v13, "voters"

    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13, v2}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    .line 98
    move-object/from16 v23, v5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_25 .. :try_end_25} :catch_20

    :try_start_26
    invoke-static {v14, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 99
    const-string v1, "likes"

    invoke-static {v15, v1}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 100
    const-string v5, "likes"

    move-object/from16 v25, v12

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v12

    move-object/from16 v26, v8

    const/4 v8, 0x1

    invoke-static {v12, v8}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    invoke-static {v1, v2, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v15, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    .line 101
    iget-object v1, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    const-string v5, "voters"

    const/4 v8, 0x1

    invoke-static {v14, v11, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v11

    invoke-static {v13, v2, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    goto :goto_1a

    .line 98
    :cond_17
    move-object/from16 v26, v8

    move-object/from16 v25, v12

    .line 103
    :goto_1a
    const-string v1, "l"

    invoke-static {v3, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 104
    iget-object v2, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-static {v6, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    move-object/from16 v4, v26

    invoke-static {v4, v10, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_26 .. :try_end_26} :catch_1e

    move-object/from16 v8, p0

    move-object/from16 v4, v25

    :try_start_27
    invoke-static {v8, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 105
    iget-object v2, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v3, "syncOneSocialMsg"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_27 .. :try_end_27} :catch_22

    const/4 v5, 0x2

    :try_start_28
    aput-object v23, v4, v5
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_28 .. :try_end_28} :catch_24

    const/4 v5, 0x3

    :try_start_29
    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_1c

    .line 115
    :catch_1e
    move-exception v0

    goto :goto_1b

    :catch_1f
    move-exception v0

    :goto_1b
    move-object/from16 v8, p0

    goto :goto_1e

    .line 95
    :cond_18
    move-object v8, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8d26\u53f7\u8d44\u6599\u4e0d\u5b8c\u6574"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_19
    :goto_1c
    return-object v9

    .line 84
    :cond_1a
    move-object v8, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u7559\u8a00\u4e0d\u5b58\u5728"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_29 .. :try_end_29} :catch_22

    .line 115
    :catch_20
    move-exception v0

    goto :goto_1d

    :catch_21
    move-exception v0

    :goto_1d
    move-object v8, v1

    :goto_1e
    move-object v1, v0

    const/4 v14, 0x2

    goto/16 :goto_2e

    .line 109
    :cond_1b
    move-object v8, v1

    :try_start_2a
    const-string v1, "Hot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v1, "Random"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "FromObjectId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_2a .. :try_end_2a} :catch_28

    .line 110
    if-eqz v6, :cond_1d

    if-eqz v2, :cond_1c

    :try_start_2b
    const-string v3, "getSocialMsgMoreHotCommentReply"

    goto :goto_1f

    :cond_1c
    const-string v3, "getSocialMsgHotCommentReply"

    :goto_1f
    move-object v10, v3

    goto :goto_22

    .line 115
    :catch_22
    move-exception v0

    goto :goto_1e

    :catch_23
    move-exception v0

    goto :goto_1e

    .line 111
    :cond_1d
    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1e

    const-string v3, "getSocialMsgMoreRandomCommentReply"

    goto :goto_20

    :cond_1e
    const-string v3, "getSocialMsgRandomCommentReply"

    :goto_20
    move-object v10, v3

    goto :goto_22

    .line 112
    :cond_1f
    if-eqz v2, :cond_20

    const-string v3, "getSocialMsgMoreCommentReply"
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_2b .. :try_end_2b} :catch_22

    goto :goto_21

    :cond_20
    :try_start_2c
    const-string v3, "getSocialMsgCommentReply"

    :goto_21
    move-object v10, v3

    .line 113
    :goto_22
    iget-object v11, v9, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v3, 0x4

    new-array v12, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v24, v12, v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v12, v5
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_2c} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_2c .. :try_end_2c} :catch_28

    if-eqz v6, :cond_21

    :try_start_2d
    const-string v3, "hcms"

    goto :goto_23

    :cond_21
    if-eqz v1, :cond_22

    const-string v3, "rcms"
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_2d} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_2d .. :try_end_2d} :catch_22

    goto :goto_23

    :cond_22
    :try_start_2e
    const-string v3, "cms"
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_2e} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_2e .. :try_end_2e} :catch_28

    :goto_23
    const/4 v5, 0x2

    :try_start_2f
    aput-object v3, v12, v5
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_2f} :catch_27
    .catch Ljava/lang/ArithmeticException; {:try_start_2f .. :try_end_2f} :catch_26

    .line 114
    if-eqz v2, :cond_23

    if-nez v1, :cond_23

    :try_start_30
    const-string v3, "oid"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 115
    :catch_24
    move-exception v0

    goto :goto_24

    :catch_25
    move-exception v0

    :goto_24
    move-object v1, v0

    move v14, v5

    goto/16 :goto_2e

    .line 114
    :cond_23
    const/4 v3, 0x0

    :goto_25
    move-object v13, v3

    if-eqz v1, :cond_24

    if-eqz v2, :cond_24

    move-object/from16 v1, v23

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v1
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_30} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_30 .. :try_end_30} :catch_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    :goto_26
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v7

    move v14, v5

    move-object v5, v13

    move v7, v1

    :try_start_31
    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCommunityEngine;->page([B[BLjava/lang/String;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v12, v2

    .line 113
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v11, v10, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 118
    move-object v5, v9

    goto/16 :goto_2f

    .line 115
    :catch_26
    move-exception v0

    goto :goto_27

    :catch_27
    move-exception v0

    :goto_27
    move v14, v5

    goto :goto_2d

    :catch_28
    move-exception v0

    goto :goto_2a

    :catch_29
    move-exception v0

    goto :goto_2a

    :catch_2a
    move-exception v0

    goto :goto_28

    :catch_2b
    move-exception v0

    :goto_28
    move-object v8, v1

    goto :goto_2a

    .line 49
    :cond_25
    move-object/from16 v15, p2

    move-object v8, v1

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    const/4 v14, 0x2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bba\u575b\u5e16\u5b50\u5c1a\u672a\u5f00\u653e"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_26
    move-object/from16 v15, p2

    move-object v8, v1

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    const/4 v14, 0x2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u672a\u77e5\u672c\u5730\u8bba\u575b\u8bf7\u6c42"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_31} :catch_2d
    .catch Ljava/lang/ArithmeticException; {:try_start_31 .. :try_end_31} :catch_2c

    .line 115
    :catch_2c
    move-exception v0

    goto :goto_2d

    :catch_2d
    move-exception v0

    goto :goto_2d

    :catch_2e
    move-exception v0

    goto :goto_29

    :catch_2f
    move-exception v0

    :goto_29
    move-object/from16 v15, p2

    move-object v8, v1

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    :goto_2a
    const/4 v14, 0x2

    goto :goto_2d

    :catch_30
    move-exception v0

    goto :goto_2b

    :catch_31
    move-exception v0

    :goto_2b
    move-object v15, v8

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    const/4 v14, 0x2

    :goto_2c
    move-object v8, v1

    :goto_2d
    move-object v1, v0

    .line 116
    :goto_2e
    new-instance v5, Lcom/project7/localmanager/LocalCommunityEngine$Result;

    invoke-direct {v5, v8, v15}, Lcom/project7/localmanager/LocalCommunityEngine$Result;-><init>([B[B)V

    .line 117
    iget-object v2, v5, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    new-array v3, v14, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v3, v21

    invoke-virtual {v2, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 119
    :goto_2f
    return-object v5
.end method

.method private static comments([B[BLjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "social"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 139
    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_1

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "like"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v2

    const-string v4, "likes"

    invoke-static {p0, v4}, Lcom/project7/localmanager/LocalCommunityEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    .line 143
    invoke-static {v1, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_3
    return-object p1
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 11
    sget-object v0, Lcom/project7/localmanager/LocalCommunityEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$page$0(Z[B[B)I
    .locals 1

    .line 151
    if-eqz p0, :cond_0

    const-string p0, "like"

    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalCommunityEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 152
    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "_id"

    invoke-static {p2, p0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static page([B[BLjava/lang/String;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 149
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalCommunityEngine;->comments([B[BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 150
    new-instance p1, Lcom/project7/localmanager/LocalCommunityEngine$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/project7/localmanager/LocalCommunityEngine$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 155
    if-eqz p3, :cond_1

    .line 156
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 157
    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    const-string p5, "_id"

    invoke-static {p4, p5}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p1, p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 159
    :cond_1
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p4, p1, 0x14

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {p0, p1, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method private static sameQuery([B[BZ)Z
    .locals 8

    .line 123
    if-eqz p2, :cond_0

    const-string p2, "uid"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object p1

    .line 124
    :cond_0
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 126
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {p1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 128
    if-nez v3, :cond_7

    if-eqz v4, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    nop

    .line 130
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v5

    goto :goto_1

    .line 131
    :cond_5
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 132
    :cond_6
    goto :goto_0

    .line 128
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/LocalCommunityEngine;->sameQuery([B[BZ)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_8
    return v1

    .line 133
    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
