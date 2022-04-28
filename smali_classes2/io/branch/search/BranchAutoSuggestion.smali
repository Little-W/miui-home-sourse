.class public Lio/branch/search/BranchAutoSuggestion;
.super Lio/branch/search/AnalyticsEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchAutoSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/BranchAutoSuggestion$a;

    invoke-direct {v0}, Lio/branch/search/BranchAutoSuggestion$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchAutoSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object p2, p0, Lio/branch/search/BranchAutoSuggestion;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClickJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "autosuggestion"

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

    return-object v0
.end method

.method public getImpressionJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "autosuggestion"

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

    return-object v0
.end method

.method public getParseJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "autosuggestion"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchAutoSuggestion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "autosuggestion"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "reason"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public prepareUnifiedEntity()Lio/branch/search/q3;
    .locals 10

    new-instance v9, Lio/branch/search/q3;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v0, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lio/branch/search/BranchAutoSuggestion;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/branch/search/q3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V

    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchAutoSuggestion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchAutoSuggestion;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
