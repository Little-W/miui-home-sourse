.class public Lio/branch/search/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lio/branch/search/c0;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/branch/search/v2;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/y2;",
            ">;",
            "Lio/branch/search/c0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p3

    const-class v0, Landroid/os/UserManager;

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Lio/branch/search/z3;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/branch/search/v2;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lkotlin/Pair;

    iget-object v7, v6, Lio/branch/search/v2;->a:Ljava/lang/String;

    iget-object v8, v6, Lio/branch/search/v2;->b:Ljava/lang/Long;

    invoke-direct {v0, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/y2;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v8, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "entity_id"

    :try_start_1
    invoke-virtual {v0}, Lio/branch/search/y2;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "name"

    :try_start_2
    iget-object v11, v0, Lio/branch/search/y2;->e:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v10, "linking"

    :try_start_3
    invoke-virtual {v0}, Lio/branch/search/y2;->b()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lio/branch/search/BranchLocalLinkResult;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v18, "local_search"

    :try_start_4
    iget-object v10, v1, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/c0;->e()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v11, v6, Lio/branch/search/v2;->c:Ljava/lang/String;

    iget-object v12, v6, Lio/branch/search/v2;->a:Ljava/lang/String;

    iget-object v13, v6, Lio/branch/search/v2;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v23

    sget-object v24, Lio/branch/search/k;->c:Lio/branch/search/k;

    const-string v25, ""

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v25}, Lio/branch/search/BranchLocalLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/k;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lio/branch/search/c0;->c(Lio/branch/search/AnalyticsEntity;)V

    invoke-virtual {v0, v1}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/c0;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v9, "RoomLocalSearchResultFactory.createResults"

    invoke-static {v9, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v0, Lio/branch/search/BranchLocalAppResult;

    iget-object v8, v1, Lio/branch/search/c0;->g:Ljava/lang/String;

    iget-object v9, v1, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/c0;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v6, Lio/branch/search/v2;->a:Ljava/lang/String;

    iget-object v7, v6, Lio/branch/search/v2;->b:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v12

    iget-object v7, v6, Lio/branch/search/v2;->d:Ljava/lang/String;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    iget-object v7, v6, Lio/branch/search/v2;->c:Ljava/lang/String;

    :goto_3
    move-object v13, v7

    sget-object v19, Lio/branch/search/k;->c:Lio/branch/search/k;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v20, "room"

    move-object v7, v0

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    invoke-direct/range {v7 .. v20}, Lio/branch/search/BranchLocalAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/branch/search/k;Ljava/lang/String;)V

    iget-object v6, v6, Lio/branch/search/v2;->d:Ljava/lang/String;

    if-eqz v6, :cond_4

    new-instance v6, Lio/branch/search/z3$a;

    invoke-direct {v6}, Lio/branch/search/z3$a;-><init>()V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v0}, Lio/branch/search/c0;->c(Lio/branch/search/AnalyticsEntity;)V

    :goto_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v3
.end method

.method public static a(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/y2;",
            ">;)",
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/y2;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/y2;

    new-instance v2, Lkotlin/Pair;

    iget-object v3, v1, Lio/branch/search/y2;->a:Ljava/lang/String;

    iget-object v4, v1, Lio/branch/search/y2;->b:Ljava/lang/Long;

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
