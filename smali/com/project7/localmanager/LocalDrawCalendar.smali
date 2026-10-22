.class final Lcom/project7/localmanager/LocalDrawCalendar;
.super Ljava/lang/Object;
.source "LocalDrawCalendar.java"


# static fields
.field static final DATA_SYNC:Ljava/lang/String; = "import com.data.cdata.activity_config as ac; import com.data.cdata.chouka_info as ci; import com.utils.runtime_mapping_table as mt; ac.data=dict(ac.data); ac.data[175]=dict(ac.data[175]); ci.data=dict(ci.data); ci.data[484]=dict(ci.data[484]); ac.data[175][\'open_range\']=(2021,9,22,7,0,0,2035,9,22,7,0,0); ci.data[484][\'begin_time\']=(2016,1,1,7,0,0,0,0,0); ci.data[484][\'end_time\']=(2035,9,22,7,0,0,0,0,0); mt.reload(); mt._CELL_MAPPING_CONFIG.setdefault(\'chouka_info\',{}).setdefault(484,{}).update({\'begin_time\':ci.data[484][\'begin_time\'],\'end_time\':ci.data[484][\'end_time\']}); print(\'local_draw_calendar_v3\', ci.data[484][\'end_time\'], mt.get_table(\'chouka_info\').data.get(484,{}).get(\'end_time\'))"

.field static final HOME_DATA_SYNC:Ljava/lang/String; = "import com.data.cdata.chouka_info as _q7_hci; import com.data.cdata.furniture_delivery as _q7_hfd; import com.utils.runtime_mapping_table as _q7_hmt; _q7_hci.data=dict(_q7_hci.data); _q7_hci.data[162]=dict(_q7_hci.data[162]); _q7_hfd.data=dict(_q7_hfd.data); _q7_hfd.data[162]=dict(_q7_hfd.data[162]); _q7_hci.data[162].update({\'begin_time\':(2019,9,11,7,0,5,0,0,0),\'end_time\':(2035,9,11,7,0,5,0,0,0)}); _q7_hfd.data[162].update({\'begin_time\':_q7_hci.data[162][\'begin_time\'],\'end_time\':_q7_hci.data[162][\'end_time\']}); _q7_hmt.reload(); _q7_hmt._CELL_MAPPING_CONFIG.setdefault(\'chouka_info\',{}).setdefault(162,{}).update({\'begin_time\':_q7_hci.data[162][\'begin_time\'],\'end_time\':_q7_hci.data[162][\'end_time\']})"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static repairSelection([BLcom/project7/localmanager/LocalResourceCatalog;)[B
    .locals 10

    .line 29
    iget-object p1, p1, Lcom/project7/localmanager/LocalResourceCatalog;->pools:Ljava/util/Map;

    const/16 v0, 0x1e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;

    .line 30
    if-nez p1, :cond_0

    return-object p0

    .line 31
    :cond_0
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v1

    .line 32
    const-string v2, "ch"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->stamp:I

    if-eq v6, v7, :cond_2

    iget-object v6, p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->s:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->a:Ljava/util/List;

    .line 34
    const/4 v8, 0x2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v6, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 36
    new-array p0, v5, [Ljava/lang/Integer;

    iget p1, p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->stamp:I

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v8

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 36
    invoke-static {v1, v2, p0}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p0

    invoke-static {v6, p0, v0}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V

    .line 38
    iget-object p0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    return-object p0

    .line 34
    :cond_2
    :goto_0
    return-object p0
.end method
