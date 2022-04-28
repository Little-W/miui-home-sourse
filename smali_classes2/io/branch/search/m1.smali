.class public final Lio/branch/search/m1;
.super Lio/branch/search/i1;
.source "SourceFile"


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lio/branch/search/i1;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lio/branch/search/i1;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/branch/search/i1;-><init>()V

    iput-object p1, p0, Lio/branch/search/m1;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/branch/search/m1;->b:Lio/branch/search/i1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lio/branch/search/m1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/branch/search/m1;->b:Lio/branch/search/i1;

    invoke-virtual {v0, p1}, Lio/branch/search/i1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string p1, "json.opt(name)?.toString() ?: fallback.bind(name)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "JoinBinding"

    const-string v1, "Safety net.... for now."

    invoke-static {v0, v1, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_1
    return-object v0
.end method
