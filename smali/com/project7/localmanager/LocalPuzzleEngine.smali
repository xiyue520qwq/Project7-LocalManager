.class final Lcom/project7/localmanager/LocalPuzzleEngine;
.super Ljava/lang/Object;
.source "LocalPuzzleEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalPuzzleEngine$Clue;,
        Lcom/project7/localmanager/LocalPuzzleEngine$Room;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 1

    .line 90
    const-string v0, "q7Puzzle"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 91
    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->known([BLcom/project7/localmanager/LocalEventCatalog;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "e"

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_0

    invoke-static {p0, p2, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->clock([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p0

    const-string p1, "generation"

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    iget-object p0, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 93
    const-string p1, "open"

    invoke-static {v0, p1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 91
    :goto_0
    return p0
.end method

.method static apply([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 22

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v5, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 143
    const-string v6, "q7PuzzleBegin"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "clues"

    const-string v8, "prc"

    const-string v9, "outcome"

    const-string v10, "open"

    const-string v12, "std"

    const-string v13, "r"

    const-string v14, "e"

    const-string v15, "q7Puzzle"

    const/4 v11, 0x0

    .line 179
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 143
    if-eqz v6, :cond_3

    .line 144
    invoke-static {v4, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Lcom/project7/localmanager/LocalPuzzleEngine;->canBegin([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v15, v5

    goto/16 :goto_1

    .line 146
    :cond_0
    iget-object v4, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    invoke-static {v0, v15}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 147
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v0, v1, v2, v11}, Lcom/project7/localmanager/LocalPuzzleEngine;->active([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v1

    const-string v11, "d"

    move-object/from16 v17, v8

    const-string v8, "n"

    move-object/from16 v18, v12

    const-string v12, "w"

    if-nez v1, :cond_1

    .line 149
    :try_start_0
    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    move-object/from16 v19, v15

    const/4 v15, 0x1

    invoke-static {v1, v15}, Ljava/lang/Math;->addExact(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    move-object/from16 v20, v5

    const-string v5, "format"

    invoke-static {v6, v5, v15}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 151
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v14, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    iget v6, v4, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->id:I

    invoke-static {v5, v13, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 152
    const-string v6, "weeknum"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v5, v12, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 153
    const-string v6, "weeknum"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v5, v11, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 154
    invoke-static {v5, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v1, v10, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    .line 155
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v2

    const-string v5, "generation"

    invoke-static {v1, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 157
    invoke-static {v1, v9}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v6

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    move-object/from16 v20, v5

    return-object v20

    .line 147
    :cond_1
    move-object/from16 v20, v5

    move-object/from16 v19, v15

    .line 159
    :goto_0
    move-object/from16 v5, v19

    invoke-static {v0, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    move-object/from16 v15, v20

    iput-object v1, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 160
    iget-object v1, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v18

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalPuzzleEngine;->clues([BLcom/project7/localmanager/LocalPuzzleEngine$Room;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v7, v17

    invoke-static {v0, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gg.avatar._q7_puzzle_snapshot = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "s"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v0}, Lcom/project7/localmanager/LocalClientCompatibility;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v2, "evalCode"

    invoke-virtual {v15, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 163
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v11, v0, v5

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalPuzzleEngine;->clues([BLcom/project7/localmanager/LocalPuzzleEngine$Room;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncPuzzleRoomClue"

    invoke-virtual {v15, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 164
    goto/16 :goto_a

    .line 145
    :cond_2
    move-object v15, v5

    :goto_1
    return-object v15

    .line 164
    :cond_3
    move-object v6, v8

    move-object v8, v12

    move-object/from16 v21, v15

    move-object v15, v5

    move-object/from16 v5, v21

    const-string v11, "q7PuzzleExit"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 165
    invoke-static {v4, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Lcom/project7/localmanager/LocalPuzzleEngine;->active([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 167
    :cond_4
    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    .line 168
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->clues([BLcom/project7/localmanager/LocalPuzzleEngine$Room;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clues:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v1, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clear:I

    goto :goto_2

    :cond_5
    iget v1, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->incomplete:I

    .line 169
    :goto_2
    const/4 v3, 0x0

    invoke-static {v2, v10, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    invoke-static {v2, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 170
    invoke-static {v0, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 171
    iget-object v3, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 172
    const-string v4, "q7PuzzleExits"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 171
    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 173
    iget-object v1, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-instance v2, Ljava/util/ArrayList;

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalPuzzleEngine;->heldCgs([B)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalCgEngine;->acknowledge([BLjava/util/List;)[B

    move-result-object v0

    iput-object v0, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto/16 :goto_9

    .line 166
    :cond_6
    :goto_3
    return-object v15

    .line 174
    :cond_7
    const-string v9, "puzzleRoomGetClue"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 175
    const-string v3, "c"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iget-object v9, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleClues:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;

    .line 176
    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v11

    .line 177
    if-eqz v9, :cond_8

    invoke-static {v0, v1, v2, v11}, Lcom/project7/localmanager/LocalPuzzleEngine;->active([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v12

    if-eqz v12, :cond_8

    iget v12, v9, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->room:I

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v12, v14, :cond_8

    const/4 v12, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    .line 178
    :goto_4
    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v11, :cond_9

    move-object/from16 p2, v2

    iget-object v2, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v12, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 p2, v2

    :cond_a
    :goto_6
    move-object/from16 v2, p2

    goto :goto_5

    .line 179
    :cond_b
    const-string v2, "g"

    const-string v14, "puzzleRoomGetClueReturn"

    move-object/from16 p4, v9

    const/4 v9, 0x3

    if-nez v12, :cond_d

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const/4 v1, 0x1

    aput-object v16, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    if-nez v4, :cond_c

    const/4 v11, 0x0

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v16, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    return-object v15

    .line 180
    :cond_d
    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    invoke-static {v10, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->clues([BLcom/project7/localmanager/LocalPuzzleEngine$Room;)Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_e
    invoke-static {v10, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    iput-object v5, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 183
    iget-object v5, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    invoke-static {v5, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 184
    move-object/from16 v1, p4

    iget v5, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    if-lez v5, :cond_10

    const-string v5, "cgs"

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget v5, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 185
    const-string v0, "cgs"

    const-string v5, "ncgs"

    const-string v6, "ccgs"

    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v9, :cond_10

    aget-object v6, v0, v5

    .line 186
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    iget v8, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    iget v8, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_f
    iget-object v8, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v6

    iput-object v6, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 191
    :cond_10
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    aput-object v4, v0, v9

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v16, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_a

    .line 174
    :cond_11
    :goto_9
    nop

    .line 193
    :goto_a
    return-object v15
.end method

.method static canBegin([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 9

    .line 67
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    .line 68
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    if-eqz p2, :cond_14

    iget-object v0, v0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->routes:Ljava/util/Set;

    const-string v2, "std"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "rt"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 69
    :cond_0
    invoke-virtual {p1, p3}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    iget-boolean v0, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 71
    :cond_1
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v0

    if-ltz v0, :cond_12

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    goto/16 :goto_2

    .line 72
    :cond_2
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "w"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "d"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 73
    if-eqz v3, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v5, v6, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x7

    if-le v5, v6, :cond_3

    goto/16 :goto_1

    .line 74
    :cond_3
    iget-object v5, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, p3, :cond_4

    iget-object v7, p1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v1

    .line 75
    :cond_5
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    const-string v6, "q7Puzzle"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_6

    return v7

    .line 76
    :cond_6
    invoke-static {p0, v6}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 77
    invoke-static {v5, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->known([BLcom/project7/localmanager/LocalEventCatalog;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    .line 78
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "open"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v6, "generation"

    const-string v8, "e"

    if-eqz p1, :cond_9

    .line 79
    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-ne p1, p3, :cond_8

    invoke-static {p0, p2, v5}, Lcom/project7/localmanager/LocalPuzzleEngine;->clock([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p0

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_8

    move v1, v7

    :cond_8
    return v1

    .line 82
    :cond_9
    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p0

    .line 83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-ge p1, v8, :cond_a

    return v1

    .line 84
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-le p1, v2, :cond_d

    iget-object p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-ne p0, p3, :cond_c

    :cond_b
    move v1, v7

    :cond_c
    return v1

    .line 85
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_e

    return v1

    .line 86
    :cond_e
    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p1

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-le p1, v0, :cond_10

    if-eq p0, p3, :cond_f

    iget-object p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    :cond_f
    move v1, v7

    goto :goto_0

    :cond_10
    nop

    .line 86
    :goto_0
    return v1

    .line 73
    :cond_11
    :goto_1
    return v1

    .line 71
    :cond_12
    :goto_2
    return v1

    .line 70
    :cond_13
    :goto_3
    return v1

    .line 68
    :cond_14
    :goto_4
    return v1
.end method

.method static clock([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z
    .locals 5

    .line 44
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "w"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 45
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-gt v3, v4, :cond_0

    iget p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 46
    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    return p0
.end method

.method static clues([BLcom/project7/localmanager/LocalPuzzleEngine$Room;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/project7/localmanager/LocalPuzzleEngine$Room;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    const-string v0, "clues"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v2, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clues:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid saved room clue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1
    return-object v0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "missing room clue state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static exitOutcome([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;
    .locals 3

    .line 96
    const-string v0, "q7Puzzle"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 97
    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->known([BLcom/project7/localmanager/LocalEventCatalog;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "e"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p3, :cond_3

    invoke-static {p0, p2, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->clock([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 98
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p0

    const-string p2, "generation"

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p2

    if-ne p0, p2, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 99
    const-string p2, "open"

    invoke-static {v0, p2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object p0, p1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    .line 101
    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalPuzzleEngine;->clues([BLcom/project7/localmanager/LocalPuzzleEngine$Room;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clues:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clear:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->incomplete:I

    .line 102
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "outcome"

    invoke-static {v0, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    return-object v2

    .line 99
    :cond_3
    :goto_1
    return-object v2
.end method

.method static generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 27
    const-string v0, "q7PuzzleBegin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "q7PuzzleExit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "puzzleRoomGetClue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static heldCgs([B)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 119
    const-string v0, "q7Puzzle"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 120
    const-string v1, "format"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const-string v1, "e"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/16 v3, 0x1085

    if-ne v1, v3, :cond_6

    const-string v1, "r"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_6

    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lt v1, v2, :cond_6

    .line 121
    const-string v1, "generation"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 122
    const-string v1, "w"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "d"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 123
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_6

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_6

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x7

    if-gt v4, v5, :cond_6

    .line 124
    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "weeknum"

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 126
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    const-string v1, "outcome"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 127
    const-string v1, "open"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 128
    :cond_0
    const-string p0, "clues"

    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 129
    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 130
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    invoke-static {v1, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 133
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v2, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x6

    if-gt v5, v7, :cond_3

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    goto :goto_0

    .line 134
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 137
    :cond_4
    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 138
    const/16 p0, 0xd1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    .line 137
    :goto_2
    return-object p0

    .line 127
    :cond_6
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static known([BLcom/project7/localmanager/LocalEventCatalog;)Z
    .locals 5

    .line 49
    const-string v0, "format"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string v0, "n"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_5

    .line 50
    const-string v0, "open"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v3, "generation"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 51
    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    const-string v3, "w"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 52
    const-string v3, "d"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_5

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    const-string v3, "e"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    .line 54
    if-eqz p1, :cond_4

    const-string v3, "r"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v3

    iget v4, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->id:I

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->clues([BLcom/project7/localmanager/LocalPuzzleEngine$Room;)Ljava/util/List;

    move-result-object v3

    .line 57
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "outcome"

    if-eqz v0, :cond_2

    .line 58
    :try_start_1
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 59
    :cond_2
    iget-object v0, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clues:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clear:I

    goto :goto_0

    :cond_3
    iget p1, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->incomplete:I

    .line 60
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    .line 61
    :catch_0
    move-exception p0

    return v1

    .line 54
    :cond_4
    :goto_1
    return v1

    .line 52
    :cond_5
    :goto_2
    return v1
.end method

.method static reconcileClue(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 14

    .line 197
    move-object v6, p0

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 199
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v9, "puzzleRoomGetClueReturn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    const-string v10, "r"

    invoke-static {v1, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 200
    :cond_1
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    const-string v0, "cgs"

    move-object v1, p1

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalCgEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 203
    :cond_2
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v0

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/project7/localmanager/LocalEventCatalog;->puzzleClues:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;

    .line 204
    iget v3, v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "q7CgNotices"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    iget v4, v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 205
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 206
    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v11, "q7Puzzle"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 207
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gg.avatar._q7_puzzle_reward_context = ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "w"

    invoke-static {v8, v12}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "e"

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "n"

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")\n"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 208
    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "s"

    aput-object v12, v11, v7

    invoke-static {v8}, Lcom/project7/localmanager/LocalClientCompatibility;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v5

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    const-string v11, "evalCode"

    invoke-virtual {p0, v11, v8}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 209
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v7

    iget v2, v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v8, "addCg"

    invoke-virtual {p0, v8, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 210
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v10, v2, v7

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v8, "cgRewards"

    invoke-virtual {p0, v8, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 212
    :cond_4
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v2, v5

    aput-object v1, v2, v4

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x4

    const-string v1, "g"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    if-eqz v3, :cond_5

    move v7, v5

    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 213
    return-void

    .line 199
    :cond_6
    :goto_1
    return-void
.end method

.method static selectedClear([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Lcom/project7/localmanager/LocalPuzzleEngine$Room;
    .locals 6

    .line 105
    nop

    .line 106
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    iget v1, v1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clear:I

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 107
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p2, :cond_2

    goto/16 :goto_3

    .line 108
    :cond_2
    const-string v0, "q7PuzzleExits"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "weeknum"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 109
    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->known([BLcom/project7/localmanager/LocalEventCatalog;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "open"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 110
    :cond_3
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    const-string v2, "e"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    .line 111
    iget v2, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clear:I

    if-ne v2, p3, :cond_5

    const-string v2, "outcome"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p3, :cond_5

    iget-object p3, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v2, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v2, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    iget p3, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    const-string v2, "w"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_5

    .line 113
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 114
    const-string p3, "d"

    invoke-static {p0, p3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_5

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p0

    const/4 p3, 0x7

    if-gt p0, p3, :cond_5

    iget p0, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    .line 115
    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalPuzzleEngine;->generation(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p0

    int-to-long p2, p0

    const-string p0, "generation"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalPuzzleEngine;->v([BLjava/lang/String;)I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    cmp-long p0, p2, v2

    if-eqz p0, :cond_4

    goto :goto_1

    .line 116
    :cond_4
    return-object p1

    .line 115
    :cond_5
    :goto_1
    return-object v1

    .line 109
    :cond_6
    :goto_2
    return-object v1

    .line 107
    :cond_7
    :goto_3
    return-object v1
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
