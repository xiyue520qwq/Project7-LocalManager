.class final Lcom/project7/localmanager/LocalMailEngine;
.super Ljava/lang/Object;
.source "LocalMailEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 28

    .line 63
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "id"

    const-string v3, "mails"

    const-string v4, "m"

    const-string v5, "mailbox"

    new-instance v12, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 64
    const-string v6, "Batch"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v13, "Batch2"

    const/4 v15, 0x1

    .line 82
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 64
    if-nez v6, :cond_1

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v17, v15

    .line 65
    :goto_1
    const-string v6, "fetchAttachment"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    .line 66
    const-string v11, "u"

    move-object/from16 v6, p3

    invoke-static {v6, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 67
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    nop

    .line 70
    :try_start_0
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    const/4 v6, 0x0

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x3

    const-string v21, "r"

    if-eqz v7, :cond_9

    :try_start_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 71
    invoke-static {v7, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 72
    if-nez v17, :cond_3

    if-eqz v10, :cond_2

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    :cond_2
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v15, 0x1

    goto :goto_2

    .line 73
    :cond_3
    nop

    .line 74
    const-string v6, "delMailRep"

    if-eqz v18, :cond_6

    .line 75
    :try_start_2
    const-string v8, "q7Attachments"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    .line 76
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 77
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-string v8, "kind"

    .line 78
    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v24

    const-string v14, "quantity"

    .line 79
    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    move-object/from16 v25, v2

    const-string v2, "quality"

    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 77
    move-object v7, v6

    move-object v6, v12

    move-object v1, v7

    move-object/from16 v7, p1

    move-object/from16 v26, v13

    const/4 v13, 0x4

    move-object/from16 v27, v9

    move/from16 v9, v24

    move-object/from16 v22, v10

    move v10, v14

    move-object v14, v11

    move v11, v2

    invoke-static/range {v6 .. v11}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object v6, v1

    move-object v11, v14

    move-object/from16 v10, v22

    move-object/from16 v2, v25

    move-object/from16 v13, v26

    move-object/from16 v9, v27

    move-object/from16 v1, p0

    goto :goto_3

    .line 80
    :cond_4
    move-object/from16 v25, v2

    move-object v1, v6

    move-object/from16 v27, v9

    move-object/from16 v22, v10

    move-object v14, v11

    move-object/from16 v26, v13

    const/4 v13, 0x4

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v2, v6

    new-instance v6, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v6, v15}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const/4 v6, 0x2

    aput-object v21, v2, v6

    aput-object v16, v2, v20

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 81
    move-object/from16 v1, v27

    goto :goto_4

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u90ae\u4ef6\u9644\u4ef6\u7c7b\u578b\u5c1a\u4e0d\u652f\u6301\u9886\u53d6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_6
    move-object/from16 v25, v2

    move-object v1, v6

    move-object/from16 v27, v9

    move-object/from16 v22, v10

    move-object v14, v11

    move-object/from16 v26, v13

    const/4 v13, 0x4

    const-string v2, "delMail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 82
    new-array v2, v13, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v2, v6

    new-instance v6, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v6, v15}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const/4 v6, 0x2

    aput-object v21, v2, v6

    aput-object v16, v2, v20

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    move-object/from16 v1, v27

    goto :goto_4

    .line 84
    :cond_7
    const-string v1, "readMail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "rd"

    const/4 v2, 0x1

    invoke-static {v7, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v7

    .line 85
    :cond_8
    move-object/from16 v1, v27

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v2, "updateMailRep"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    invoke-virtual {v12, v2, v6}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 88
    :goto_4
    const/4 v6, 0x1

    const/4 v15, 0x1

    move-object v9, v1

    move-object v11, v14

    move-object/from16 v10, v22

    move-object/from16 v2, v25

    move-object/from16 v13, v26

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 89
    :cond_9
    move-object v1, v9

    move-object/from16 v26, v13

    const/4 v13, 0x4

    if-nez v6, :cond_a

    return-object v12

    .line 90
    :cond_a
    iget-object v2, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v6, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 91
    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 90
    invoke-static {v6, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v2, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 92
    if-eqz v18, :cond_e

    .line 93
    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 94
    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "s"

    if-eqz v0, :cond_b

    :try_start_3
    const-string v0, "fetchAttachmentBatchRep2"

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v21, v2, v1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v20

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_7

    .line 95
    :cond_b
    if-eqz v17, :cond_c

    const-string v0, "fetchAttachmentBatchRep"

    goto :goto_5

    :cond_c
    const-string v0, "fetchAttachmentRep"

    :goto_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v17, :cond_d

    goto :goto_6

    :cond_d
    const-string v1, "a"

    :goto_6
    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    .line 100
    :cond_e
    :goto_7
    goto :goto_9

    .line 97
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    .line 98
    :goto_8
    new-instance v12, Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v1, p0

    invoke-direct {v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v12, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 101
    :goto_9
    return-object v12
.end method

.method static enqueue([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[B
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/project7/localmanager/LocalResourceCatalog;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 26
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x50

    if-gt v2, v3, :cond_7

    if-eqz p3, :cond_7

    .line 27
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-gt v2, v3, :cond_7

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_7

    .line 29
    const-string v2, "mailbox"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "mails"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x64

    if-ge v6, v7, :cond_6

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "id"

    aput-object v7, v3, v6

    new-instance v8, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    aput-object v8, v3, v9

    const-string v8, "sa"

    const/4 v10, 0x2

    aput-object v8, v3, v10

    sget-object v8, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v11, 0x3

    aput-object v8, v3, v11

    const-string v8, "sn"

    const/4 v12, 0x4

    aput-object v8, v3, v12

    const-string v8, "\u672c\u5730\u7cfb\u7edf"

    const/4 v13, 0x5

    aput-object v8, v3, v13

    const-string v8, "tp"

    const/4 v14, 0x6

    aput-object v8, v3, v14

    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x7

    aput-object v8, v3, v15

    const-string v8, "tt"

    const/16 v15, 0x8

    aput-object v8, v3, v15

    const/16 v8, 0x9

    aput-object p2, v3, v8

    const/16 v8, 0xa

    const-string v16, "ct"

    aput-object v16, v3, v8

    const/16 v8, 0xb

    aput-object p3, v3, v8

    const/16 v8, 0xc

    const-string v16, "st"

    aput-object v16, v3, v8

    const/16 v8, 0xd

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v13, v16, v18

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v8

    const/16 v8, 0xe

    const-string v13, "et"

    aput-object v13, v3, v8

    const/16 v8, 0xf

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v8

    const/16 v8, 0x10

    const-string v13, "rd"

    aput-object v13, v3, v8

    const/16 v8, 0x11

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v3, v8

    const/16 v8, 0x12

    const-string v13, "q7Attachments"

    aput-object v13, v3, v8

    const/16 v8, 0x13

    aput-object p4, v3, v8

    .line 31
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, [B

    .line 39
    const-string v11, "kind"

    invoke-static {v12, v11}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 40
    invoke-static {v12, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v15

    const-string v9, "quantity"

    invoke-static {v12, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    .line 41
    const-string v6, "quality"

    invoke-static {v12, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    .line 42
    invoke-static {v1, v11, v15, v9, v6}, Lcom/project7/localmanager/LocalResourceEngine;->validate(Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 43
    sget-object v12, Lcom/project7/localmanager/LocalResourceEngine;->COINS:[Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 44
    if-ltz v12, :cond_0

    sget-object v6, Lcom/project7/localmanager/LocalResourceEngine;->MAIL_COINS:[Ljava/lang/String;

    aget-object v6, v6, v12

    sget-object v11, Lcom/project7/localmanager/LocalResourceEngine;->MAIL_COINS:[Ljava/lang/String;

    aget-object v11, v11, v12

    .line 45
    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11, v9}, Ljava/lang/Math;->addExact(II)I

    move-result v9

    .line 44
    invoke-static {v3, v6, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    move-object/from16 v24, v7

    move/from16 v19, v10

    const/4 v7, 0x7

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x0

    goto/16 :goto_2

    .line 46
    :cond_0
    const-string v12, "hero"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v7

    move/from16 v19, v10

    const/4 v7, 0x7

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x0

    goto/16 :goto_2

    .line 47
    :cond_1
    const-string v12, "skin"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-array v6, v10, [Ljava/lang/Integer;

    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    iget v11, v11, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->item:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v6, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v6, v11

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v7

    move/from16 v19, v10

    const/4 v7, 0x7

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x0

    goto/16 :goto_2

    .line 48
    :cond_2
    const-string v12, "item"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-array v6, v10, [Ljava/lang/Integer;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v6, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v6, v11

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v7

    move/from16 v19, v10

    const/4 v7, 0x7

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x0

    goto/16 :goto_2

    .line 49
    :cond_3
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_4

    const/16 v11, 0x8

    new-array v10, v11, [Ljava/lang/Object;

    const-string v23, "u"

    const/16 v22, 0x0

    aput-object v23, v10, v22

    new-instance v11, Lcom/project7/localmanager/BsonLite$UuidValue;

    .line 50
    move-object/from16 v24, v7

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v11, v10, v7

    const-string v11, "i"

    const/16 v19, 0x2

    aput-object v11, v10, v19

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x3

    aput-object v11, v10, v17

    const-string v11, "w"

    const/16 v18, 0x4

    aput-object v11, v10, v18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v20, 0x5

    aput-object v11, v10, v20

    const-string v11, "tr"

    const/16 v21, 0x6

    aput-object v11, v10, v21

    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->data()[B

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v10, v7

    .line 49
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v10, v19

    move-object/from16 v7, v24

    goto :goto_1

    :cond_4
    move-object/from16 v24, v7

    move/from16 v19, v10

    const/4 v7, 0x7

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 52
    :goto_2
    move-object/from16 v1, p1

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v10, v19

    move/from16 v6, v22

    move-object/from16 v7, v24

    const/4 v9, 0x1

    const/16 v15, 0x8

    goto/16 :goto_0

    .line 53
    :cond_5
    const-string v1, "hr"

    invoke-static {v3, v1, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 54
    const-string v3, "at"

    invoke-static {v1, v3, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 55
    const-string v3, "it"

    invoke-static {v1, v3, v14}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 56
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    nop

    .line 58
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 57
    invoke-static {v1, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 30
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u90ae\u7bb1\u5df2\u6ee1\uff0c\u8bf7\u5148\u9886\u53d6\u6216\u5220\u9664\u90ae\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u90ae\u4ef6\u6807\u9898\u3001\u5185\u5bb9\u6216\u9644\u4ef6\u6570\u91cf\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static enqueueWelcome([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;Z)[B
    .locals 6

    .line 10
    if-eqz p3, :cond_1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "q7AntiResaleMailSent"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const/4 p3, 0x1

    new-array v1, p3, [[B

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kind"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "money"

    aput-object v3, v2, p3

    const/4 v3, 0x2

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "quantity"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const/16 v5, 0x2710

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v5, "quality"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 13
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 12
    const-string v2, "\u3010\u9632\u76d7\u5356\u901a\u77e5\u3011"

    invoke-static {p0, p1, v2, p2, v1}, Lcom/project7/localmanager/LocalMailEngine;->enqueue([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 16
    invoke-static {p0, v0, p3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    :goto_0
    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 6

    .line 20
    const-string v0, "queryMailDetail"

    const-string v1, "readMail"

    const-string v2, "delMail"

    const-string v3, "fetchAttachmentAndDel"

    const-string v4, "fetchAttachmentAndDelBatch"

    const-string v5, "fetchAttachmentAndDelBatch2"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 20
    return p0
.end method
