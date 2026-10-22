.class final Lcom/project7/localmanager/LocalStoryDiscussion;
.super Ljava/lang/Object;
.source "LocalStoryDiscussion.java"


# static fields
.field static final METHODS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    const-string v0, "requestStoryHttpInfo"

    const-string v1, "requestSelfStoryHttpInfo"

    const-string v2, "requestCreateStoryMsg"

    const-string v3, "requestUpdateStoryMsg"

    const-string v4, "requestCreateStoryComments"

    const-string v5, "requestLikeStoryMsg"

    const-string v6, "requestLikeStoryCmt"

    const-string v7, "reportStoryEditor"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalStoryDiscussion;->METHODS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 165
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 169
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static apply(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 31

    .line 19
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "rs"

    iget-object v6, v1, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    const-string v7, "messages"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "comments"

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v10

    .line 20
    const-string v11, "oi"

    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->work([BLjava/lang/String;)[B

    move-result-object v13

    .line 22
    const-string v14, "requestStoryHttpInfo"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "requestSelfStoryHttpInfo"

    move-object/from16 v16, v7

    const/16 v17, 0x5

    const-string v7, "owner"

    const-string v18, "i"

    move-object/from16 v19, v12

    const-string v12, "msg_id"

    move-object/from16 v20, v13

    const/16 v21, 0x0

    .line 132
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 22
    const/4 v13, 0x1

    .line 108
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 22
    if-nez v14, :cond_25

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v9, v2

    move-object v14, v10

    move-object/from16 v6, v19

    move-object v10, v1

    goto/16 :goto_2a

    .line 62
    :cond_0
    const-string v14, "request"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reply"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x7

    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 64
    :goto_0
    :try_start_0
    const-string v14, "requestCreateStoryMsg"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_14

    const-string v15, "sequence"

    move-object/from16 v25, v13

    const-string v13, "seq"

    move-object/from16 v26, v5

    const-string v5, "created_time"

    move-object/from16 v27, v9

    const-string v9, "likes"

    if-nez v14, :cond_16

    :try_start_1
    const-string v14, "requestUpdateStoryMsg"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v10, v1

    move-object/from16 v1, v25

    move-object/from16 v30, v9

    move-object v9, v2

    move-object/from16 v2, v30

    goto/16 :goto_15

    .line 89
    :cond_2
    const-string v14, "requestCreateStoryComments"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 90
    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v8, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->entry([BLjava/lang/String;)[B

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_8

    .line 92
    if-eqz v8, :cond_3

    :try_start_2
    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->work([BLjava/lang/String;)[B

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    .line 130
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v2, v0

    move-object v10, v1

    goto/16 :goto_14

    .line 92
    :cond_3
    move/from16 v8, v21

    :goto_2
    :try_start_3
    const-string v11, "\u5fc3\u5f97\u4e0d\u5b58\u5728\u6216\u5df2\u5220\u9664"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 93
    const-string v8, "cmts"

    const/16 v11, 0x4b

    invoke-static {v4, v8, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->text([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v11, 0x4e20

    if-ge v8, v11, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    move/from16 v8, v21

    :goto_3
    const-string v11, "\u672c\u5730\u56de\u590d\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 95
    nop

    .line 96
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v11, :cond_7

    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 98
    move-object/from16 p2, v8

    invoke-static {v14, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v14, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "comment"

    invoke-static {v14, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move/from16 v8, p4

    move-object/from16 v29, v9

    move-object/from16 v28, v10

    int-to-long v9, v8

    .line 99
    invoke-static {v14, v5}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v8

    int-to-long v1, v8

    sub-long v1, v9, v1

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-ltz v1, :cond_6

    invoke-static {v14, v5}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v9, v1

    const-wide/16 v1, 0xa

    cmp-long v1, v9, v1

    if-gez v1, :cond_6

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v24, v1

    goto :goto_6

    .line 98
    :cond_5
    move-object/from16 v29, v9

    move-object/from16 v28, v10

    .line 100
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v10, v28

    move-object/from16 v9, v29

    goto :goto_4

    .line 130
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    move-object/from16 v10, p0

    goto/16 :goto_13

    .line 96
    :cond_7
    move-object/from16 v29, v9

    move-object/from16 v28, v10

    const/16 v24, 0x0

    .line 101
    :goto_6
    if-nez v24, :cond_8

    .line 102
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v1

    .line 103
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const-string v8, "comment_id"

    aput-object v8, v2, v21

    const/4 v8, 0x1

    aput-object v1, v2, v8

    const/4 v8, 0x2

    aput-object v12, v2, v8

    const/4 v8, 0x3

    aput-object v3, v2, v8

    const/4 v8, 0x4

    aput-object v7, v2, v8

    move-object/from16 v9, p1

    aput-object v9, v2, v17

    const-string v7, "comment"

    const/4 v8, 0x6

    aput-object v7, v2, v8

    const/4 v7, 0x7

    aput-object v4, v2, v7

    const/16 v4, 0x8

    aput-object v5, v2, v4

    const/16 v4, 0x9

    .line 104
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0xa

    aput-object v13, v2, v4

    const/16 v4, 0xb

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "user_info"

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_2

    const/16 v4, 0xd

    move-object/from16 v10, p0

    :try_start_5
    iget-object v5, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v5, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalStoryDiscussion;->user([BLjava/lang/String;)[B

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0xe

    aput-object v29, v2, v4

    const/16 v4, 0xf

    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v5, v2, v4

    .line 103
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 105
    move-object/from16 v14, v28

    invoke-static {v14, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    move-object/from16 v5, v27

    invoke-static {v6, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 106
    iget-object v4, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v4, v15, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    move-object/from16 v24, v1

    goto :goto_7

    .line 101
    :cond_8
    move-object/from16 v10, p0

    .line 108
    :goto_7
    iget-object v1, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v26, v4, v21

    const/4 v2, 0x1

    aput-object v23, v4, v2

    const/4 v2, 0x2

    aput-object v18, v4, v2

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v12, v5, v21

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const-string v2, "cm_id"

    const/4 v3, 0x2

    aput-object v2, v5, v3

    const/4 v2, 0x3

    aput-object v24, v5, v2

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v13, v25

    :try_start_6
    invoke-virtual {v1, v13, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 109
    move-object v5, v6

    move-object v1, v13

    goto/16 :goto_22

    .line 130
    :catch_4
    move-exception v0

    goto/16 :goto_13

    :catch_5
    move-exception v0

    goto/16 :goto_13

    .line 109
    :cond_9
    move-object/from16 v29, v9

    move-object v14, v10

    move-object/from16 v13, v25

    move-object v10, v1

    move-object v9, v2

    move-object/from16 v1, v27

    const-string v2, "requestLikeStoryMsg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "requestLikeStoryCmt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_a

    .line 123
    :cond_a
    const-string v1, "reportStoryEditor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 124
    const-string v1, "reports"

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "msg"

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 125
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v8, 0x3e8

    if-ge v3, v8, :cond_b

    array-length v3, v2

    const/16 v8, 0x4000

    if-gt v3, v8, :cond_b

    const/4 v3, 0x1

    goto :goto_8

    :cond_b
    move/from16 v3, v21

    :goto_8
    const-string v8, "\u672c\u5730\u53cd\u9988\u8fc7\u591a\u6216\u5185\u5bb9\u8fc7\u5927"

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 126
    const-string v3, "reports"

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v21

    const/4 v7, 0x1

    aput-object v9, v11, v7

    const-string v7, "type"

    const/4 v9, 0x2

    aput-object v7, v11, v9

    const-string v7, "type"

    .line 127
    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v11, v7

    const-string v4, "msg"

    const/4 v7, 0x4

    aput-object v4, v11, v7

    aput-object v2, v11, v17

    const/4 v2, 0x6

    aput-object v5, v11, v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v11, v4

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 126
    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v6, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    move-object v5, v6

    move-object v1, v13

    goto/16 :goto_22

    .line 123
    :cond_c
    :goto_9
    move-object v5, v6

    move-object v1, v13

    goto/16 :goto_22

    .line 110
    :cond_d
    :goto_a
    const-string v2, "requestLikeStoryCmt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 111
    if-eqz v2, :cond_e

    const-string v3, "cmt_id"

    goto :goto_b

    :cond_e
    move-object v3, v12

    :goto_b
    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    if-eqz v2, :cond_f

    goto :goto_c

    :cond_f
    move-object v14, v8

    :goto_c
    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->entry([BLjava/lang/String;)[B

    move-result-object v4

    .line 113
    if-eqz v2, :cond_10

    if-eqz v4, :cond_10

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalStoryDiscussion;->entry([BLjava/lang/String;)[B

    move-result-object v5

    goto :goto_d

    :cond_10
    move-object v5, v4

    .line 114
    :goto_d
    if-eqz v5, :cond_11

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalStoryDiscussion;->work([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_e

    :cond_11
    move/from16 v5, v21

    :goto_e
    const-string v7, "\u5185\u5bb9\u4e0d\u5b58\u5728\u6216\u5df2\u5220\u9664"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 115
    move-object/from16 v5, v29

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 116
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x1

    .line 117
    xor-int/2addr v8, v11

    if-eqz v8, :cond_13

    .line 118
    invoke-static {v7, v9, v11}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 119
    if-eqz v2, :cond_12

    move-object v7, v1

    goto :goto_f

    :cond_12
    move-object/from16 v7, v16

    :goto_f
    invoke-static {v14, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v6, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 121
    :cond_13
    if-eqz v8, :cond_15

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_14

    const-string v12, "comment_id"

    :cond_14
    aput-object v12, v4, v21

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    goto :goto_10

    :cond_15
    const-string v1, "rsn"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v1

    .line 122
    :goto_10
    iget-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v26, v4, v21

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object v18, v4, v3

    const/4 v3, 0x3

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_9

    .line 130
    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    :goto_11
    move-object v2, v0

    move-object v5, v6

    move-object v1, v13

    goto/16 :goto_28

    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    :goto_12
    move-object v10, v1

    :goto_13
    move-object v2, v0

    :goto_14
    move-object v5, v6

    move-object/from16 v1, v25

    goto/16 :goto_28

    .line 64
    :cond_16
    move-object v10, v1

    move-object/from16 v1, v25

    move-object/from16 v30, v9

    move-object v9, v2

    move-object/from16 v2, v30

    .line 65
    :goto_15
    if-eqz v20, :cond_17

    const/4 v14, 0x1

    goto :goto_16

    :cond_17
    move/from16 v14, v21

    :goto_16
    move-object/from16 v29, v2

    :try_start_7
    const-string v2, "\u4f5c\u54c1\u4e0d\u5b58\u5728\u6216\u5df2\u5220\u9664"

    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 66
    iget-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v14, "level"

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v2

    const/16 v14, 0x1e

    if-lt v2, v14, :cond_18

    const/4 v2, 0x1

    goto :goto_17

    :cond_18
    move/from16 v2, v21

    :goto_17
    const-string v14, "\u5c0f\u5267\u573a\u5fc3\u5f97\u9700\u8981\u6307\u6325\u4f7f\u7b49\u7ea730\u7ea7"

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 67
    const-string v2, "m"

    const/16 v14, 0x15e

    invoke-static {v4, v2, v14}, Lcom/project7/localmanager/LocalStoryDiscussion;->text([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_12

    if-eqz v14, :cond_1a

    :try_start_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p3, v4

    move-object/from16 v4, v20

    check-cast v4, [B

    invoke-static {v4, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v25, v6

    move-object/from16 v6, v19

    :try_start_9
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_1b

    :cond_19
    move-object/from16 v4, p3

    move-object/from16 v19, v6

    move-object/from16 v6, v25

    goto :goto_18

    .line 130
    :catch_a
    move-exception v0

    goto :goto_19

    :catch_b
    move-exception v0

    :goto_19
    move-object v2, v0

    move-object/from16 v5, v25

    goto/16 :goto_28

    :catch_c
    move-exception v0

    goto :goto_1a

    :catch_d
    move-exception v0

    :goto_1a
    move-object v2, v0

    move-object v5, v6

    goto/16 :goto_28

    .line 68
    :cond_1a
    move-object/from16 v25, v6

    move-object/from16 v6, v19

    const/4 v4, 0x0

    .line 70
    :goto_1b
    :try_start_a
    const-string v14, "requestUpdateStoryMsg"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 71
    if-eqz v3, :cond_1c

    if-eqz v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move/from16 v14, v21

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v14, 0x1

    :goto_1d
    move-object/from16 v19, v15

    const-string v15, "\u8bf7\u5148\u53d1\u5e03\u81ea\u5df1\u7684\u5fc3\u5f97"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 72
    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalStoryDiscussion;->entry([BLjava/lang/String;)[B

    move-result-object v14
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_10

    .line 73
    if-eqz v14, :cond_1d

    if-nez v3, :cond_1d

    :try_start_b
    const-string v3, "content"

    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 74
    iget-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v26, v5, v21

    const/4 v3, 0x1

    aput-object v22, v5, v3

    const/4 v3, 0x2

    aput-object v18, v5, v3

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "rsn"

    aput-object v7, v3, v21

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    const/4 v7, 0x2

    aput-object v11, v3, v7

    invoke-static {v6}, Lcom/project7/localmanager/LocalStoryDiscussion;->uuid(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v3, v7

    const/4 v6, 0x4

    aput-object v12, v3, v6

    aput-object v4, v3, v17

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v5, v4

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 75
    return-void

    .line 77
    :cond_1d
    if-nez v14, :cond_1f

    .line 78
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1e

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1e
    move/from16 v3, v21

    :goto_1e
    const-string v4, "\u672c\u5730\u5fc3\u5f97\u6570\u91cf\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v4

    .line 81
    :cond_1f
    if-eqz v14, :cond_21

    const-string v3, "content"

    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_a

    if-nez v3, :cond_20

    goto :goto_1f

    :cond_20
    move-object/from16 v5, v25

    goto/16 :goto_21

    .line 82
    :cond_21
    :goto_1f
    const/16 v3, 0x14

    :try_start_c
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v21

    const/4 v15, 0x1

    aput-object v4, v3, v15

    const/4 v15, 0x2

    aput-object v11, v3, v15

    const/4 v15, 0x3

    aput-object v6, v3, v15

    const/4 v15, 0x4

    aput-object v7, v3, v15

    aput-object v9, v3, v17

    const-string v7, "content"

    const/4 v15, 0x6

    aput-object v7, v3, v15

    const/4 v7, 0x7

    aput-object v2, v3, v7

    const/16 v2, 0x8

    aput-object v5, v3, v2

    const/16 v2, 0x9

    .line 83
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0xa

    const-string v5, "status"

    aput-object v5, v3, v2

    const/16 v2, 0xb

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const/16 v2, 0xc

    const-string v5, "extra"

    aput-object v5, v3, v2

    const/16 v2, 0xd

    const-string v5, ""

    aput-object v5, v3, v2

    const/16 v2, 0xe

    aput-object v13, v3, v2
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_10

    move-object/from16 v7, v19

    move-object/from16 v5, v25

    :try_start_d
    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v15

    const/4 v2, 0x1

    invoke-static {v15, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v15, 0xf

    aput-object v2, v3, v15

    const/16 v2, 0x10

    const-string v15, "user_info"

    aput-object v15, v3, v2

    const/16 v2, 0x11

    iget-object v15, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v15, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 84
    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalStoryDiscussion;->user([BLjava/lang/String;)[B

    move-result-object v9

    aput-object v9, v3, v2

    const/16 v2, 0x12

    aput-object v29, v3, v2

    const/16 v2, 0x13

    if-nez v14, :cond_22

    sget-object v9, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    goto :goto_20

    :cond_22
    move-object/from16 v9, v29

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v9

    :goto_20
    aput-object v9, v3, v2

    .line 82
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 85
    invoke-static {v8, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    move-object/from16 v8, v16

    invoke-static {v5, v8, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 86
    iget-object v3, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v3, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 88
    :goto_21
    iget-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v3, 0x4

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v26, v7, v21

    const/4 v3, 0x1

    aput-object v23, v7, v3

    const/4 v3, 0x2

    aput-object v18, v7, v3

    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v11, v8, v21

    invoke-static {v6}, Lcom/project7/localmanager/LocalStoryDiscussion;->uuid(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v8, v6

    const/4 v3, 0x2

    aput-object v12, v8, v3

    const/4 v3, 0x3

    aput-object v4, v8, v3

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 89
    nop

    .line 129
    :goto_22
    iget-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    array-length v2, v2

    const/high16 v3, 0x2000000

    if-gt v2, v3, :cond_23

    const/4 v2, 0x1

    goto :goto_23

    :cond_23
    move/from16 v2, v21

    :goto_23
    const-string v3, "\u672c\u5730\u4f5c\u54c1\u5b58\u6863\u5df2\u8fbe\u4fdd\u5b58\u4e0a\u9650"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_e

    .line 134
    goto :goto_29

    .line 130
    :catch_e
    move-exception v0

    goto :goto_27

    :catch_f
    move-exception v0

    goto :goto_27

    :catch_10
    move-exception v0

    goto :goto_24

    :catch_11
    move-exception v0

    :goto_24
    move-object/from16 v5, v25

    goto :goto_27

    :catch_12
    move-exception v0

    goto :goto_25

    :catch_13
    move-exception v0

    :goto_25
    move-object v5, v6

    goto :goto_27

    :catch_14
    move-exception v0

    goto :goto_26

    :catch_15
    move-exception v0

    :goto_26
    move-object v10, v1

    move-object/from16 v26, v5

    move-object v5, v6

    move-object v1, v13

    :goto_27
    move-object v2, v0

    .line 131
    :goto_28
    iput-object v5, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    iget-object v3, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v3, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 132
    if-eqz v1, :cond_24

    iget-object v3, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v26, v4, v21

    const/4 v5, 0x1

    aput-object v22, v4, v5

    const/4 v6, 0x2

    aput-object v18, v4, v6

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "rsn"

    aput-object v8, v7, v21

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 133
    :cond_24
    iget-object v1, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "m"

    invoke-static {v3, v2}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "showMessageStr"

    invoke-virtual {v1, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 135
    :goto_29
    return-void

    .line 22
    :cond_25
    move-object v9, v2

    move-object v14, v10

    move-object/from16 v6, v19

    move-object v10, v1

    .line 23
    :goto_2a
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_2b

    :cond_26
    const-string v1, "cmd"

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v1

    .line 24
    :goto_2b
    const-string v2, "d"

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    if-eqz v20, :cond_31

    const/4 v5, 0x1

    if-lt v1, v5, :cond_31

    const/4 v5, 0x4

    if-gt v1, v5, :cond_31

    .line 27
    const/4 v5, 0x2

    if-ne v1, v5, :cond_29

    .line 28
    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalStoryDiscussion;->entry([BLjava/lang/String;)[B

    move-result-object v7

    .line 30
    if-eqz v7, :cond_28

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 31
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_27
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 32
    invoke-static {v8, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 33
    :cond_28
    goto/16 :goto_31

    .line 34
    :cond_29
    const-string v5, "target_uid"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2b

    const-string v12, "uid"

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    goto :goto_2d

    :cond_2a
    move/from16 v12, v21

    goto :goto_2e

    :cond_2b
    :goto_2d
    const/4 v12, 0x1

    .line 36
    :goto_2e
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 37
    move-object/from16 p3, v8

    invoke-static {v13, v11}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c

    move-object/from16 v8, p3

    goto :goto_2f

    .line 38
    :cond_2c
    const/4 v8, 0x1

    if-ne v1, v8, :cond_2f

    if-eqz v12, :cond_2e

    invoke-static {v13, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    move-object/from16 v16, v7

    goto :goto_30

    :cond_2d
    move-object/from16 v8, p3

    goto :goto_2f

    :cond_2e
    const-string v8, "user_info"

    invoke-static {v13, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v8

    move-object/from16 v16, v7

    const-string v7, "uid"

    invoke-static {v8, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    move-object/from16 v8, p3

    move-object/from16 v7, v16

    goto :goto_2f

    :cond_2f
    move-object/from16 v16, v7

    .line 39
    :cond_30
    :goto_30
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    move-object/from16 v8, p3

    move-object/from16 v7, v16

    goto :goto_2f

    .line 43
    :cond_31
    :goto_31
    const/4 v5, 0x3

    if-ne v1, v5, :cond_32

    const/4 v5, 0x1

    goto :goto_32

    :cond_32
    move/from16 v5, v21

    .line 44
    :goto_32
    new-instance v7, Lcom/project7/localmanager/LocalStoryDiscussion$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/project7/localmanager/LocalStoryDiscussion$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {v4, v7}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 50
    const/16 v5, 0x2710

    const-string v7, "page"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 51
    const/16 v7, 0x64

    const-string v8, "num"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_33

    const/16 v8, 0x14

    goto :goto_33

    :cond_33
    const-string v8, "num"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v8

    :goto_33
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 52
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v5, v8

    mul-int/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v4, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const/4 v12, 0x2

    if-ne v1, v12, :cond_34

    const/4 v12, 0x1

    goto :goto_35

    :cond_34
    move/from16 v12, v21

    :goto_35
    invoke-static {v7, v9, v14, v12}, Lcom/project7/localmanager/LocalStoryDiscussion;->publicRow([BLjava/lang/String;[BZ)[B

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 55
    :cond_35
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "cmd"

    aput-object v7, v5, v21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const/4 v1, 0x2

    aput-object v11, v5, v1

    invoke-static {v6}, Lcom/project7/localmanager/LocalStoryDiscussion;->uuid(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v5, v9

    const-string v7, "d"

    const/4 v9, 0x4

    aput-object v7, v5, v9

    aput-object v2, v5, v17

    const-string v2, "r"

    const/4 v7, 0x6

    aput-object v2, v5, v7

    new-array v2, v1, [Ljava/lang/Object;

    const-string v7, "data"

    aput-object v7, v2, v21

    new-array v7, v9, [Ljava/lang/Object;

    const-string v9, "data"

    aput-object v9, v7, v21

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v11, "total"

    aput-object v11, v7, v1

    .line 56
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v7, v4

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v5, v2

    .line 55
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 57
    iget-object v2, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v18, v5, v21

    aput-object v1, v5, v9

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v4, "onStoryHttpInfoReply"

    invoke-virtual {v2, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 58
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    if-eqz v6, :cond_36

    .line 59
    iget-object v1, v10, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "s"

    aput-object v3, v2, v21

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->selfCache(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "evalCode"

    invoke-virtual {v1, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 60
    :cond_36
    return-void
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static deleteWork(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    const-string v1, "messages"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    const-string v3, "comments"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 139
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 140
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-string v8, "oi"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "msg_id"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    invoke-static {p1, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 145
    return-void
.end method

.method private static entry([BLjava/lang/String;)[B
    .locals 0

    .line 175
    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 13
    sget-object v0, Lcom/project7/localmanager/LocalStoryDiscussion;->METHODS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$apply$0(Z[B[B)I
    .locals 1

    .line 45
    if-eqz p0, :cond_0

    const-string p0, "likes"

    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 46
    :goto_0
    if-nez p0, :cond_1

    const-string p0, "created_time"

    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    .line 47
    :cond_1
    if-nez p0, :cond_2

    const-string p0, "seq"

    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result p2

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    .line 48
    :cond_2
    return p0
.end method

.method private static publicRow([BLjava/lang/String;[BZ)[B
    .locals 4

    .line 147
    const-string v0, "owner"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "likes"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 148
    const-string v2, "oi"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "seq"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 149
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "liked"

    invoke-static {v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p1

    .line 150
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "like_num"

    invoke-static {p1, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 151
    nop

    .line 152
    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    const-string v1, "msg_id"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const-string p0, "comment_num"

    invoke-static {p1, p0, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static require(ZLjava/lang/String;)V
    .locals 0

    .line 182
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static s([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static selfCache(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "rows"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "import bson,base64\nfrom common.IdManager import IdManager\n_q7_id=IdManager.str2id(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')\n_q7_msgs=bson.BSON(base64.b64decode(\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')).decode()[\'rows\']\ngg.avatar.StoryEditorData.story_msg_cache.pop(_q7_id,None)\ngg.avatar.StoryEditorData.cache_commond.pop(_q7_id,None)\ngg.avatar.updateStoryUserInfo(_q7_id,_q7_msgs)\ngg.avatar.StoryEditorData.story_msg_info.pop(_q7_id,None)\nif _q7_msgs:\n    gg.avatar.StoryEditorData.story_msg_info[_q7_id]=_q7_msgs[0][\'msg_id\']\n    gg.avatar.StoryEditorData.cache_commond[_q7_id]=_q7_msgs[0]\ngg.ui._tree.proc_event(\'reply_myStoryMsg\',_children=True)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    return-object p0
.end method

.method private static text([BLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 177
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 178
    :goto_0
    const-string p2, "\u5185\u5bb9\u4e3a\u7a7a\u6216\u8d85\u8fc7\u5b57\u6570\u4e0a\u9650"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalStoryDiscussion;->require(ZLjava/lang/String;)V

    .line 180
    return-object p0
.end method

.method private static user([BLjava/lang/String;)[B
    .locals 4

    .line 156
    const-string v0, "headImage"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 157
    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    const-string v2, "[A-Za-z0-9_-]{0,128}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v1, ""

    .line 159
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "avatar"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "uid"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/project7/localmanager/LocalStoryDiscussion;->accountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x4

    const-string v3, "game_uid"

    aput-object v3, v1, v0

    const/4 v0, 0x5

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "head_skin"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    .line 161
    const-string v2, "bbs_skin"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalStoryDiscussion;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "name"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v1, v0

    .line 160
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static uuid(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;
    .locals 1

    .line 183
    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    if-nez p0, :cond_0

    const-string p0, "000000000000000000000000"

    :cond_0
    invoke-direct {v0, p0}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static work([BLjava/lang/String;)[B
    .locals 2

    .line 172
    if-eqz p1, :cond_1

    const-string v0, "works"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalStoryDiscussion;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalStoryDiscussion;->s([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 173
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
