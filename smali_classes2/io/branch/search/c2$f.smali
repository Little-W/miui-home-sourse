.class public abstract Lio/branch/search/c2$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public final d:Lio/branch/search/m0;

.field public final e:Lio/branch/search/k;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lio/branch/search/t1;

.field public final h:Lio/branch/search/t1;

.field public final i:Lio/branch/search/t1;

.field public final j:Lio/branch/search/l;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/m0;Lio/branch/search/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/c2$f;->f:Ljava/util/Map;

    new-instance v0, Lio/branch/search/t1;

    const-string v1, "ANA_"

    invoke-direct {v0, v1}, Lio/branch/search/t1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/c2$f;->g:Lio/branch/search/t1;

    new-instance v0, Lio/branch/search/t1;

    const-string v1, "ANL_"

    invoke-direct {v0, v1}, Lio/branch/search/t1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/c2$f;->h:Lio/branch/search/t1;

    new-instance v0, Lio/branch/search/t1;

    const-string v1, "ANR_"

    invoke-direct {v0, v1}, Lio/branch/search/t1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/c2$f;->i:Lio/branch/search/t1;

    iput-object p2, p0, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    iput-object p3, p0, Lio/branch/search/c2$f;->e:Lio/branch/search/k;

    iput-object p1, p0, Lio/branch/search/c2$f;->j:Lio/branch/search/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Lio/branch/search/l;)Lio/branch/search/BranchLocalAppResult;
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "linking"

    const-string v4, "image_url"

    const-string v5, "description"

    iget-object v6, v1, Lio/branch/search/c2$f;->i:Lio/branch/search/t1;

    invoke-virtual {v6, v0}, Lio/branch/search/t1;->b(Landroid/database/Cursor;)Z

    move-result v6

    const-string v7, "BaseLocal.cursorToAppResult"

    const-string v8, "request_id"

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    iget-object v3, v1, Lio/branch/search/c2$f;->i:Lio/branch/search/t1;

    invoke-virtual {v3, v0}, Lio/branch/search/t1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    invoke-virtual {v1, v0}, Lio/branch/search/m0;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/Pair;

    iget-object v1, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    iget-object v1, v1, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-direct {v0, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "requestExtras = null"

    invoke-virtual {v2, v7, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-object v9

    :cond_1
    const-string v6, "app_name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "app_store_id"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v10, "user_id"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v11

    const-class v12, Landroid/os/UserManager;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v12, v10

    invoke-virtual {v11, v12, v13}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v10

    :goto_1
    move-object/from16 v27, v10

    const-string v10, "app_icon_url"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v15, "ranking_hint"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v14, -0x1

    if-eq v10, v14, :cond_3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    goto :goto_2

    :cond_3
    move-object v13, v9

    :goto_2
    iget-object v10, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    invoke-virtual {v10}, Lio/branch/search/m0;->e()I

    move-result v10

    const-string v12, "entity_id"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v9, "name"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v7

    const-string v7, "bundle_source_id"

    move-object/from16 v18, v11

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v19, v14

    const/4 v14, -0x1

    if-eq v11, v14, :cond_4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    const-string v11, "app_linking"

    move-object/from16 v20, v12

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v14, :cond_5

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v11

    goto :goto_4

    :cond_5
    const/16 v21, 0x0

    :goto_4
    const-string v11, "app_click_tracking_url"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v14, :cond_6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    goto :goto_5

    :cond_6
    const/16 v22, 0x0

    :goto_5
    const-string v12, "container_type"

    const-string v11, "local_search"

    invoke-static {v0, v12, v11}, Lio/branch/search/c5;->b(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v8

    new-instance v8, Lio/branch/search/BranchLocalAppResult;

    iget-object v14, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    move-object/from16 v24, v11

    iget-object v11, v14, Lio/branch/search/m0;->h:Ljava/lang/String;

    iget-object v14, v14, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-object v10, v1, Lio/branch/search/c2$f;->e:Lio/branch/search/k;

    const/16 v30, 0x0

    move-object/from16 v31, v10

    move-object v10, v8

    move-object/from16 v32, v7

    move-object/from16 v34, v16

    move-object/from16 v7, v18

    move-object/from16 v33, v24

    move-object/from16 v36, v3

    move-object/from16 v35, v12

    move-object/from16 v3, v20

    move-object v12, v14

    move-object v14, v13

    move-object/from16 v13, v25

    move-object/from16 v37, v4

    move-object/from16 v38, v14

    move-object/from16 v4, v19

    move-object/from16 v14, v26

    move-object/from16 v39, v15

    move-object/from16 v15, v27

    move-object/from16 v16, v6

    move-object/from16 v18, v38

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v2

    move-object/from16 v22, v31

    move-object/from16 v23, v34

    move-object/from16 v25, v30

    invoke-direct/range {v10 .. v25}, Lio/branch/search/BranchLocalAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/branch/search/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    iget-object v11, v1, Lio/branch/search/c2$f;->g:Lio/branch/search/t1;

    invoke-virtual {v11, v0}, Lio/branch/search/t1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Lio/branch/search/m0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    if-nez v7, :cond_7

    if-nez v4, :cond_7

    return-object v8

    :cond_7
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v11, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v37

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, v33

    move-object/from16 v4, v35

    :try_start_1
    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v9, v38

    if-eqz v9, :cond_8

    move-object/from16 v4, v39

    invoke-virtual {v11, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string v4, "click_tracking_url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    const-string v4, "click_tracking_link"

    :try_start_2
    const-string v7, "click_tracking_url"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    move-object/from16 v4, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_a

    move-object/from16 v7, v34

    invoke-virtual {v11, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    const-string v3, "impression_url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_b

    const-string v3, "impression_url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    goto :goto_6

    :cond_b
    const/16 v19, 0x0

    :goto_6
    new-instance v3, Lio/branch/search/BranchLocalLinkResult;

    iget-object v4, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    iget-object v12, v4, Lio/branch/search/m0;->i:Ljava/lang/String;

    iget-object v13, v4, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lio/branch/search/m0;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v4, v1, Lio/branch/search/c2$f;->e:Lio/branch/search/k;

    move-object v10, v3

    move-object v15, v6

    move-object/from16 v16, v26

    move-object/from16 v17, v27

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v19}, Lio/branch/search/BranchLocalLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/k;Ljava/lang/String;)V

    iget-object v4, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    iget-object v5, v1, Lio/branch/search/c2$f;->h:Lio/branch/search/t1;

    invoke-virtual {v5, v0}, Lio/branch/search/t1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lio/branch/search/m0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    iget-object v0, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    invoke-virtual {v3, v0}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/m0;)Z

    move-result v0

    if-nez v0, :cond_c

    return-object v8

    :cond_c
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v3, v33

    :goto_7
    const-string v2, "suggested_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Lkotlin/Pair;

    iget-object v1, v1, Lio/branch/search/c2$f;->d:Lio/branch/search/m0;

    iget-object v1, v1, Lio/branch/search/m0;->f:Ljava/lang/String;

    move-object/from16 v3, v29

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-virtual {v2, v3, v0, v1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_d
    return-object v8
.end method

.method public b(Landroid/database/Cursor;)Z
    .locals 6

    const-string v0, "can_use_uncached_images"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    const-string v0, "app_icon_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/branch/search/c2$f;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/branch/search/c2$f;->f:Ljava/util/Map;

    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object v3

    new-instance v4, Lio/branch/search/w0;

    iget-object v5, p0, Lio/branch/search/c2$f;->e:Lio/branch/search/k;

    invoke-direct {v4, v0, v5}, Lio/branch/search/w0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v3, v4}, Lio/branch/search/v0;->a(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lio/branch/search/c2$f;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/branch/search/c2$f;->f:Ljava/util/Map;

    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object v1

    new-instance v3, Lio/branch/search/w0;

    iget-object p0, p0, Lio/branch/search/c2$f;->e:Lio/branch/search/k;

    invoke-direct {v3, p1, p0}, Lio/branch/search/w0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v1, v3}, Lio/branch/search/v0;->a(Lio/branch/search/w0;)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v2
.end method
