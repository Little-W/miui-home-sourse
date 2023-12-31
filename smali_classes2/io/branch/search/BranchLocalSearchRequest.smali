.class public Lio/branch/search/BranchLocalSearchRequest;
.super Lio/branch/search/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchLocalSearchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Lio/branch/search/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    sget-object v0, Lio/branch/search/j;->d:Lio/branch/search/j;

    iput-object v0, p0, Lio/branch/search/BranchLocalSearchRequest;->e:Lio/branch/search/j;

    iput-object p1, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/branch/search/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/branch/search/BranchLocalSearchRequest;
    .locals 1

    new-instance v0, Lio/branch/search/BranchLocalSearchRequest;

    invoke-direct {v0, p0}, Lio/branch/search/BranchLocalSearchRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/f4;
    .locals 8

    new-instance v7, Lio/branch/search/f4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/f4;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public a()Lorg/json/JSONObject;
    .locals 5

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "query_source"

    :try_start_0
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->e:Lio/branch/search/j;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    const-string v1, "user_query_len"

    :try_start_1
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "user_query"

    :try_start_2
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "user_query_norm"

    :try_start_3
    iget-object v2, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "BranchLocalSearchRequest.toJson"

    invoke-static {v1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchLocalSearchRequest;->c:Ljava/lang/String;

    return-object p0
.end method
