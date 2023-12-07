.class public final Lio/branch/search/o1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/o1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/o1$a;


# instance fields
.field public final a:Lio/branch/search/s5;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/o1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/o1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/o1;->Companion:Lio/branch/search/o1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/s5;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/o1;Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)Lio/branch/search/e5;
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

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/e5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/o1;Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/e5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lio/branch/search/l;",
            "Lio/branch/search/BranchSearchError$ERR_CODE;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lio/branch/search/e5<",
            "Lio/branch/search/BranchSearchError;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/g0;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p0, p4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "BranchSearchSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    if-eqz p5, :cond_5

    const-string p0, "exception"

    invoke-virtual {p5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_4
    invoke-virtual {p5, p0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_5

    const-string p0, "api_calls"

    invoke-virtual {p2, p0, p5, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_5
    new-instance p0, Lio/branch/search/e5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    invoke-direct {p1, p3}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lokhttp3/Request;Lorg/json/JSONObject;I)Lio/branch/search/e5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lorg/json/JSONObject;",
            "I)",
            "Lio/branch/search/e5<",
            "Lio/branch/search/BranchSearchError;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string p0, "error"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :cond_0
    const/16 p0, 0x190

    if-lt p3, p0, :cond_1

    new-instance p0, Lio/branch/search/BranchSearchError;

    invoke-static {p3}, Lio/branch/search/BranchSearchError$ERR_CODE;->a(I)Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lio/branch/search/BranchSearchError;

    invoke-direct {p0, p2}, Lio/branch/search/BranchSearchError;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/g0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", url: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-nez p2, :cond_5

    const/16 p2, 0x1000

    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "HttpPool"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    new-instance p1, Lio/branch/search/e5$a;

    invoke-direct {p1, p0}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a()Lio/branch/search/s5;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    return-object p0
.end method

.method public final a(Lio/branch/search/l;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    iget-object p0, p0, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    invoke-virtual {p0, p1}, Lio/branch/search/s5;->b(Lio/branch/search/l;)Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    const-string p1, "channel.getOkHttpClient(\u2026hSearch).newCall(request)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3}, Lio/branch/search/p1;->a(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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
            "Lio/branch/search/e5<",
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

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analytics_window_id"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->n:Lio/branch/search/s5;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/branch/search/l;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
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

    const-string v0, "analytics_window_id"

    invoke-virtual {p1, v0, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p4, "application/json; charset=utf-8"

    invoke-static {p4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p4

    invoke-static {p4, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

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

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lio/branch/search/o1;->a(Lio/branch/search/o1;Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lio/branch/search/l;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/e5<",
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

    instance-of v4, v0, Lio/branch/search/o1$j;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lio/branch/search/o1$j;

    iget v5, v4, Lio/branch/search/o1$j;->b:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lio/branch/search/o1$j;->b:I

    goto :goto_0

    :cond_0
    new-instance v4, Lio/branch/search/o1$j;

    invoke-direct {v4, v1, v0}, Lio/branch/search/o1$j;-><init>(Lio/branch/search/o1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v4, Lio/branch/search/o1$j;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Lio/branch/search/o1$j;->b:I

    const-string v7, ": "

    const/4 v8, 0x0

    const-string v9, "exception closing okhttp Response."

    const-string v10, "HttpPool.executeRequest"

    const-string v11, "analytics_window_id"

    const/16 v12, 0xc8

    const-string v13, "request_id"

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v6, :cond_2

    if-ne v6, v14, :cond_1

    iget-object v1, v4, Lio/branch/search/o1$j;->i:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v4, Lio/branch/search/o1$j;->h:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v4, Lio/branch/search/o1$j;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v4, Lio/branch/search/o1$j;->f:Ljava/lang/Object;

    check-cast v5, Lio/branch/search/l;

    iget-object v6, v4, Lio/branch/search/o1$j;->e:Ljava/lang/Object;

    check-cast v6, Lokhttp3/Request;

    iget-object v4, v4, Lio/branch/search/o1$j;->d:Ljava/lang/Object;

    check-cast v4, Lio/branch/search/o1;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v30, v6

    move-object v6, v1

    move-object v1, v4

    move-object/from16 v4, v30

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v3

    move-object v1, v4

    move-object v3, v0

    move-object/from16 v30, v6

    move-object v6, v2

    move-object/from16 v2, v30

    goto/16 :goto_21

    :catch_0
    move-exception v0

    move-object v1, v4

    move-object/from16 v30, v6

    move-object v6, v2

    move-object/from16 v2, v30

    goto/16 :goto_19

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_1
    iput-object v1, v4, Lio/branch/search/o1$j;->d:Ljava/lang/Object;

    iput-object v2, v4, Lio/branch/search/o1$j;->e:Ljava/lang/Object;

    iput-object v3, v4, Lio/branch/search/o1$j;->f:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v8, p3

    :try_start_2
    iput-object v8, v4, Lio/branch/search/o1$j;->g:Ljava/lang/Object;

    iput-object v6, v4, Lio/branch/search/o1$j;->h:Ljava/lang/Object;

    iput-object v6, v4, Lio/branch/search/o1$j;->i:Ljava/lang/Object;

    iput v14, v4, Lio/branch/search/o1$j;->b:I

    invoke-virtual {v1, v3, v2, v4}, Lio/branch/search/o1;->a(Lio/branch/search/l;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v5, :cond_3

    return-object v5

    :cond_3
    move-object v4, v2

    move-object v5, v3

    move-object v2, v6

    move-object v3, v8

    :goto_1
    :try_start_3
    check-cast v0, Lokhttp3/Response;

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v1, v0}, Lio/branch/search/o1;->a(Lokhttp3/Response;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6, v13, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v8, 0x1f4

    if-lt v0, v8, :cond_9

    sget-object v19, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v20, "statusCode >= 500"

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/e5;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_7

    invoke-virtual {v4, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    if-ne v1, v12, :cond_5

    goto :goto_2

    :cond_5
    move v14, v15

    :goto_2
    if-eqz v14, :cond_6

    if-eqz v5, :cond_7

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_7

    new-instance v7, Lio/branch/search/o1$c;

    invoke-direct {v7, v2, v5, v4}, Lio/branch/search/o1$c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v7}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_7
    :goto_3
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_8

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_8
    :goto_4
    return-object v6

    :cond_9
    :try_start_5
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_e

    sget-object v19, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v20, "response.body() == null"

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/e5;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_c

    invoke-virtual {v4, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    if-ne v1, v12, :cond_a

    goto :goto_5

    :cond_a
    move v14, v15

    :goto_5
    if-eqz v14, :cond_b

    if-eqz v5, :cond_c

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_c

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_c

    new-instance v7, Lio/branch/search/o1$d;

    invoke-direct {v7, v2, v5, v4}, Lio/branch/search/o1$d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v7}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_c
    :goto_6
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_d

    :try_start_6
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_d

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_d
    :goto_7
    return-object v6

    :cond_e
    :try_start_7
    invoke-virtual {v1}, Lio/branch/search/o1;->a()Lio/branch/search/s5;

    move-result-object v8

    sget-object v14, Lio/branch/search/s5;->n:Lio/branch/search/s5;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v12, "api_calls"

    if-ne v8, v14, :cond_15

    :try_start_8
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lokhttp3/Response;

    invoke-virtual {v8}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    const-string v14, "Content-Type"

    invoke-virtual {v8, v14}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1c

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v14, "contentType[0]"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/CharSequence;

    const-string v8, ";"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v14, "(this as java.lang.String).toLowerCase()"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "text/html"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    if-eqz v6, :cond_f

    if-eqz v5, :cond_f

    invoke-virtual {v5, v12, v6, v15}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_f
    new-instance v6, Lio/branch/search/e5$b;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v6, v0}, Lio/branch/search/e5$b;-><init>(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_12

    invoke-virtual {v4, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_10

    const/4 v15, 0x1

    :cond_10
    if-eqz v15, :cond_11

    if-eqz v5, :cond_12

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    if-eqz v5, :cond_12

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_12

    new-instance v7, Lio/branch/search/o1$e;

    invoke-direct {v7, v2, v5, v4}, Lio/branch/search/o1$e;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v7}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_12
    :goto_8
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_13

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_13
    :goto_9
    return-object v6

    :cond_14
    :try_start_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {v1}, Lio/branch/search/o1;->a()Lio/branch/search/s5;

    move-result-object v8

    sget-object v14, Lio/branch/search/s5;->r:Lio/branch/search/s5;

    if-ne v8, v14, :cond_1c

    if-eqz v6, :cond_16

    if-eqz v5, :cond_16

    invoke-virtual {v5, v12, v6, v15}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_16
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_17

    new-instance v0, Lio/branch/search/e5$b;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v6}, Lio/branch/search/e5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    :cond_17
    new-instance v0, Lio/branch/search/e5$a;

    new-instance v6, Lio/branch/search/BranchSearchError;

    sget-object v8, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v6, v8}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {v0, v6}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_a
    move-object v6, v0

    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_1a

    invoke-virtual {v4, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_18

    const/4 v15, 0x1

    :cond_18
    if-eqz v15, :cond_19

    if-eqz v5, :cond_1a

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_19
    if-eqz v5, :cond_1a

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_1a

    new-instance v7, Lio/branch/search/o1$f;

    invoke-direct {v7, v2, v5, v4}, Lio/branch/search/o1$f;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v7}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_1a
    :goto_b
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_1b

    :try_start_b
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_1b

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_1b
    :goto_c
    return-object v6

    :cond_1c
    :try_start_c
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v6, :cond_1e

    if-nez v3, :cond_1d

    :try_start_d
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v13, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    if-eqz v5, :cond_1e

    invoke-virtual {v5, v12, v6, v15}, Lio/branch/search/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_1e
    invoke-virtual {v1, v8, v5}, Lio/branch/search/o1;->a(Lorg/json/JSONObject;Lio/branch/search/l;)V

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_23

    const-string v0, "BranchSearchSDK"

    :try_start_e
    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object v6

    invoke-virtual {v6}, Lio/branch/search/g0;->a()Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "url: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", code: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Lokhttp3/Response;

    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_1f
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_21

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_20

    goto :goto_e

    :cond_20
    move v12, v15

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v12, 0x1

    :goto_f
    if-nez v12, :cond_22

    const/16 v12, 0x1000

    invoke-static {v6, v12}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_22
    new-instance v0, Lio/branch/search/e5$b;

    invoke-direct {v0, v8}, Lio/branch/search/e5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_11

    :cond_23
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v1, v4, v8, v0}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lorg/json/JSONObject;I)Lio/branch/search/e5;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_11
    move-object v6, v0

    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_26

    invoke-virtual {v4, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_24

    const/4 v15, 0x1

    :cond_24
    if-eqz v15, :cond_25

    if-eqz v5, :cond_26

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_26

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_25
    if-eqz v5, :cond_26

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_26

    new-instance v7, Lio/branch/search/o1$h;

    invoke-direct {v7, v2, v5, v4}, Lio/branch/search/o1$h;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v7}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_26
    :goto_12
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_27

    :try_start_f
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_27

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_27
    :goto_13
    return-object v6

    :catch_6
    move-exception v0

    :try_start_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v19, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/e5;

    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_2a

    invoke-virtual {v4, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_28

    const/4 v15, 0x1

    :cond_28
    if-eqz v15, :cond_29

    if-eqz v5, :cond_2a

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_14

    :cond_29
    if-eqz v5, :cond_2a

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_2a

    new-instance v7, Lio/branch/search/o1$g;

    invoke-direct {v7, v2, v5, v4}, Lio/branch/search/o1$g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v7}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_2a
    :goto_14
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_2b

    :try_start_11
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_2b

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_2b
    :goto_15
    return-object v6

    :catchall_1
    move-exception v0

    goto/16 :goto_20

    :catch_8
    move-exception v0

    move-object v6, v2

    move-object v2, v4

    goto :goto_19

    :catchall_2
    move-exception v0

    goto :goto_16

    :catch_9
    move-exception v0

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object/from16 v8, p3

    :goto_16
    move-object v5, v3

    :goto_17
    move-object v3, v0

    goto/16 :goto_21

    :catch_a
    move-exception v0

    move-object/from16 v8, p3

    :goto_18
    move-object v5, v3

    move-object v3, v8

    :goto_19
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    instance-of v4, v0, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v4, :cond_2c

    goto :goto_1a

    :cond_2c
    instance-of v4, v0, Ljava/net/SocketException;

    if-eqz v4, :cond_2d

    goto :goto_1a

    :cond_2d
    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_2e

    goto :goto_1a

    :cond_2e
    instance-of v4, v0, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_2f

    :goto_1a
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->f:Lio/branch/search/BranchSearchError$ERR_CODE;

    :goto_1b
    move-object/from16 v25, v0

    goto :goto_1c

    :cond_2f
    instance-of v0, v0, Lio/branch/search/a6;

    if-eqz v0, :cond_30

    new-instance v0, Lio/branch/search/e5$a;

    new-instance v4, Lio/branch/search/BranchSearchError;

    sget-object v7, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v4, v7}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {v0, v4}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_30
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    goto :goto_1b

    :goto_1c
    const/16 v27, 0x0

    const/16 v28, 0x8

    const/16 v29, 0x0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v5

    invoke-static/range {v22 .. v29}, Lio/branch/search/o1;->a(Lio/branch/search/o1;Lokhttp3/Request;Lio/branch/search/l;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)Lio/branch/search/e5;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :goto_1d
    move-object v4, v0

    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_33

    invoke-virtual {v2, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_31

    const/4 v15, 0x1

    :cond_31
    if-eqz v15, :cond_32

    if-eqz v5, :cond_33

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_33

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_1e

    :cond_32
    if-eqz v5, :cond_33

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_33

    new-instance v7, Lio/branch/search/o1$i;

    invoke-direct {v7, v6, v5, v2}, Lio/branch/search/o1$i;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v7}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_33
    :goto_1e
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_34

    :try_start_13
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_1f

    :catch_b
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_34

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_34
    :goto_1f
    return-object v4

    :catchall_4
    move-exception v0

    move-object v4, v2

    move-object v2, v6

    :goto_20
    move-object v6, v2

    move-object v8, v3

    move-object v2, v4

    goto/16 :goto_17

    :goto_21
    iget-object v0, v1, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    sget-object v1, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    if-ne v0, v1, :cond_37

    invoke-virtual {v2, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Response;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_35

    const/4 v15, 0x1

    :cond_35
    if-eqz v15, :cond_36

    if-eqz v5, :cond_37

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_37

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_22

    :cond_36
    if-eqz v5, :cond_37

    iget-object v1, v5, Lio/branch/search/l;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_37

    new-instance v4, Lio/branch/search/o1$b;

    invoke-direct {v4, v6, v5, v2}, Lio/branch/search/o1$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/l;Lokhttp3/Request;)V

    invoke-virtual {v1, v0, v4}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_37
    :goto_22
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Response;

    if-eqz v0, :cond_38

    :try_start_14
    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_23

    :catch_c
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_38

    invoke-static {v13, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v10, v9, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_38
    :goto_23
    throw v3
.end method

.method public final a(Lokhttp3/Response;)Lorg/json/JSONObject;
    .locals 3

    const/4 p0, 0x0

    const-string v0, "X-Branch-Analytics-Payload"

    invoke-virtual {p1, v0, p0}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing analytics result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HttpPool.executeRequest"

    invoke-static {v1, p1, v0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;Lio/branch/search/l;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api_remote_configuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lio/branch/search/o1;->a:Lio/branch/search/s5;

    invoke-virtual {p0}, Lio/branch/search/s5;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    sget-object p1, Lio/branch/search/v;->Companion:Lio/branch/search/v$a;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "remoteApiConfiguration.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lio/branch/search/v$a;->a(Ljava/lang/String;Lio/branch/search/l;)V

    nop

    :cond_1
    return-void
.end method
