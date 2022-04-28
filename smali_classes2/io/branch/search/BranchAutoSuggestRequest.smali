.class public Lio/branch/search/BranchAutoSuggestRequest;
.super Lio/branch/search/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchAutoSuggestRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/BranchAutoSuggestRequest;->c:I

    iput-object p1, p0, Lio/branch/search/BranchAutoSuggestRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/branch/search/BranchAutoSuggestRequest;
    .locals 1

    new-instance v0, Lio/branch/search/BranchAutoSuggestRequest;

    invoke-direct {v0, p0}, Lio/branch/search/BranchAutoSuggestRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/s3;
    .locals 8

    new-instance v7, Lio/branch/search/s3;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lio/branch/search/BranchAutoSuggestRequest;->d:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v5, v0}, Lio/branch/search/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/s3;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_query"

    :try_start_0
    iget-object v2, p0, Lio/branch/search/BranchAutoSuggestRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lio/branch/search/BranchAutoSuggestRequest;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const-string v2, "limit"

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BranchAutoSuggestRequest.toJson"

    invoke-static {v2, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchAutoSuggestRequest;->d:Ljava/lang/String;

    return-object v0
.end method
