.class public final Lio/branch/search/BranchRemoteZeroStateResult;
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


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchAppResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lio/branch/search/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static createFromJson(Lio/branch/search/BranchZeroStateRequest;Lorg/json/JSONObject;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchZeroStateRequest;",
            "Lorg/json/JSONObject;",
            ")",
            "Lkotlin/Pair<",
            "Lio/branch/search/BranchRemoteZeroStateResult;",
            "Lio/branch/search/c0;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/branch/search/c0;

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "remote_zero_state"

    const-string v3, "remote_app"

    const-string v4, "remote_zero_state"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/branch/search/c0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, p1}, Lio/branch/search/BranchSearchResult;->a(Lio/branch/search/c0;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    new-instance v0, Lio/branch/search/BranchRemoteZeroStateResult;

    iget-object v1, v6, Lio/branch/search/c0;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lio/branch/search/BranchRemoteZeroStateResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p1, v0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
