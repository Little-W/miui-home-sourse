.class public Lio/branch/search/BranchSearchResult;
.super Lio/branch/search/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/d<",
        "Lio/branch/search/BranchAppResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/branch/search/BranchSearchRequest;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lio/branch/search/BranchSearchRequest;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppResult;",
            ">;",
            "Ljava/lang/String;",
            "Lio/branch/search/BranchSearchRequest;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lio/branch/search/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p3, p0, Lio/branch/search/BranchSearchResult;->b:Lio/branch/search/BranchSearchRequest;

    iput-object p4, p0, Lio/branch/search/BranchSearchResult;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lio/branch/search/c0;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/c0;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "results"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "request_id"

    :try_start_0
    iget-object v4, p0, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "BranchSearchResult.createFromJson"

    invoke-static {v4, v3}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {p0, v2}, Lio/branch/search/BranchAppResult;->a(Lio/branch/search/c0;Lorg/json/JSONObject;)Lio/branch/search/BranchAppResult;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Lio/branch/search/BranchSearchRequest;Lorg/json/JSONObject;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchSearchRequest;",
            "Lorg/json/JSONObject;",
            ")",
            "Lkotlin/Pair<",
            "Lio/branch/search/BranchSearchResult;",
            "Lio/branch/search/c0;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/branch/search/c0;

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "search"

    const-string v3, "remote_app"

    const-string v4, "search"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p1}, Lio/branch/search/BranchSearchResult;->a(Lio/branch/search/c0;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    new-instance v2, Lio/branch/search/BranchSearchResult;

    iget-object v3, v6, Lio/branch/search/c0;->e:Ljava/lang/String;

    const-string v4, "search_query_string"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, v3, p0, p1}, Lio/branch/search/BranchSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;Lio/branch/search/BranchSearchRequest;Ljava/lang/String;)V

    invoke-direct {v1, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getBranchSearchRequest()Lio/branch/search/BranchSearchRequest;
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchSearchResult;->b:Lio/branch/search/BranchSearchRequest;

    return-object v0
.end method
