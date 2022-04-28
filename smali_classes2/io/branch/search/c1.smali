.class public final Lio/branch/search/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/c1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/c1$a;


# instance fields
.field public final a:Lio/branch/search/e5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/c1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/c1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/c1;->Companion:Lio/branch/search/c1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/e5;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/c1;Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)Lio/branch/search/s4;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/c1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/s4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/c1;Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/c1;->a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lio/branch/search/e5;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    return-object v0
.end method

.method public final a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/s4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lio/branch/search/l;",
            "Lio/branch/search/BranchSearchError$ERR_CODE;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lio/branch/search/s4<",
            "Lio/branch/search/BranchSearchError;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-static {p4}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const-string p1, "exception"

    const-string v0, "exception"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "exception"

    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_0
    invoke-virtual {p5, p1, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p1, "api_calls"

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p5, p4}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_1
    new-instance p1, Lio/branch/search/s4$a;

    new-instance p2, Lio/branch/search/BranchSearchError;

    invoke-direct {p2, p3}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p1, p2}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lokhttp3/Request;Lorg/json/JSONObject;I)Lio/branch/search/s4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lorg/json/JSONObject;",
            "I)",
            "Lio/branch/search/s4<",
            "Lio/branch/search/BranchSearchError;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "error"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "error"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "error"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :cond_0
    const/16 v0, 0x190

    if-lt p3, v0, :cond_1

    new-instance v0, Lio/branch/search/BranchSearchError;

    invoke-static {p3}, Lio/branch/search/BranchSearchError$ERR_CODE;->a(I)Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/branch/search/BranchSearchError;

    invoke-direct {v0, p2}, Lio/branch/search/BranchSearchError;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", url: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", code: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpPool"

    invoke-static {p2, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/s4$a;

    invoke-direct {p1, v0}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lio/branch/search/l;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lokhttp3/Request;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    invoke-virtual {v0, p1}, Lio/branch/search/e5;->b(Lio/branch/search/l;)Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    const-string p2, "channel.getOkHttpClient(\u2026hSearch).newCall(request)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lio/branch/search/d1;->a(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/branch/search/l;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/s4<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-static {}, Lio/branch/search/BranchAnalytics;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_window_id"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v1, Lio/branch/search/e5;->k:Lio/branch/search/e5;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v0

    const-string v1, "branchSearch.branchDeviceInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Language"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    const-string v0, "request.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/c1;->a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/search/l;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lio/branch/search/l;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/s4<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-static {}, Lio/branch/search/BranchAnalytics;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_window_id"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    const-string p1, "request"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lio/branch/search/c1;->a(Lio/branch/search/c1;Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lio/branch/search/l;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/s4<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    instance-of v4, v0, Lio/branch/search/c1$b;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lio/branch/search/c1$b;

    iget v5, v4, Lio/branch/search/c1$b;->b:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lio/branch/search/c1$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v4, Lio/branch/search/c1$b;

    invoke-direct {v4, v1, v0}, Lio/branch/search/c1$b;-><init>(Lio/branch/search/c1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v4, Lio/branch/search/c1$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Lio/branch/search/c1$b;->b:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xc8

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v2, v4, Lio/branch/search/c1$b;->h:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Response;

    iget-object v3, v4, Lio/branch/search/c1$b;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v4, Lio/branch/search/c1$b;->f:Ljava/lang/Object;

    check-cast v5, Lio/branch/search/l;

    iget-object v6, v4, Lio/branch/search/c1$b;->e:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Request;

    iget-object v4, v4, Lio/branch/search/c1$b;->d:Ljava/lang/Object;

    check-cast v4, Lio/branch/search/c1;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v10, v4

    move-object v12, v5

    move-object v11, v6

    move-object v4, v0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iput-object v1, v4, Lio/branch/search/c1$b;->d:Ljava/lang/Object;

    iput-object v2, v4, Lio/branch/search/c1$b;->e:Ljava/lang/Object;

    iput-object v3, v4, Lio/branch/search/c1$b;->f:Ljava/lang/Object;

    move-object/from16 v0, p3

    iput-object v0, v4, Lio/branch/search/c1$b;->g:Ljava/lang/Object;

    iput-object v8, v4, Lio/branch/search/c1$b;->h:Ljava/lang/Object;

    iput v7, v4, Lio/branch/search/c1$b;->b:I

    invoke-virtual {v1, v3, v2, v4}, Lio/branch/search/c1;->a(Lio/branch/search/l;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v4, v5, :cond_3

    return-object v5

    :cond_3
    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v2, v8

    :goto_1
    :try_start_2
    move-object v13, v4

    check-cast v13, Lokhttp3/Response;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v10, v13}, Lio/branch/search/c1;->a(Lokhttp3/Response;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    const-string v2, "request_id"

    invoke-virtual {v7, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_9

    sget-object v5, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v6, "statusCode >= 500"

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/c1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/s4;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_7

    :cond_5
    iget-object v0, v10, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v3, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v3, :cond_7

    if-eqz v12, :cond_7

    iget-object v0, v12, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_7

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_7
    if-eqz v13, :cond_8

    :try_start_4
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    if-eqz v12, :cond_8

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v12, v0, v4, v3}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-object v2

    :cond_9
    :try_start_5
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_e

    sget-object v5, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v6, "response.body() == null"

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/c1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/s4;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_c

    :cond_a
    iget-object v0, v10, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v3, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v3, :cond_c

    if-eqz v12, :cond_c

    iget-object v0, v12, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_c

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {v3}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_b
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_c
    if-eqz v13, :cond_d

    :try_start_6
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    if-eqz v12, :cond_d

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v12, v0, v4, v3}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_3
    return-object v2

    :cond_e
    :try_start_7
    invoke-virtual {v10}, Lio/branch/search/c1;->a()Lio/branch/search/e5;

    move-result-object v3

    sget-object v4, Lio/branch/search/e5;->k:Lio/branch/search/e5;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_15

    invoke-virtual {v13}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "contentType[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v3

    check-cast v14, Ljava/lang/CharSequence;

    const-string v3, ";"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v7, :cond_f

    if-eqz v12, :cond_f

    const-string v0, "api_calls"

    invoke-virtual {v12, v0, v7, v5}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_f
    new-instance v2, Lio/branch/search/s4$b;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v0}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_12

    :cond_10
    iget-object v0, v10, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v3, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v3, :cond_12

    if-eqz v12, :cond_12

    iget-object v0, v12, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_12

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-static {v3}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_11
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_12
    if-eqz v13, :cond_13

    :try_start_8
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v0

    if-eqz v12, :cond_13

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v12, v0, v4, v3}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_4
    return-object v2

    :cond_14
    :try_start_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {v10}, Lio/branch/search/c1;->a()Lio/branch/search/e5;

    move-result-object v3

    sget-object v4, Lio/branch/search/e5;->o:Lio/branch/search/e5;

    if-ne v3, v4, :cond_1c

    if-eqz v7, :cond_16

    if-eqz v12, :cond_16

    const-string v0, "api_calls"

    invoke-virtual {v12, v0, v7, v5}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_16
    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-ne v0, v9, :cond_17

    new-instance v0, Lio/branch/search/s4$b;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v2}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_17
    new-instance v0, Lio/branch/search/s4$a;

    new-instance v2, Lio/branch/search/BranchSearchError;

    sget-object v3, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v2, v3}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {v0, v2}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    move-object v2, v0

    if-eqz v13, :cond_18

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_1a

    :cond_18
    iget-object v0, v10, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v3, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v3, :cond_1a

    if-eqz v12, :cond_1a

    iget-object v0, v12, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_1a

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-static {v3}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_19
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_1a
    if-eqz v13, :cond_1b

    :try_start_a
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v3, v0

    if-eqz v12, :cond_1b

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v12, v0, v4, v3}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_6
    return-object v2

    :cond_1c
    :try_start_b
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_1e

    if-nez v0, :cond_1d

    const-string v0, "request_id"

    :try_start_c
    const-string v2, "request_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    if-eqz v12, :cond_1e

    const-string v0, "api_calls"

    invoke-virtual {v12, v0, v7, v5}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_1e
    invoke-virtual {v10, v3, v12}, Lio/branch/search/c1;->a(Lorg/json/JSONObject;Lio/branch/search/l;)V

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-ne v0, v9, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/s4$b;

    invoke-direct {v0, v3}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    goto :goto_7

    :cond_1f
    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v10, v11, v3, v0}, Lio/branch/search/c1;->a(Lokhttp3/Request;Lorg/json/JSONObject;I)Lio/branch/search/s4;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_7
    move-object v2, v0

    if-eqz v13, :cond_20

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_22

    :cond_20
    iget-object v0, v10, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v3, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v3, :cond_22

    if-eqz v12, :cond_22

    iget-object v0, v12, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_22

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-static {v3}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_21
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_22
    if-eqz v13, :cond_23

    :try_start_d
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v3, v0

    if-eqz v12, :cond_23

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v12, v0, v4, v3}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_8
    return-object v2

    :catch_6
    move-exception v0

    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v5, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/c1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/s4;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v13, :cond_24

    invoke-virtual {v13}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_26

    :cond_24
    iget-object v0, v10, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v3, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v3, :cond_26

    if-eqz v12, :cond_26

    iget-object v0, v12, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_26

    invoke-virtual {v11}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-static {v3}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_25
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_26
    if-eqz v13, :cond_27

    :try_start_f
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v3, v0

    if-eqz v12, :cond_27

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v12, v0, v4, v3}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_27
    :goto_9
    return-object v2

    :catchall_0
    move-exception v0

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v2, v13

    goto/16 :goto_11

    :catch_8
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    goto/16 :goto_11

    :catch_9
    move-exception v0

    move-object v13, v2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v4, v1

    move-object v6, v2

    move-object v5, v3

    move-object v2, v8

    goto/16 :goto_11

    :catch_a
    move-exception v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v8

    :goto_a
    move-object v4, v10

    move-object v6, v11

    move-object v5, v12

    move-object v2, v13

    :goto_b
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    instance-of v3, v0, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v3, :cond_28

    goto :goto_c

    :cond_28
    instance-of v3, v0, Ljava/net/SocketException;

    if-eqz v3, :cond_29

    goto :goto_c

    :cond_29
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_2a

    goto :goto_c

    :cond_2a
    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_2b

    :goto_c
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->f:Lio/branch/search/BranchSearchError$ERR_CODE;

    :goto_d
    move-object v13, v0

    goto :goto_e

    :cond_2b
    instance-of v0, v0, Lio/branch/search/k5;

    if-eqz v0, :cond_2c

    new-instance v0, Lio/branch/search/s4$a;

    new-instance v3, Lio/branch/search/BranchSearchError;

    sget-object v7, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v3, v7}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {v0, v3}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V

    goto :goto_f

    :cond_2c
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    goto :goto_d

    :goto_e
    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x0

    move-object v10, v4

    move-object v11, v6

    move-object v12, v5

    invoke-static/range {v10 .. v17}, Lio/branch/search/c1;->a(Lio/branch/search/c1;Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)Lio/branch/search/s4;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :goto_f
    move-object v3, v0

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_2f

    :cond_2d
    iget-object v0, v4, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v4, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v4, :cond_2f

    if-eqz v5, :cond_2f

    iget-object v0, v5, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_2f

    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-static {v4}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_2e
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_2f
    if-eqz v2, :cond_30

    :try_start_11
    invoke-virtual {v2}, Lokhttp3/Response;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_30

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v5, v0, v4, v2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    :goto_10
    return-object v3

    :catchall_3
    move-exception v0

    :goto_11
    move-object v3, v0

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v0

    if-eq v0, v9, :cond_33

    :cond_31
    iget-object v0, v4, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    sget-object v4, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    if-ne v0, v4, :cond_33

    if-eqz v5, :cond_33

    iget-object v0, v5, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    if-eqz v0, :cond_33

    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-static {v4}, Lio/branch/search/n;->b(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v8

    :cond_32
    invoke-virtual {v0, v8}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    :cond_33
    if-eqz v2, :cond_34

    :try_start_12
    invoke-virtual {v2}, Lokhttp3/Response;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_34

    const-string v0, "HttpPool.executeRequest"

    const-string v4, "exception closing okhttp Response."

    invoke-virtual {v5, v0, v4, v2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    :goto_12
    throw v3
.end method

.method public final a(Lokhttp3/Response;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "X-Branch-Analytics-Payload"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing analytics result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "HttpPool.executeRequest"

    invoke-static {v2, p1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public final a(Lorg/json/JSONObject;Lio/branch/search/l;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api_remote_configuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lio/branch/search/c1;->a:Lio/branch/search/e5;

    invoke-virtual {v0}, Lio/branch/search/e5;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "api_remote_configuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    sget-object v0, Lio/branch/search/v;->Companion:Lio/branch/search/v$a;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "remoteApiConfiguration.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lio/branch/search/v$a;->a(Ljava/lang/String;Lio/branch/search/l;)V

    nop

    :cond_1
    return-void
.end method
