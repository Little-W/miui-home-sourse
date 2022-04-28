.class public Lio/branch/search/BranchSearchRequest;
.super Lio/branch/search/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchSearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Lio/branch/search/j;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    sget-object v0, Lio/branch/search/j;->d:Lio/branch/search/j;

    iput-object v0, p0, Lio/branch/search/BranchSearchRequest;->e:Lio/branch/search/j;

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/BranchSearchRequest;->f:I

    iput v0, p0, Lio/branch/search/BranchSearchRequest;->g:I

    iput-object p1, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/branch/search/BranchSearchRequest;
    .locals 1

    new-instance v0, Lio/branch/search/BranchSearchRequest;

    invoke-direct {v0, p0}, Lio/branch/search/BranchSearchRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/s3;
    .locals 8

    new-instance v7, Lio/branch/search/s3;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

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

    :try_start_0
    iget v1, p0, Lio/branch/search/BranchSearchRequest;->f:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const-string v2, "limit_app_results"

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget v1, p0, Lio/branch/search/BranchSearchRequest;->g:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v1, :cond_1

    const-string v2, "limit_link_results"

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    const-string v1, "user_query"

    :try_start_3
    iget-object v2, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lio/branch/search/BranchSearchRequest;->d:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_2

    const-string v1, "do_not_modify"

    :try_start_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    const-string v1, "query_source"

    :try_start_5
    iget-object v2, p0, Lio/branch/search/BranchSearchRequest;->e:Lio/branch/search/j;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BranchSearchRequest.toJson"

    invoke-static {v2, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchSearchRequest;->c:Ljava/lang/String;

    return-object v0
.end method
