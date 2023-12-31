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
    .locals 2

    invoke-super {p0}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget p0, p0, Lio/branch/search/BranchQueryHintRequest;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const-string v1, "num"

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BranchQueryHintRequest.toJson"

    invoke-static {v1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method
