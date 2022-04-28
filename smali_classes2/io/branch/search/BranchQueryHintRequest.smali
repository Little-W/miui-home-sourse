.class public Lio/branch/search/BranchQueryHintRequest;
.super Lio/branch/search/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/f<",
        "Lio/branch/search/BranchQueryHintRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/branch/search/f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/BranchQueryHintRequest;->c:I

    return-void
.end method

.method public static create()Lio/branch/search/BranchQueryHintRequest;
    .locals 1

    new-instance v0, Lio/branch/search/BranchQueryHintRequest;

    invoke-direct {v0}, Lio/branch/search/BranchQueryHintRequest;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lio/branch/search/BranchQueryHintRequest;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const-string v2, "num"

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BranchQueryHintRequest.toJson"

    invoke-static {v2, v1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method
