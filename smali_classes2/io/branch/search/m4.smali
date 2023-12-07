.class public Lio/branch/search/m4;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lio/branch/search/m0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/branch/search/i3;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;",
            "Lio/branch/search/m0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    invoke-static/range {p2 .. p2}, Lio/branch/search/m4;->a(Ljava/util/List;)Ljava/util/Map;

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

    check-cast v6, Lio/branch/search/i3;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lkotlin/Pair;

    iget-object v7, v6, Lio/branch/search/i3;->a:Ljava/lang/String;

    iget-object v8, v6, Lio/branch/search/i3;->b:Ljava/lang/Long;

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

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/l3;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v8, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v10, "entity_id"

    :try_start_1
    invoke-virtual {v0}, Lio/branch/search/l3;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    const-string v10, "name"

    :try_start_2
    iget-object v11, v0, Lio/branch/search/l3;->e:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    const-string v10, "linking"

    :try_start_3
    invoke-virtual {v0}, Lio/branch/search/l3;->b()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "container_type"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v14, p4

    :try_start_4
    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "entity_type"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v13, p5

    :try_start_5
    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lio/branch/search/BranchLocalLinkResult;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v18, "local_search"

    :try_start_6
    iget-object v10, v1, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/m0;->e()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v11, v6, Lio/branch/search/i3;->c:Ljava/lang/String;

    iget-object v12, v6, Lio/branch/search/i3;->a:Ljava/lang/String;

    iget-object v8, v6, Lio/branch/search/i3;->b:Ljava/lang/Long;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 p2, v4

    move-object/from16 p1, v5

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v23

    sget-object v24, Lio/branch/search/k;->c:Lio/branch/search/k;

    const-string v25, ""

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v25}, Lio/branch/search/BranchLocalLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/k;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lio/branch/search/m0;->c(Lio/branch/search/AnalyticsEntity;)V

    invoke-virtual {v0, v1}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/m0;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v14, p4

    :goto_2
    move-object/from16 v13, p5

    :goto_3
    move-object/from16 p2, v4

    move-object/from16 p1, v5

    :goto_4
    const-string v4, "RoomLocalSearchResultFactory.createResults"

    invoke-static {v4, v0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_5
    move-object/from16 v5, p1

    move-object/from16 v4, p2

    const/4 v8, 0x3

    goto/16 :goto_1

    :cond_2
    :goto_6
    move-object/from16 v14, p4

    move-object/from16 v13, p5

    move-object/from16 p2, v4

    move-object/from16 p1, v5

    new-instance v0, Lio/branch/search/BranchLocalAppResult;

    iget-object v8, v1, Lio/branch/search/m0;->h:Ljava/lang/String;

    iget-object v9, v1, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lio/branch/search/m0;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v6, Lio/branch/search/i3;->a:Ljava/lang/String;

    iget-object v4, v6, Lio/branch/search/i3;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v12

    iget-object v4, v6, Lio/branch/search/i3;->d:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_7

    :cond_3
    iget-object v4, v6, Lio/branch/search/i3;->c:Ljava/lang/String;

    :goto_7
    sget-object v19, Lio/branch/search/k;->c:Lio/branch/search/k;

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v20, "room"

    move-object v7, v0

    move-object v13, v4

    move-object v14, v5

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v4

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v7 .. v22}, Lio/branch/search/BranchLocalAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/branch/search/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v6, Lio/branch/search/i3;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Lio/branch/search/m4$a;

    invoke-direct {v4}, Lio/branch/search/m4$a;-><init>()V

    invoke-virtual {v1, v0, v4}, Lio/branch/search/m0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    goto :goto_8

    :cond_4
    invoke-virtual {v1, v0}, Lio/branch/search/m0;->c(Lio/branch/search/AnalyticsEntity;)V

    :goto_8
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p1

    move-object/from16 v4, p2

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
            "Lio/branch/search/l3;",
            ">;)",
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
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

    check-cast v1, Lio/branch/search/l3;

    new-instance v2, Lkotlin/Pair;

    iget-object v3, v1, Lio/branch/search/l3;->a:Ljava/lang/String;

    iget-object v4, v1, Lio/branch/search/l3;->b:Ljava/lang/Long;

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
