.class public abstract Lio/branch/search/p1$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public final d:Lio/branch/search/c0;

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

.field public final g:Lio/branch/search/h1;

.field public final h:Lio/branch/search/h1;

.field public final i:Lio/branch/search/l;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/c0;Lio/branch/search/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/p1$f;->f:Ljava/util/Map;

    new-instance v0, Lio/branch/search/h1;

    const-string v1, "ANA_"

    invoke-direct {v0, v1}, Lio/branch/search/h1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/p1$f;->g:Lio/branch/search/h1;

    new-instance v0, Lio/branch/search/h1;

    const-string v1, "ANL_"

    invoke-direct {v0, v1}, Lio/branch/search/h1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/p1$f;->h:Lio/branch/search/h1;

    iput-object p2, p0, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    iput-object p3, p0, Lio/branch/search/p1$f;->e:Lio/branch/search/k;

    iput-object p1, p0, Lio/branch/search/p1$f;->i:Lio/branch/search/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Lio/branch/search/l;)Lio/branch/search/BranchLocalAppResult;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "app_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_store_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v3, "user_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const-string v4, "user_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v3

    :goto_0
    move-object/from16 v18, v3

    const-string v3, "app_icon_url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "ranking_hint"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/16 v19, 0x0

    const/4 v15, -0x1

    if-eq v3, v15, :cond_1

    const-string v3, "ranking_hint"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_1

    :cond_1
    move-object/from16 v14, v19

    :goto_1
    iget-object v3, v1, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    invoke-virtual {v3}, Lio/branch/search/c0;->e()I

    move-result v3

    const-string v4, "entity_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "bundle_source_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v15, :cond_2

    const-string v4, "bundle_source_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_2

    :cond_2
    move-object/from16 v9, v19

    :goto_2
    const-string v4, "app_linking"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v15, :cond_3

    const-string v4, "app_linking"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_3

    :cond_3
    move-object/from16 v16, v19

    :goto_3
    const-string v4, "app_click_tracking_url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v15, :cond_4

    const-string v4, "app_click_tracking_url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_4

    :cond_4
    move-object/from16 v20, v19

    :goto_4
    new-instance v8, Lio/branch/search/BranchLocalAppResult;

    iget-object v4, v1, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    iget-object v5, v4, Lio/branch/search/c0;->g:Ljava/lang/String;

    iget-object v6, v4, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v4, v1, Lio/branch/search/p1$f;->e:Lio/branch/search/k;

    move-object v3, v8

    move-object/from16 v21, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v17

    move-object/from16 v22, v8

    move-object/from16 v8, v18

    move-object/from16 v23, v9

    move-object v9, v2

    move-object/from16 v24, v11

    move-object v11, v14

    move-object/from16 v25, v2

    move-object v2, v12

    move-object/from16 v12, v16

    move-object/from16 v26, v2

    move-object v2, v13

    move-object/from16 v13, v20

    move-object/from16 v27, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v21

    move-object/from16 v16, v23

    invoke-direct/range {v3 .. v16}, Lio/branch/search/BranchLocalAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/branch/search/k;Ljava/lang/String;)V

    iget-object v3, v1, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    iget-object v4, v1, Lio/branch/search/p1$f;->g:Lio/branch/search/h1;

    invoke-virtual {v4, v0}, Lio/branch/search/h1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v13, v22

    invoke-virtual {v3, v13, v4}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    if-nez v2, :cond_5

    if-nez v26, :cond_5

    return-object v13

    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "entity_id"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    move-object/from16 v3, v26

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "description"

    :try_start_1
    const-string v3, "description"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "image_url"

    :try_start_2
    const-string v3, "image_url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "linking"

    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    const-string v5, "linking"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v27

    if-eqz v3, :cond_6

    const-string v2, "ranking_hint"

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v2, "click_tracking_url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    const-string v2, "click_tracking_link"

    :try_start_4
    const-string v5, "click_tracking_url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v2, "bundle_source_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_8

    const-string v2, "bundle_source_id"

    move-object/from16 v5, v23

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_8
    const-string v2, "impression_url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_9

    const-string v2, "impression_url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_5

    :cond_9
    move-object/from16 v12, v19

    :goto_5
    new-instance v2, Lio/branch/search/BranchLocalLinkResult;

    iget-object v3, v1, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    iget-object v5, v3, Lio/branch/search/c0;->h:Ljava/lang/String;

    iget-object v6, v3, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-virtual {v3}, Lio/branch/search/c0;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v11, v1, Lio/branch/search/p1$f;->e:Lio/branch/search/k;

    move-object v3, v2

    move-object/from16 v8, v25

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    invoke-direct/range {v3 .. v12}, Lio/branch/search/BranchLocalLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/k;Ljava/lang/String;)V

    iget-object v3, v1, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    iget-object v4, v1, Lio/branch/search/p1$f;->h:Lio/branch/search/h1;

    invoke-virtual {v4, v0}, Lio/branch/search/h1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    iget-object v0, v1, Lio/branch/search/p1$f;->d:Lio/branch/search/c0;

    invoke-virtual {v2, v0}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/c0;)Z

    move-result v0

    if-nez v0, :cond_a

    return-object v13

    :cond_a
    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v13

    :catch_0
    move-exception v0

    const-string v2, "BaseLocal.cursorToAppResult"

    move-object/from16 v3, p2

    invoke-virtual {v3, v2, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v13
.end method

.method public b(Landroid/database/Cursor;)Z
    .locals 6

    const-string v0, "can_use_uncached_images"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const-string v0, "can_use_uncached_images"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    const-string v0, "app_icon_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "image_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lio/branch/search/p1$f;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/branch/search/p1$f;->f:Ljava/util/Map;

    invoke-static {}, Lio/branch/search/k0;->b()Lio/branch/search/k0;

    move-result-object v3

    new-instance v4, Lio/branch/search/l0;

    iget-object v5, p0, Lio/branch/search/p1$f;->e:Lio/branch/search/k;

    invoke-direct {v4, p1, v5}, Lio/branch/search/l0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v3, v4}, Lio/branch/search/k0;->a(Lio/branch/search/l0;)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lio/branch/search/p1$f;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/branch/search/p1$f;->f:Ljava/util/Map;

    invoke-static {}, Lio/branch/search/k0;->b()Lio/branch/search/k0;

    move-result-object v2

    new-instance v3, Lio/branch/search/l0;

    iget-object v4, p0, Lio/branch/search/p1$f;->e:Lio/branch/search/k;

    invoke-direct {v3, p1, v4}, Lio/branch/search/l0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v2, v3}, Lio/branch/search/k0;->a(Lio/branch/search/l0;)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method
