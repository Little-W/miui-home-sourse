.class public abstract Lio/branch/search/BranchBaseAppResult;
.super Lio/branch/search/AnalyticsEntity;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Link:Lio/branch/search/BranchBaseLinkResult;",
        ">",
        "Lio/branch/search/AnalyticsEntity;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/UserHandle;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:F

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "Link;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lio/branch/search/k;

.field public i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "T",
            "Link;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {v0, p0}, Lio/branch/search/BranchBaseLinkResult;->setParent(Lio/branch/search/BranchBaseAppResult;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/branch/search/k;->valueOf(Ljava/lang/String;)Lio/branch/search/k;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchBaseAppResult;)V
    .locals 3

    iget-object v0, p1, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v2, p1, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p1, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    iget v0, p1, Lio/branch/search/BranchBaseAppResult;->f:F

    iput v0, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/k;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/k;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    iput-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Lio/branch/search/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List<",
            "T",
            "Link;",
            ">;",
            "Lio/branch/search/k;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    iput-object p6, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    iput-object p7, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iput-object p8, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    iput p9, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    iput-object p10, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    iput-object p11, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/k;

    iput-object p12, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    iput-object p13, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    iput-object p14, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {v1, p0}, Lio/branch/search/BranchBaseLinkResult;->setParent(Lio/branch/search/BranchBaseAppResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getClickJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

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

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getContainerType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getImpressionJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

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

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "T",
            "Link;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getParseJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "reason"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v1, "container_type"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v1, "entity_type"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v1, "bundle_source_id"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getResultType()Lio/branch/search/k;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/k;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    return-object p0
.end method

.method public isAd()Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "featured"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadIconDrawable(Landroid/widget/ImageView;)V
    .locals 7

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/branch/search/g5;->a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/l;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p0, Lio/branch/search/R$id;->branch_url_id:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object v1

    new-instance v2, Lio/branch/search/w0;

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/k;

    invoke-direct {v2, v0, p0}, Lio/branch/search/w0;-><init>(Ljava/lang/String;Lio/branch/search/k;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/v0;->a(Lio/branch/search/w0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "App.loadIconDrawable"

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public prepareUnifiedEntity()Lio/branch/search/d4;
    .locals 11

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v10, Lio/branch/search/d4;

    iget-object v2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/branch/search/d4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V

    return-object v10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/k;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
