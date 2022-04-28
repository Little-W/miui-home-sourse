.class public abstract Lio/branch/search/BranchBaseLinkResult;
.super Lio/branch/search/AnalyticsEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/branch/search/q;


# instance fields
.field private app_name:Ljava/lang/String;

.field private bundle_source_id:Ljava/lang/String;

.field private cachedShortcut:Lio/branch/search/i$h;

.field private cachedShortcutSearchDone:Z

.field private click_tracking_url:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field public destination_store_id:Ljava/lang/String;

.field public entity_id:Ljava/lang/String;

.field public final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/i;",
            ">;"
        }
    .end annotation
.end field

.field public image_url:Ljava/lang/String;

.field private impressionUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Lio/branch/search/BranchBaseAppResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;"
        }
    .end annotation
.end field

.field public ranking_hint:Ljava/lang/String;

.field private resultType:Lio/branch/search/k;

.field public userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/i$h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    sget-object v1, Lio/branch/search/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/k;->valueOf(Ljava/lang/String;)Lio/branch/search/k;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/k;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    const/4 p3, 0x0

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/i$h;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    const-string p3, "entity_id"

    invoke-static {p1, p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string p3, "name"

    invoke-static {p1, p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    const-string p3, "description"

    invoke-static {p1, p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    const-string p3, "image_url"

    invoke-static {p1, p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    const-string p3, "click_tracking_link"

    invoke-static {p1, p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    const-string p3, "ranking_hint"

    invoke-static {p1, p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    const-string p3, "bundle_source_id"

    invoke-static {p1, p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    iput-object p9, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    const-string p3, "linking"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/s;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iput-object p7, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/k;

    iput-object p8, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    return-void
.end method

.method private findShortcut(Ljava/util/List;)Lio/branch/search/i$h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/i;",
            ">;)",
            "Lio/branch/search/i$h;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/i;

    instance-of v1, v0, Lio/branch/search/i$h;

    if-eqz v1, :cond_1

    check-cast v0, Lio/branch/search/i$h;

    return-object v0

    :cond_1
    instance-of v1, v0, Lio/branch/search/i$l;

    if-eqz v1, :cond_0

    check-cast v0, Lio/branch/search/i$l;

    iget-object v0, v0, Lio/branch/search/i$l;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut(Ljava/util/List;)Lio/branch/search/i$h;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findShortcut()Lio/branch/search/i$h;
    .locals 1

    iget-boolean v0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut(Ljava/util/List;)Lio/branch/search/i$h;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/i$h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    :cond_0
    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/i$h;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getClickJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_window_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_window_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParseJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "reason"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v1, "bundle_source_id"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public isAd()Z
    .locals 2

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "featured"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadImageDrawable(Landroid/widget/ImageView;)V
    .locals 6

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut()Lio/branch/search/i$h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    iget-object v0, v0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lio/branch/search/u4;->a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lio/branch/search/l;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/branch/search/u4;->a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/l;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, p0, Lio/branch/search/BranchLinkResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lio/branch/search/BranchLinkResult;

    invoke-virtual {v1}, Lio/branch/search/BranchLinkResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lio/branch/search/k0;->b()Lio/branch/search/k0;

    move-result-object v2

    new-instance v3, Lio/branch/search/l0;

    iget-object v4, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/k;

    invoke-direct {v3, v4, v5}, Lio/branch/search/l0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v2, v3, p1, v0, v1}, Lio/branch/search/k0;->a(Lio/branch/search/l0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lio/branch/search/k0;->b()Lio/branch/search/k0;

    move-result-object v3

    new-instance v4, Lio/branch/search/l0;

    iget-object v5, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/k;

    invoke-direct {v4, v1, v5}, Lio/branch/search/l0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    invoke-virtual {v3, v4, p1, v0, v2}, Lio/branch/search/k0;->a(Lio/branch/search/l0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v0, "Link.loadImageDrawable"

    invoke-static {v0, p1}, Lio/branch/search/b0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;
    .locals 9

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->registerClickEventInternal()V

    new-instance v8, Lio/branch/search/p3;

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/branch/search/p3;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {v0, v8}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/p3;)V

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/i;

    invoke-virtual {v1, p1, p0}, Lio/branch/search/i;->c(Landroid/content/Context;Lio/branch/search/q;)Lio/branch/search/i$g;

    move-result-object v2

    iget-boolean v3, v2, Lio/branch/search/i$g;->a:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p1

    invoke-static {v1}, Lio/branch/search/i;->a(Lio/branch/search/i;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lio/branch/search/i$g;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, p0, v0, v1}, Lio/branch/search/l;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v0, "LINK_FAILED_TO_OPEN"

    invoke-static {v0, p1}, Lio/branch/search/b0;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/BranchSearchError;

    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p1, v0}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    return-object p1
.end method

.method public prepareUnifiedEntity()Lio/branch/search/q3;
    .locals 12

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut()Lio/branch/search/i$h;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    move-object v8, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iget-object v0, v0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    move-object v9, v1

    new-instance v0, Lio/branch/search/q3;

    iget-object v4, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V

    return-object v0
.end method

.method public registerClickEventInternal()V
    .locals 4

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    sget-object v1, Lio/branch/search/e5;->k:Lio/branch/search/e5;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lio/branch/search/p0;->a(Ljava/lang/String;Lio/branch/search/e1;Lio/branch/search/e5;Lio/branch/search/l;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setParent(Lio/branch/search/BranchBaseAppResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->parent:Lio/branch/search/BranchBaseAppResult;

    return-void
.end method

.method public validate(Lio/branch/search/c0;)Z
    .locals 4

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/i;

    invoke-virtual {v2}, Lio/branch/search/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_1
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/i;

    invoke-virtual {v2, v0, p0}, Lio/branch/search/i;->b(Landroid/content/Context;Lio/branch/search/q;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "Entity failed the linking validation test."

    invoke-virtual {p1, p0, v0}, Lio/branch/search/c0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/k;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
