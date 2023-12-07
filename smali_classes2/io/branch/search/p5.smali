.class public Lio/branch/search/p5;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static d:I = 0x7530


# instance fields
.field public a:Lio/branch/search/b;

.field public final b:Z

.field public c:Lio/branch/search/s5;


# direct methods
.method public constructor <init>(ZLio/branch/search/b;Lio/branch/search/s5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/branch/search/p5;->b:Z

    iput-object p2, p0, Lio/branch/search/p5;->a:Lio/branch/search/b;

    iput-object p3, p0, Lio/branch/search/p5;->c:Lio/branch/search/s5;

    return-void
.end method


# virtual methods
.method public final a(ILio/branch/search/s5;)I
    .locals 4

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    iget v0, p2, Lio/branch/search/s5;->c:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p2, Lio/branch/search/s5;->c:I

    int-to-double p1, p1

    mul-double/2addr v0, p1

    sget p1, Lio/branch/search/p5;->d:I

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    sub-int/2addr p1, p0

    return p1
.end method

.method public final a(Lokhttp3/Response;)J
    .locals 2

    const-string v0, "X-Branch-API-Call-Size"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lio/branch/search/p5;->a:Lio/branch/search/b;

    const-string v1, "AnalyticsAndRetryInterceptor.getApiCallSize"

    invoke-interface {p0, v1, p1, v0}, Lio/branch/search/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/branch/search/p5;->a:Lio/branch/search/b;

    const/4 v0, 0x0

    const-string v1, "api_calls"

    invoke-interface {p0, v1, p1, v0}, Lio/branch/search/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "X-Branch-Retry"

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v11, v0

    move v10, v6

    move v9, v7

    move v0, v8

    move-object v8, v11

    :goto_0
    add-int/lit8 v12, v0, 0x1

    if-eqz v8, :cond_0

    :try_start_0
    invoke-virtual {v8}, Lokhttp3/Response;->close()V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v13, p1

    :goto_1
    move-object v11, v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v13, p1

    goto/16 :goto_8

    :cond_0
    :goto_2
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v2, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/http2/StreamResetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/branch/search/a6; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/branch/search/q5$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v13, p1

    :try_start_1
    invoke-interface {v13, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v8

    int-to-long v14, v9

    invoke-virtual {v1, v8}, Lio/branch/search/p5;->a(Lokhttp3/Response;)J

    move-result-wide v16

    add-long v14, v14, v16

    long-to-int v9, v14

    iget-object v0, v1, Lio/branch/search/p5;->c:Lio/branch/search/s5;

    iget v14, v0, Lio/branch/search/s5;->c:I

    if-lez v14, :cond_1

    iget v0, v0, Lio/branch/search/s5;->b:I

    if-ge v12, v0, :cond_1

    move v0, v6

    goto :goto_3

    :cond_1
    move v0, v7

    :goto_3
    const/16 v14, 0x190

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v15

    if-gt v14, v15, :cond_2

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v14

    const/16 v15, 0x193

    if-gt v14, v15, :cond_2

    move v14, v6

    goto :goto_4

    :cond_2
    move v14, v7

    :goto_4
    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v15, 0xc8

    if-eq v0, v15, :cond_3

    if-nez v14, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "url :"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", failed with "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/Response;->code()I

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", attempting retry"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lokhttp3/internal/http2/StreamResetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lio/branch/search/a6; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lio/branch/search/q5$a; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object v0, v1, Lio/branch/search/p5;->c:Lio/branch/search/s5;

    invoke-virtual {v1, v12, v0}, Lio/branch/search/p5;->a(ILio/branch/search/s5;)I

    move-result v0

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lokhttp3/internal/http2/StreamResetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lio/branch/search/a6; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lio/branch/search/q5$a; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_8

    :goto_5
    move-object v11, v0

    instance-of v0, v11, Ljava/io/IOException;

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v14, "cancel"

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_6
    move v10, v7

    :catch_6
    :cond_4
    :goto_7
    move-object v0, v8

    move-object v14, v11

    goto :goto_9

    :goto_8
    move-object v14, v0

    move-object v0, v8

    :goto_9
    iget-object v8, v1, Lio/branch/search/p5;->c:Lio/branch/search/s5;

    iget v8, v8, Lio/branch/search/s5;->b:I

    if-ne v12, v8, :cond_5

    move v10, v7

    :cond_5
    if-nez v10, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v10, v1, Lio/branch/search/p5;->c:Lio/branch/search/s5;

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v11

    move v8, v9

    move v9, v12

    move-object v12, v0

    move-object v13, v14

    invoke-static/range {v4 .. v13}, Lio/branch/search/y5;->a(JJIILio/branch/search/s5;Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v2

    instance-of v3, v14, Ljava/lang/RuntimeException;

    if-nez v3, :cond_8

    instance-of v3, v14, Ljava/io/IOException;

    if-nez v3, :cond_7

    iget-boolean v3, v1, Lio/branch/search/p5;->b:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Branch-Analytics-Payload"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {v1, v2}, Lio/branch/search/p5;->a(Lorg/json/JSONObject;)V

    return-object v0

    :cond_7
    invoke-virtual {v1, v2}, Lio/branch/search/p5;->a(Lorg/json/JSONObject;)V

    check-cast v14, Ljava/io/IOException;

    throw v14

    :cond_8
    invoke-virtual {v1, v2}, Lio/branch/search/p5;->a(Lorg/json/JSONObject;)V

    check-cast v14, Ljava/lang/RuntimeException;

    throw v14

    :cond_9
    move-object v8, v0

    move v0, v12

    move-object v11, v14

    goto/16 :goto_0
.end method
