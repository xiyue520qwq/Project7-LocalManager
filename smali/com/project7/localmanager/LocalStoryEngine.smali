.class final Lcom/project7/localmanager/LocalStoryEngine;
.super Ljava/lang/Object;
.source "LocalStoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalStoryEngine$Result;
    }
.end annotation


# static fields
.field static final METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    const-string v0, "q7StoryList"

    const-string v1, "uploadStoryData"

    const-string v2, "findStoryData"

    const-string v3, "delStoryData"

    const-string v4, "saveStoryMemo"

    const-string v5, "likeStory"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalStoryEngine;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([B[BLjava/lang/String;Ljava/lang/String;[BI)Lcom/project7/localmanager/LocalStoryEngine$Result;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "image"

    new-instance v6, Lcom/project7/localmanager/LocalStoryEngine$Result;

    invoke-direct {v6, v1, v0}, Lcom/project7/localmanager/LocalStoryEngine$Result;-><init>([B[B)V

    .line 18
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalStoryDiscussion;->handles(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 19
    move/from16 v7, p5

    invoke-static {v6, v2, v3, v4, v7}, Lcom/project7/localmanager/LocalStoryDiscussion;->apply(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 20
    return-object v6

    .line 22
    :cond_0
    move/from16 v7, p5

    const-string v8, "uid"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalStoryEngine;->assignStoryIds([BI)[B

    move-result-object v9

    .line 23
    iput-object v9, v6, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 24
    const-string v10, "works"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 25
    const-string v12, "sid"

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v13

    .line 26
    const-string v14, "sti"

    invoke-static {v4, v14}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 27
    const-string v0, "q7Sti64"

    invoke-static {v4, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 p1, v15

    const/16 v15, 0x4e20

    if-gt v7, v15, :cond_2

    .line 29
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    move-object v15, v7

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 28
    :cond_1
    move-object/from16 p1, v15

    .line 32
    :cond_2
    :goto_0
    move-object/from16 v15, p1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v11, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    .line 34
    if-nez v7, :cond_4

    move-object/from16 p1, v0

    const-string v0, "saveStoryMemo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 35
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 36
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Lcom/project7/localmanager/LocalStoryEngine;->storyId([B)I

    move-result v0

    if-ne v0, v13, :cond_3

    .line 37
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    goto :goto_3

    .line 39
    :cond_3
    move-object/from16 v0, v18

    goto :goto_2

    .line 34
    :cond_4
    move-object/from16 p1, v0

    .line 42
    :cond_5
    move-object/from16 v0, p1

    :goto_3
    move-object/from16 p1, v10

    const/16 v16, 0x0

    :try_start_1
    const-string v10, "uploadStoryData"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9

    const-string v3, "i"

    const-string v19, "su"

    move-object/from16 v20, v0

    const-string v0, "likes"

    const/16 v21, 0x9

    const/16 v22, 0x8

    const/16 v23, 0x7

    move-object/from16 v24, v0

    const-string v0, "drafts"

    move-object/from16 v25, v0

    const-string v0, "id"

    move-object/from16 v26, v8

    const-string v8, "owner"

    const/16 v27, 0x5

    move-object/from16 v28, v0

    if-eqz v10, :cond_18

    .line 43
    :try_start_2
    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->binaryValue([BLjava/lang/String;)[B

    move-result-object v10

    const-string v0, "q7Summary"

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 44
    move-object/from16 v32, v3

    const-string v3, "title"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalStoryEngine;->metadataText([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v14

    const-string v14, "desc"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalStoryEngine;->metadataText([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 45
    move-object/from16 v34, v12

    const-string v12, "c"

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    .line 46
    const-string v12, "level"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    const/16 v1, 0x1e

    if-lt v12, v1, :cond_17

    .line 47
    if-eqz v10, :cond_16

    :try_start_3
    array-length v1, v10

    const/4 v12, 0x3

    if-lt v1, v12, :cond_16

    array-length v1, v10

    const/high16 v12, 0x200000

    if-gt v1, v12, :cond_16

    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v12, 0xc8

    if-gt v1, v12, :cond_16

    if-eqz v3, :cond_16

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v12, 0x1f4

    if-gt v1, v12, :cond_15

    if-eqz v14, :cond_15

    .line 49
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v12, 0x1388

    if-gt v1, v12, :cond_14

    .line 50
    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_13

    if-ltz v4, :cond_13

    const/16 v1, 0x7530

    if-gt v4, v1, :cond_13

    .line 52
    nop

    .line 53
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v4, v16

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v12, :cond_7

    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-static {v12, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 122
    :catch_1
    move-exception v0

    move-object/from16 v6, p3

    goto/16 :goto_19

    .line 54
    :cond_7
    if-eqz v7, :cond_8

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    move/from16 v1, v16

    .line 55
    :goto_5
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v35, v0

    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/project7/localmanager/LocalImageAvatar;->imageId([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v12, "uploads"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    if-nez v12, :cond_9

    const/4 v12, 0x0

    goto :goto_6

    :cond_9
    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 58
    :goto_6
    if-eqz v12, :cond_a

    move-object/from16 p4, v0

    :try_start_6
    invoke-static {v12, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    invoke-static {v12}, Lcom/project7/localmanager/LocalStoryEngine;->publicSummary([B)[B

    move-result-object v0

    .line 60
    iget-object v1, v6, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v3, "replyuploadStoryData"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v34, v4, v16

    move-object/from16 v12, v34

    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v33, v4, v5

    .line 61
    move-object/from16 v5, v33

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-string v5, "osid"

    const/4 v7, 0x4

    aput-object v5, v4, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v27

    const-string v5, "osti"

    const/4 v7, 0x6

    aput-object v5, v4, v7

    aput-object v15, v4, v23

    aput-object v19, v4, v22

    aput-object v0, v4, v21

    .line 60
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 62
    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalStoryEngine;->sync(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v6

    .line 58
    :cond_a
    move-object/from16 p4, v0

    :cond_b
    move-object/from16 v12, v34

    .line 64
    :try_start_7
    invoke-static {v10}, Lcom/project7/localmanager/LocalStoryEngine;->validateCompressed([B)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5

    .line 65
    if-nez v1, :cond_d

    const/16 v0, 0xa

    if-ge v4, v0, :cond_c

    goto :goto_7

    :cond_c
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u60a8\u4e0a\u4f20\u7684\u4f5c\u54c1\u6570\u5df2\u8d85\u8fc7\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    move-object/from16 v0, v28

    invoke-static {v7, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_8

    :cond_e
    move-object/from16 v0, v28

    :try_start_9
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5

    .line 67
    :goto_8
    if-eqz v1, :cond_f

    :try_start_a
    invoke-static {v7}, Lcom/project7/localmanager/LocalStoryEngine;->storyId([B)I

    move-result v28
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1

    move-object/from16 v34, v6

    move/from16 v6, v28

    move-object/from16 v28, v15

    move-object/from16 v15, p0

    move-object/from16 v39, v26

    move/from16 v26, v13

    move-object/from16 v13, v39

    goto :goto_9

    :cond_f
    move-object/from16 v34, v6

    move-object/from16 v28, v15

    move-object/from16 v15, p0

    move-object/from16 v39, v26

    move/from16 v26, v13

    move-object/from16 v13, v39

    :try_start_b
    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v11, v6}, Lcom/project7/localmanager/LocalStoryEngine;->newStoryId([BI)I

    move-result v6
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4

    .line 68
    :goto_9
    nop

    .line 69
    if-eqz v1, :cond_10

    move-object/from16 v36, v9

    move-object/from16 v37, v11

    move-object/from16 v9, v20

    goto :goto_a

    :cond_10
    move-object/from16 v36, v9

    :try_start_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v37, v11

    const-string v11, "+"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 70
    :goto_a
    const/16 v11, 0x1c

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v12, v11, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v18, 0x1

    aput-object v38, v11, v18

    const/16 v17, 0x2

    aput-object v33, v11, v17

    const/16 v31, 0x3

    aput-object v3, v11, v31

    const-string v38, "title"

    const/16 v30, 0x4

    aput-object v38, v11, v30

    aput-object v3, v11, v27

    const-string v38, "desc"

    const/16 v29, 0x6

    aput-object v38, v11, v29

    aput-object v14, v11, v23

    const-string v38, "sd"

    aput-object v38, v11, v22

    aput-object v14, v11, v21

    const/16 v14, 0xa

    aput-object v5, v11, v14

    .line 71
    move-object/from16 v14, v35

    invoke-static {v14, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const/16 v38, 0xb

    aput-object v35, v11, v38

    const/16 v35, 0xc

    const-string v38, "sco"

    aput-object v38, v11, v35

    const/16 v35, 0xd

    invoke-static {v14, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v35

    const/16 v5, 0xe

    const-string v14, "uname"

    aput-object v14, v11, v5

    const/16 v5, 0xf

    const-string v14, "name"

    invoke-static {v15, v14}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v5

    const/16 v5, 0x10

    aput-object v13, v11, v5

    const/16 v5, 0x11

    aput-object v2, v11, v5

    const/16 v5, 0x12

    const-string v13, "uuid"

    aput-object v13, v11, v5

    const/16 v5, 0x13

    aput-object v2, v11, v5

    const/16 v5, 0x14

    const-string v13, "obj_id"

    aput-object v13, v11, v5

    const/16 v5, 0x15

    aput-object v4, v11, v5

    const/16 v5, 0x16

    const-string v13, "st"

    aput-object v13, v11, v5

    const/16 v5, 0x17

    .line 72
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v5

    const/16 v5, 0x18

    const-string v13, "rt"

    aput-object v13, v11, v5

    const/16 v5, 0x19

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v5

    const/16 v5, 0x1a

    const-string v13, "like"

    aput-object v13, v11, v5

    const/16 v5, 0x1b

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v5

    .line 70
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    .line 73
    const/16 v11, 0xe

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v16

    const/4 v8, 0x1

    aput-object v2, v11, v8

    const/4 v8, 0x2

    aput-object v0, v11, v8

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const-string v0, "q7Sid"

    const/4 v4, 0x4

    aput-object v0, v11, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v27

    const-string v0, "q7SummaryVersion"

    const/4 v4, 0x6

    aput-object v0, v11, v4

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v23

    aput-object v19, v11, v22

    aput-object v5, v11, v21

    const/16 v0, 0xa

    aput-object v32, v11, v0

    const/16 v0, 0xb

    new-instance v4, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-direct {v4, v10}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    aput-object v4, v11, v0

    const/16 v0, 0xc

    aput-object v24, v11, v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3

    const/16 v0, 0xd

    .line 74
    if-eqz v1, :cond_11

    move-object/from16 v1, v24

    :try_start_d
    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_b

    .line 122
    :catch_2
    move-exception v0

    move-object/from16 v6, p3

    move-object/from16 v11, v36

    goto/16 :goto_1a

    .line 74
    :cond_11
    :try_start_e
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :goto_b
    aput-object v1, v11, v0

    .line 73
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 75
    move-object/from16 v10, v37

    invoke-static {v10, v9, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_3

    move-object/from16 v13, p1

    move-object/from16 v11, v36

    :try_start_f
    invoke-static {v11, v13, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    move-object/from16 v14, v34

    iput-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 76
    iget-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    const-string v1, "uploads"

    const-string v4, "uploads"

    .line 77
    invoke-static {v11, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 76
    move-object/from16 v7, p4

    invoke-static {v4, v7, v9}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 78
    iget-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    move-object/from16 v9, v25

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 79
    iget-object v1, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    iget-object v4, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 80
    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    move-object/from16 v7, v20

    invoke-static {v0, v7}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 79
    invoke-static {v4, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v1, v9, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 81
    iget-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    array-length v0, v0

    const/high16 v1, 0x2000000

    if-gt v0, v1, :cond_12

    .line 82
    iget-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v1, "replyuploadStoryData"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v12, v4, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    aput-object v33, v4, v6

    const/4 v6, 0x3

    aput-object v3, v4, v6

    const-string v3, "osid"

    const/4 v6, 0x4

    aput-object v3, v4, v6

    .line 83
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v27

    const-string v3, "osti"

    const/4 v6, 0x6

    aput-object v3, v4, v6

    aput-object v28, v4, v23

    aput-object v19, v4, v22

    aput-object v5, v4, v21

    .line 82
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 84
    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalStoryEngine;->sync(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V

    .line 85
    move-object/from16 v6, p3

    goto/16 :goto_17

    .line 81
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672c\u5730\u4f5c\u54c1\u5b58\u6863\u5df2\u8fbe\u4fdd\u5b58\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :catch_3
    move-exception v0

    move-object/from16 v11, v36

    goto/16 :goto_18

    :catch_4
    move-exception v0

    goto :goto_d

    .line 50
    :cond_13
    move-object/from16 v15, p0

    move-object v11, v9

    goto :goto_c

    .line 49
    :cond_14
    move-object/from16 v15, p0

    move-object v11, v9

    goto :goto_c

    .line 48
    :cond_15
    move-object/from16 v15, p0

    move-object v11, v9

    goto :goto_c

    .line 122
    :catch_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_d

    .line 47
    :cond_16
    move-object/from16 v15, p0

    move-object v11, v9

    .line 51
    :goto_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4f5c\u54c1\u5185\u5bb9\u6216\u5c01\u9762\u65e0\u6548\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u53d1\u5e03"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_17
    move-object/from16 v15, p0

    move-object v11, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e03\u65e5\u5c0f\u5267\u573a\u9700\u8981\u6307\u6325\u4f7f\u7b49\u7ea730\u7ea7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :catch_6
    move-exception v0

    move-object v15, v1

    :goto_d
    move-object v11, v9

    goto/16 :goto_18

    .line 85
    :cond_18
    move-object/from16 v32, v3

    move-object v10, v11

    move/from16 v26, v13

    move-object/from16 v33, v14

    move-object/from16 v3, v20

    move-object/from16 v0, v28

    move-object/from16 v13, p1

    move-object v14, v6

    move-object v11, v9

    move-object/from16 v28, v15

    move-object/from16 v9, v25

    move-object v15, v1

    move-object/from16 v1, v24

    const-string v5, "findStoryData"
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_8

    move-object/from16 v6, p3

    move-object/from16 v15, v32

    :try_start_10
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 86
    if-eqz v7, :cond_1c

    .line 87
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "ie"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 88
    if-eqz v3, :cond_1a

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_e

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53ea\u80fd\u7f16\u8f91\u81ea\u5df1\u7684\u4f5c\u54c1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1a
    :goto_e
    invoke-static {v7, v15}, Lcom/project7/localmanager/BsonLite;->binaryValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 90
    if-eqz v3, :cond_1b

    iget-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v1, "editStoryDataReply"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v16

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v33, v3, v4

    const/4 v4, 0x3

    aput-object v28, v3, v4

    const-string v4, "si"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    new-instance v4, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-direct {v4, v2}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    aput-object v4, v3, v27

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_f

    .line 91
    :cond_1b
    iget-object v3, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v4, "previewStoryDataReply"

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v12, v5, v16

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const/4 v8, 0x2

    aput-object v33, v5, v8

    const/4 v8, 0x3

    aput-object v28, v5, v8

    const-string v8, "si"

    const/4 v9, 0x4

    aput-object v8, v5, v9

    new-instance v8, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-direct {v8, v2}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    aput-object v8, v5, v27

    const/4 v2, 0x6

    aput-object v19, v5, v2

    .line 92
    invoke-static {v7}, Lcom/project7/localmanager/LocalStoryEngine;->publicSummary([B)[B

    move-result-object v2

    aput-object v2, v5, v23

    aput-object v0, v5, v22

    new-instance v2, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {v7, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v21

    const-string v0, "li"

    const/16 v2, 0xa

    aput-object v0, v5, v2

    const/16 v0, 0xb

    .line 93
    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 91
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 94
    :goto_f
    goto/16 :goto_17

    .line 86
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4f5c\u54c1\u4e0d\u5b58\u5728\u6216\u5df2\u88ab\u5220\u9664"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1d
    const-string v5, "delStoryData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 95
    if-eqz v7, :cond_1f

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_10

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53ea\u80fd\u5220\u9664\u81ea\u5df1\u7684\u4f5c\u54c1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1f
    :goto_10
    invoke-static {v10, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v11, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 97
    if-eqz v7, :cond_20

    invoke-static {v7, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalStoryDiscussion;->deleteWork(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V

    .line 98
    :cond_20
    iget-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v1, "replyDelStoryData"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v16

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v33, v3, v4

    const/4 v4, 0x3

    aput-object v28, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 99
    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalStoryEngine;->sync(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 100
    :cond_21
    const-string v5, "saveStoryMemo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 101
    const-string v0, "d"

    invoke-static {v4, v0}, Lcom/project7/localmanager/BsonLite;->binaryValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 102
    if-eqz v0, :cond_24

    array-length v1, v0

    const/high16 v4, 0x200000

    if-gt v1, v4, :cond_24

    .line 103
    invoke-static {v0}, Lcom/project7/localmanager/LocalStoryEngine;->validateCompressed([B)V

    .line 104
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_23

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_11

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672c\u5730\u8349\u7a3f\u5df2\u8fbe\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_23
    :goto_11
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "d"

    aput-object v4, v5, v16

    new-instance v4, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-direct {v4, v0}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 107
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v11, v9, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 108
    goto/16 :goto_17

    .line 102
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8349\u7a3f\u8fc7\u5927\u6216\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_25
    const-string v3, "likeStory"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 109
    const-string v3, "oi"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "il"

    invoke-static {v4, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 111
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    goto :goto_12

    .line 113
    :cond_26
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 114
    if-eqz v4, :cond_27

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    goto :goto_13

    :cond_27
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 115
    :goto_13
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v10, v5, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x1

    goto :goto_14

    .line 111
    :cond_28
    move/from16 v0, v16

    .line 117
    :goto_14
    invoke-static {v11, v13, v10}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    .line 118
    iget-object v1, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const-string v5, "likeStoryReply"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "rs"

    aput-object v8, v7, v16

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const-string v0, "oi"

    const/4 v8, 0x2

    aput-object v0, v7, v8

    if-nez v3, :cond_29

    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    const-string v3, "000000000000000000000000"

    invoke-direct {v0, v3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_29
    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v0, v3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    :goto_15
    const/4 v3, 0x3

    aput-object v0, v7, v3

    const-string v0, "il"

    const/4 v3, 0x4

    aput-object v0, v7, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v27

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 119
    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalStoryEngine;->sync(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V

    goto :goto_16

    .line 120
    :cond_2a
    const-string v0, "q7StoryList"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalStoryEngine;->sync(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V

    :cond_2b
    :goto_16
    nop

    .line 121
    :goto_17
    iget-object v0, v14, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    array-length v0, v0

    const/high16 v1, 0x2000000

    if-gt v0, v1, :cond_2c

    .line 127
    move-object v6, v14

    goto :goto_1c

    .line 121
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672c\u5730\u4f5c\u54c1\u5b58\u6863\u5df2\u8fbe\u4fdd\u5b58\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7

    .line 122
    :catch_7
    move-exception v0

    goto :goto_1a

    :catch_8
    move-exception v0

    :goto_18
    move-object/from16 v6, p3

    goto :goto_1a

    :catch_9
    move-exception v0

    move-object v6, v3

    :goto_19
    move-object v11, v9

    .line 123
    :goto_1a
    new-instance v1, Lcom/project7/localmanager/LocalStoryEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v11}, Lcom/project7/localmanager/LocalStoryEngine$Result;-><init>([B[B)V

    .line 124
    const-string v2, "uploadStoryData"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "replyuploadFail"

    goto :goto_1b

    :cond_2d
    const-string v2, "findStoryData"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "findStoryDatafail"

    goto :goto_1b

    :cond_2e
    const-string v2, "showMessageStr"

    .line 125
    :goto_1b
    iget-object v3, v1, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "m"

    aput-object v4, v5, v16

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 126
    const-string v0, "delStoryData"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "s"

    aput-object v3, v2, v16

    const-string v3, "gg.ui.unlock(\'delStoryData\')"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "evalCode"

    invoke-virtual {v0, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 128
    :cond_2f
    move-object v6, v1

    :goto_1c
    return-object v6
.end method

.method private static assignStoryIds([BI)[B
    .locals 7

    .line 143
    const-string v0, "works"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 144
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    .line 145
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 146
    nop

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 148
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 149
    invoke-static {v5}, Lcom/project7/localmanager/LocalStoryEngine;->storyId([B)I

    move-result v6

    if-lez v6, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalStoryEngine;->newStoryId([BI)I

    move-result v3

    const-string v6, "q7Sid"

    invoke-static {v5, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 151
    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 152
    const/4 v3, 0x1

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    if-eqz v3, :cond_2

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 10
    sget-object v0, Lcom/project7/localmanager/LocalStoryEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/project7/localmanager/LocalStoryDiscussion;->handles(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$sync$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    .line 189
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "su"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    const-string v1, "rt"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p1

    .line 190
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    .line 189
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$sync$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 1

    .line 197
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "likes"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 198
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 197
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private static metadataText([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x7530

    if-gt p0, p1, :cond_1

    .line 135
    new-instance p0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 134
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u4f5c\u54c1\u6458\u8981\u8fc7\u5927"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static newStoryId([BI)I
    .locals 1

    .line 159
    nop

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/project7/localmanager/LocalStoryEngine;->storyId([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    .line 163
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 164
    :cond_1
    return p0
.end method

.method private static publicSummary([B)[B
    .locals 2

    .line 168
    const-string v0, "su"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 169
    invoke-static {p0}, Lcom/project7/localmanager/LocalStoryEngine;->storyId([B)I

    move-result p0

    const-string v1, "sid"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 170
    const-string v0, "title"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "sti"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 172
    const-string v0, "image"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    const-string v1, "sco"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static storyId([B)I
    .locals 1

    .line 139
    const-string v0, "q7Sid"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static sync(Lcom/project7/localmanager/LocalStoryEngine$Result;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 188
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    const-string v7, "works"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    sget-object v6, Lcom/project7/localmanager/LocalStoryEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalStoryEngine$$ExternalSyntheticLambda0;

    invoke-interface {v5, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 191
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "owner"

    const-string v9, "sti"

    const-string v10, "+"

    const-string v11, "sid"

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-static {v12}, Lcom/project7/localmanager/LocalStoryEngine;->publicSummary([B)[B

    move-result-object v12

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    const-string v14, "likes"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const-string v14, "like"

    invoke-static {v12, v14, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v12

    .line 193
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v9}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 194
    invoke-static {v2, v9, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 195
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4, v9, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 196
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    sget-object v6, Lcom/project7/localmanager/LocalStoryEngine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalStoryEngine$$ExternalSyntheticLambda1;

    invoke-interface {v5, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 199
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7}, Lcom/project7/localmanager/LocalStoryEngine;->publicSummary([B)[B

    move-result-object v7

    .line 201
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v3, v7, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 203
    goto :goto_1

    .line 204
    :cond_2
    iget-object v6, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v7, 0x2

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "hs"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    new-instance v13, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-static {v3}, Lcom/project7/localmanager/LocalAvatarPayload;->encode([B)[B

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    const/4 v3, 0x1

    aput-object v13, v12, v3

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v12

    const-string v13, "syncHotStoryData"

    invoke-virtual {v6, v13, v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 205
    iget-object v6, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "ls"

    aput-object v13, v12, v14

    new-instance v13, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-static {v2}, Lcom/project7/localmanager/LocalAvatarPayload;->encode([B)[B

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    aput-object v13, v12, v3

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v12

    const-string v13, "syncLatestStoryData"

    invoke-virtual {v6, v13, v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 206
    iget-object v6, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "ms"

    aput-object v13, v12, v14

    new-instance v13, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-static {v4}, Lcom/project7/localmanager/LocalAvatarPayload;->encode([B)[B

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    aput-object v13, v12, v3

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v12, "syncMyStoryData"

    invoke-virtual {v6, v12, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 207
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "s"

    const-string v12, "evalCode"

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 209
    const-string v13, "q7SummaryVersion"

    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v13

    if-lt v13, v7, :cond_3

    goto :goto_2

    .line 210
    :cond_3
    const-string v13, "i"

    invoke-static {v5, v13}, Lcom/project7/localmanager/BsonLite;->binaryValue([BLjava/lang/String;)[B

    move-result-object v13

    .line 211
    if-nez v13, :cond_4

    goto :goto_2

    .line 212
    :cond_4
    invoke-static {v5}, Lcom/project7/localmanager/LocalStoryEngine;->publicSummary([B)[B

    move-result-object v15

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v9}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 216
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v7

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const-string v18, "summary"

    aput-object v18, v15, v14

    const/16 v17, 0x1

    aput-object v3, v15, v17

    const-string v3, "own"

    const/16 v16, 0x2

    aput-object v3, v15, v16

    const/4 v3, 0x3

    .line 217
    invoke-static {v5, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v15, v3

    const/4 v3, 0x4

    const-string v5, "body"

    aput-object v5, v15, v3

    const/4 v3, 0x5

    new-instance v5, Lcom/project7/localmanager/BsonLite$BinaryValue;

    invoke-direct {v5, v13}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    aput-object v5, v15, v3

    .line 216
    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    .line 219
    iget-object v5, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v7, 0x2

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v6, v13, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_q7_story_summary_fix(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\')"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v13, v6

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v5, v12, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 220
    const/4 v3, 0x1

    const/4 v7, 0x2

    goto/16 :goto_2

    .line 221
    :cond_5
    iget-object v2, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    const-string v3, "drafts"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 223
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v2, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v6, v4, v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "import bson,base64\n_q7_drafts=bson.BSON(base64.b64decode(\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')).decode()\nfor _q7_k,_q7_d in _q7_drafts.items():\n    gg.avatar.StoryEditorData.memo_cache.setdefault(_q7_k,gg.avatar.decompress_story(_q7_d[\'d\']))"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_3

    .line 222
    :cond_6
    const/4 v3, 0x1

    .line 229
    :goto_3
    iget-object v0, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v14

    const-string v2, "_q7_story_refresh()"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 230
    return-void
.end method

.method private static validateCompressed([B)V
    .locals 3

    .line 176
    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const/16 p0, 0x2000

    :try_start_1
    new-array p0, p0, [B

    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    .line 179
    add-int/2addr v1, v2

    .line 180
    const/high16 v2, 0x800000

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4f5c\u54c1\u89e3\u538b\u540e\u8fc7\u5927"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    .line 183
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    return-void

    .line 182
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4f5c\u54c1\u4e3a\u7a7a"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 183
    :catch_0
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4f5c\u54c1\u538b\u7f29\u5185\u5bb9\u65e0\u6548"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
