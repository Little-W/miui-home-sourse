.class public abstract Lio/branch/search/AnalyticsEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/AnalyticsEntity$a;
    }
.end annotation


# instance fields
.field public apiName:Ljava/lang/String;

.field public requestId:Ljava/lang/String;

.field public resultId:Ljava/lang/Integer;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-static {}, Lio/branch/search/BranchAnalytics;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getClickJson()Lorg/json/JSONObject;
.end method

.method public getFullAnalyticsEntityName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionId()I
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->impressionable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract getImpressionJson()Lorg/json/JSONObject;
.end method

.method public abstract getParseJson()Lorg/json/JSONObject;
.end method

.method public abstract getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public impressionable()Z
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract prepareUnifiedEntity()Lio/branch/search/q3;
.end method
