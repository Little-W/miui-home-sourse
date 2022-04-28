.class public Lio/branch/search/b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static d:I = 0x7530


# instance fields
.field public a:Lio/branch/search/b;

.field public final b:Z

.field public c:Lio/branch/search/e5;


# direct methods
.method public constructor <init>(ZLio/branch/search/b;Lio/branch/search/e5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/branch/search/b5;->b:Z

    iput-object p2, p0, Lio/branch/search/b5;->a:Lio/branch/search/b;

    iput-object p3, p0, Lio/branch/search/b5;->c:Lio/branch/search/e5;

    return-void
.end method


# virtual methods
.method public final a(ILio/branch/search/e5;)I
    .locals 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget v1, p2, Lio/branch/search/e5;->e:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget p1, p2, Lio/branch/search/e5;->e:I

    int-to-double p1, p1

    mul-double/2addr v1, p1

    sget p1, Lio/branch/search/b5;->d:I

    int-to-double p1, p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public final a(Lokhttp3/Response;)J
    .locals 3

    const-string v0, "X-Branch-API-Call-Size"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/branch/search/b5;->a:Lio/branch/search/b;

    const-string v2, "AnalyticsAndRetryInterceptor.getApiCallSize"

    invoke-interface {v1, v2, p1, v0}, Lio/branch/search/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/branch/search/b5;->a:Lio/branch/search/b;

    const-string v1, "api_calls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lio/branch/search/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v9, v3

    move v8, v4

    move v7, v5

    :goto_0
    add-int/2addr v6, v4

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    :cond_0
    const-string v10, "X-Branch-Retry"

    invoke-virtual {v0, v10}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v10
    :try_end_0
    .catch Lokhttp3/internal/http2/StreamResetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/branch/search/k5; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/branch/search/c5$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "X-Branch-Retry"

    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v10

    invoke-interface {p1, v10}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3

    int-to-long v10, v7

    invoke-virtual {p0, v3}, Lio/branch/search/b5;->a(Lokhttp3/Response;)J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v7, v10

    iget-object v10, p0, Lio/branch/search/b5;->c:Lio/branch/search/e5;

    iget v11, v10, Lio/branch/search/e5;->e:I

    if-lez v11, :cond_1

    iget v10, v10, Lio/branch/search/e5;->d:I

    if-ge v6, v10, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    const/16 v11, 0x190

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v12

    if-gt v11, v12, :cond_2

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v11

    const/16 v12, 0x193

    if-gt v11, v12, :cond_2

    move v11, v4

    goto :goto_2

    :cond_2
    move v11, v5

    :goto_2
    if-eqz v10, :cond_3

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v10

    const/16 v12, 0xc8

    if-eq v10, v12, :cond_3

    if-nez v11, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "url :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", failed with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", attempting retry"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/branch/search/b0;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lokhttp3/internal/http2/StreamResetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lio/branch/search/k5; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lio/branch/search/c5$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v10, p0, Lio/branch/search/b5;->c:Lio/branch/search/e5;

    invoke-virtual {p0, v6, v10}, Lio/branch/search/b5;->a(ILio/branch/search/e5;)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lokhttp3/internal/http2/StreamResetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lio/branch/search/k5; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lio/branch/search/c5$a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v8

    move-object v9, v8

    goto :goto_3

    :catch_1
    move-exception v9

    instance-of v10, v9, Ljava/io/IOException;

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "cancel"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    :goto_3
    move-object v11, v3

    move v8, v5

    goto :goto_5

    :catch_2
    move-exception v9

    :catch_3
    :cond_4
    :goto_4
    move-object v11, v3

    :goto_5
    move-object v12, v9

    iget-object v3, p0, Lio/branch/search/b5;->c:Lio/branch/search/e5;

    iget v3, v3, Lio/branch/search/e5;->d:I

    if-ne v6, v3, :cond_5

    move v8, v5

    :cond_5
    if-nez v8, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lio/branch/search/b5;->c:Lio/branch/search/e5;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v8

    move v5, v7

    move-object v7, v0

    move-object v9, v11

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lio/branch/search/j5;->a(JJIILio/branch/search/e5;Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object p1

    instance-of v0, v12, Ljava/lang/RuntimeException;

    if-nez v0, :cond_8

    instance-of v0, v12, Ljava/io/IOException;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lio/branch/search/b5;->b:Z

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "X-Branch-Analytics-Payload"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0, p1}, Lio/branch/search/b5;->a(Lorg/json/JSONObject;)V

    return-object v11

    :cond_7
    invoke-virtual {p0, p1}, Lio/branch/search/b5;->a(Lorg/json/JSONObject;)V

    check-cast v12, Ljava/io/IOException;

    throw v12

    :cond_8
    invoke-virtual {p0, p1}, Lio/branch/search/b5;->a(Lorg/json/JSONObject;)V

    check-cast v12, Ljava/lang/RuntimeException;

    throw v12

    :cond_9
    move-object v3, v11

    move-object v9, v12

    goto/16 :goto_0
.end method
