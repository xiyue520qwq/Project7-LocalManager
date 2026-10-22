.class final Lcom/project7/localmanager/LocalDiaryEngine;
.super Ljava/lang/Object;
.source "LocalDiaryEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add([BLjava/lang/String;I)[B
    .locals 2

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p0

    return-object p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 198
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static diagnostic([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;
    .locals 6

    .line 161
    const-string v0, "np"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 162
    const-string v1, "pn"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "week="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "weeknum"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "w"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalDiaryEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " day="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "d"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalDiaryEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " playerNotes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " heroDiaries="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " completed="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " receipts="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string p1, "q7effects"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    return-object p0
.end method

.method static evidence([BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventCatalog;)Ljava/lang/String;
    .locals 10

    .line 172
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 173
    const-string v3, "q7effects"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "q7WeekTransition"

    invoke-static {p0, v4}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 174
    iget-object v5, p2, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    iget-object v7, v7, Lcom/project7/localmanager/LocalEventCatalog$Effect;->noteIds:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/project7/localmanager/LocalDiaryEngine$$ExternalSyntheticLambda0;

    invoke-direct {v8, p2}, Lcom/project7/localmanager/LocalDiaryEngine$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/LocalEventCatalog;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 176
    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 178
    iget-object v7, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "m"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_3
    goto/16 :goto_0

    .line 182
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "route="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "std"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v5, "rt"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " transitionWeek="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v3, "week"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tokenMatch="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v3, "id"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " progressWeek="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " baseline="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v3, "q7WeekEventBaseline"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " completedNoteEvents="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " awardedNoteEvents="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " offeredNoteEvents="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " dialogFacts="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "dialog"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " available="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " processing="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    return-object p0
.end method

.method static synthetic lambda$prepare$0(Lcom/project7/localmanager/LocalEventCatalog;Ljava/lang/Integer;)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    .line 69
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget p0, p0, v2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 68
    :goto_0
    return v1
.end method

.method static prepare(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 26

    .line 35
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "heromgr"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 36
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "np"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    const-string v10, "n"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 39
    iget-object v11, v2, Lcom/project7/localmanager/LocalEventCatalog;->clearNotes:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_1
    new-instance v11, Ljava/util/LinkedHashSet;

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v12, "q7WeekEventBaseline"

    invoke-static {v0, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    new-instance v13, Ljava/util/LinkedHashSet;

    iget-object v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-direct {v13, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    invoke-interface {v13, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v14, "weeknum"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v15, "w"

    move-object/from16 v16, v5

    invoke-static {v0, v15}, Lcom/project7/localmanager/LocalDiaryEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 45
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v17, v4

    const-string v4, "q7WeekTransition"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 46
    const-string v4, "id"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    move-object/from16 v18, v8

    const/4 v8, 0x0

    move-object/from16 v19, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v8, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v15}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 48
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 49
    invoke-static {v8, v12}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 50
    :goto_1
    const-string v14, "week"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalDiaryEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_3

    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 52
    invoke-static {v0, v12}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 53
    :goto_2
    iget-object v12, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "q7effects"

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 54
    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 57
    if-nez v8, :cond_5

    if-eqz v0, :cond_4

    iget-object v9, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    .line 58
    :goto_4
    if-eqz v4, :cond_d

    .line 59
    iget-object v4, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    move/from16 v20, v5

    const-string v5, "dialog"

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 60
    iget-object v9, v2, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 61
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    move-object/from16 v23, v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 62
    move-object/from16 v22, v14

    invoke-virtual {v2, v9}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v14

    .line 63
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v14, :cond_b

    iget v1, v14, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-eqz v1, :cond_b

    iget-object v1, v2, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    .line 64
    move-object/from16 v24, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v14, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_a

    iget-object v1, v14, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    .line 65
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v14, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    .line 66
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "m"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 67
    invoke-static {v12, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v1, p0

    move-object/from16 v14, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_5

    .line 68
    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Effect;->noteIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v10, Lcom/project7/localmanager/LocalDiaryEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/project7/localmanager/LocalDiaryEngine$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/LocalEventCatalog;)V

    invoke-interface {v1, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_7
    move-object/from16 v1, p0

    move-object/from16 v14, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_5

    .line 66
    :cond_8
    move-object/from16 v1, p0

    move-object/from16 v14, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_5

    .line 65
    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v14, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_5

    .line 64
    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v14, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_5

    .line 63
    :cond_b
    move-object/from16 v24, v10

    move-object/from16 v1, p0

    move-object/from16 v14, v22

    move-object/from16 v9, v23

    goto/16 :goto_5

    .line 60
    :cond_c
    move-object/from16 v24, v10

    move-object/from16 v22, v14

    goto :goto_6

    .line 58
    :cond_d
    move/from16 v20, v5

    move-object/from16 v24, v10

    move-object/from16 v22, v14

    .line 74
    :goto_6
    if-nez v8, :cond_e

    if-eqz v0, :cond_14

    .line 75
    :cond_e
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 76
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    const-string v5, "[cm][0-9]+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_7

    .line 79
    :cond_10
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x63

    if-eq v0, v8, :cond_11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_12
    goto :goto_7

    .line 80
    :catch_0
    move-exception v0

    goto :goto_7

    .line 85
    :cond_13
    invoke-interface {v1, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 86
    move-object v13, v1

    .line 88
    :cond_14
    iget-object v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    iget-object v4, v2, Lcom/project7/localmanager/LocalEventCatalog;->heroClears:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 90
    if-nez v1, :cond_15

    goto :goto_8

    .line 91
    :cond_15
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 92
    goto :goto_8

    .line 93
    :cond_16
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v4, "c"

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v12, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_9

    .line 96
    :cond_17
    iget-object v4, v2, Lcom/project7/localmanager/LocalEventCatalog;->heroClears:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 97
    if-nez v1, :cond_18

    goto :goto_9

    .line 98
    :cond_18
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 99
    goto :goto_9

    .line 102
    :cond_19
    invoke-interface {v13, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 105
    iget-object v8, v2, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    .line 106
    if-nez v5, :cond_1a

    goto :goto_a

    .line 107
    :cond_1a
    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog$Effect;->noteIds:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 108
    iget-object v9, v2, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 109
    if-eqz v9, :cond_1b

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1b
    goto :goto_b

    .line 111
    :cond_1c
    goto :goto_a

    .line 112
    :cond_1d
    nop

    .line 113
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v5, v19

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 114
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 115
    if-nez v10, :cond_1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    goto :goto_c

    .line 116
    :cond_1e
    iget-object v11, v2, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    .line 117
    if-nez v8, :cond_1f

    goto :goto_c

    .line 118
    :cond_1f
    iget-object v8, v8, Lcom/project7/localmanager/LocalEventCatalog$Effect;->noteIds:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 119
    iget-object v13, v2, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 120
    if-nez v13, :cond_20

    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v2, v24

    goto/16 :goto_10

    .line 121
    :cond_20
    const/4 v14, 0x0

    aget v9, v13, v14

    const/4 v14, 0x1

    if-ne v9, v14, :cond_23

    const-string v9, "pn"

    invoke-static {v5, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v23, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 124
    const/4 v2, 0x0

    :goto_e
    move-object/from16 v25, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_22

    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 126
    if-le v4, v14, :cond_21

    move v13, v2

    goto :goto_f

    .line 124
    :cond_21
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v25

    goto :goto_e

    .line 128
    :cond_22
    :goto_f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    invoke-static {v5, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    const-string v2, "ppn"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v5

    .line 130
    move-object/from16 v2, v24

    goto :goto_11

    .line 121
    :cond_23
    move-object/from16 v23, v1

    :cond_24
    move-object/from16 v25, v4

    .line 130
    if-eqz v10, :cond_26

    const/4 v1, 0x0

    aget v2, v13, v1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_26

    const/4 v1, 0x1

    aget v2, v13, v1

    if-lez v2, :cond_26

    .line 131
    aget v2, v13, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    move-object/from16 v2, v24

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 118
    :goto_10
    move-object/from16 v24, v2

    move-object/from16 v1, v23

    move-object/from16 v4, v25

    move-object/from16 v2, p1

    goto/16 :goto_d

    .line 133
    :cond_25
    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v1, v11}, Lcom/project7/localmanager/LocalDiaryEngine;->add([BLjava/lang/String;I)[B

    move-result-object v4

    invoke-static {v5, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 134
    const-string v5, "p"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v1, v11}, Lcom/project7/localmanager/LocalDiaryEngine;->add([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    goto :goto_11

    .line 130
    :cond_26
    move-object/from16 v2, v24

    .line 136
    :goto_11
    move-object/from16 v24, v2

    move-object/from16 v1, v23

    move-object/from16 v4, v25

    move-object/from16 v2, p1

    goto/16 :goto_d

    .line 137
    :cond_27
    move-object/from16 v23, v1

    move-object/from16 v25, v4

    move-object/from16 v2, v24

    move-object/from16 v2, p1

    goto/16 :goto_c

    .line 138
    :cond_28
    move-object/from16 v1, v19

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 139
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "q7DiaryRepairBackup"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_29

    .line 140
    iget-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v22, v8, v9

    .line 141
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v18, v8, v9

    const/4 v9, 0x3

    aput-object v1, v8, v9

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 140
    invoke-static {v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 142
    :cond_29
    iget-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diary repaired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalDiaryEngine;->diagnostic([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Project7Gateway"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 138
    :cond_2a
    move-object/from16 v2, p0

    .line 145
    :goto_12
    iget-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7DiaryWeek"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v4, v20

    if-eq v0, v4, :cond_2c

    goto :goto_13

    :cond_2b
    move/from16 v4, v20

    .line 147
    :goto_13
    iget-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 149
    :cond_2c
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 150
    iget-object v4, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v4

    .line 151
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_14

    .line 152
    :cond_2d
    const-string v5, "fd"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const-string v5, "cfd"

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 154
    :cond_2e
    iget-object v5, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v1, v4}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v1

    iput-object v1, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 155
    goto :goto_14

    .line 156
    :cond_2f
    iget-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    move-object/from16 v4, v16

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_30

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "d"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    iget-object v4, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncHeroMgrData"

    invoke-virtual {v2, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 158
    :cond_30
    return-void
.end method

.method static reset([BI)[B
    .locals 14

    .line 8
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "targetWeek"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "np"

    aput-object v5, v1, v2

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v1, v7

    .line 8
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v6, "q7DiaryBeforeReset"

    invoke-static {p0, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 10
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "n"

    aput-object v6, v1, v3

    sget-object v6, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v6, v1, v4

    const-string v6, "p"

    aput-object v6, v1, v2

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v2, v1, v7

    const-string v2, "pn"

    aput-object v2, v1, v0

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string v2, "ppn"

    aput-object v2, v1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 10
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 13
    const-string v0, "q7DiaryWeek"

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 14
    const-string p1, "heromgr"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 17
    const-string v1, "hrs"

    const-string v2, "bhrs"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 19
    nop

    .line 20
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 21
    const-string v9, "1"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalDiaryEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    .line 22
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v12, "cfd"

    invoke-static {v10, v12}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 23
    invoke-static {v10, v12, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    .line 24
    move v7, v4

    .line 26
    :cond_0
    new-instance v9, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v9, v8}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-eqz v7, :cond_2

    invoke-static {v0, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 29
    :cond_2
    goto :goto_0

    .line 30
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 31
    return-object p0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 199
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
