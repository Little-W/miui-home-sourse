.class public Lcom/miui/privacy/http/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-string v3, "okhttp"

    const-string v4, "\u53d1\u9001\u8bf7\u6c42 %s on %s%n%s"

    const/4 v5, 0x3

    .line 17
    new-array v6, v5, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v6, v10

    .line 17
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v6, 0x100000

    .line 27
    invoke-virtual {p1, v6, v7}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object v0

    const-string v6, "okhttp"

    const-string v7, "\u63a5\u6536\u54cd\u5e94: [%s] %n\u8fd4\u56dejson:[%s] %.1fms%n%s"

    const/4 v11, 0x4

    .line 29
    new-array v11, v11, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    aput-object v12, v11, v8

    .line 31
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    sub-long/2addr v3, v1

    long-to-double v0, v3

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v11, v10

    .line 33
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    aput-object v0, v11, v5

    .line 29
    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
