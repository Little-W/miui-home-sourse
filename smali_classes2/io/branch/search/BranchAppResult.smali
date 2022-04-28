.class public Lio/branch/search/BranchAppResult;
.super Lio/branch/search/BranchBaseAppResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/BranchBaseAppResult<",
        "Lio/branch/search/BranchLinkResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchAppResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/BranchAppResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchAppResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchAppResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    sget-object v0, Lio/branch/search/BranchLinkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lio/branch/search/BranchBaseAppResult;-><init>(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lio/branch/search/BranchAppResult$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchAppResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLio/branch/search/k;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Lio/branch/search/k;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLinkResult;",
            ">;)V"
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lio/branch/search/BranchBaseAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Lio/branch/search/k;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lio/branch/search/c0;Lorg/json/JSONObject;)Lio/branch/search/BranchAppResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "app_name"

    invoke-static {v1, v2}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_store_id"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "app_icon_url"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "score"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v14, v3

    const-string v3, "ranking_hint"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "deepview_extra_text"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "request_id"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Lio/branch/search/Util;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    const-string v3, "impression_url"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "deep_links"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    if-eqz v11, :cond_2

    move v8, v9

    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v8, v3, :cond_2

    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    move/from16 v21, v8

    move-object/from16 v23, v11

    move/from16 v20, v14

    move-object/from16 v22, v15

    move-object v15, v10

    goto :goto_1

    :cond_0
    new-instance v7, Lio/branch/search/BranchLinkResult;

    iget-object v6, v0, Lio/branch/search/c0;->h:Ljava/lang/String;

    move-object v3, v7

    move-object/from16 v5, v17

    move/from16 v20, v14

    move-object v14, v7

    move-object v7, v2

    move/from16 v21, v8

    move-object v8, v12

    move-object/from16 v22, v15

    move v15, v9

    move-object v9, v13

    move-object v15, v10

    move-object/from16 v10, v16

    move-object/from16 v23, v11

    move-object/from16 v11, v19

    invoke-direct/range {v3 .. v11}, Lio/branch/search/BranchLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lio/branch/search/c0;->c(Lio/branch/search/AnalyticsEntity;)V

    invoke-virtual {v14, v0}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/c0;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v8, v21, 0x1

    move-object v10, v15

    move/from16 v14, v20

    move-object/from16 v15, v22

    move-object/from16 v11, v23

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    move/from16 v20, v14

    move-object/from16 v22, v15

    move-object v15, v10

    if-nez v18, :cond_4

    const-string v3, "not_installed_max_results"

    const v4, 0x7fffffff

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v1

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/BranchLinkResult;

    const-string v5, "Results exceed the not_installed_max_results value."

    invoke-virtual {v0, v4, v5}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v15, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v15, v1

    :cond_4
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    new-instance v1, Lio/branch/search/BranchAppResult;

    iget-object v4, v0, Lio/branch/search/c0;->g:Ljava/lang/String;

    sget-object v0, Lio/branch/search/k;->e:Lio/branch/search/k;

    const/16 v6, -0x4d2

    move-object v3, v1

    move-object/from16 v5, v17

    move-object v7, v12

    move-object v8, v2

    move-object v9, v13

    move-object/from16 v10, v22

    move/from16 v11, v20

    move-object v12, v0

    move-object v13, v15

    invoke-direct/range {v3 .. v13}, Lio/branch/search/BranchAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLio/branch/search/k;Ljava/util/List;)V

    return-object v1
.end method
