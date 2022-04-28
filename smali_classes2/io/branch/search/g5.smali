.class public Lio/branch/search/g5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public a:Lio/branch/search/l;

.field public b:Lio/branch/search/b3;

.field public c:Lio/branch/search/e5;

.field public final d:Lio/branch/search/r4;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/b3;Lio/branch/search/e5;Lio/branch/search/r4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/g5;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/g5;->b:Lio/branch/search/b3;

    iput-object p3, p0, Lio/branch/search/g5;->c:Lio/branch/search/e5;

    iput-object p4, p0, Lio/branch/search/g5;->d:Lio/branch/search/r4;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/g5;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/g5;->a:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/g5;)Lio/branch/search/e5;
    .locals 0

    iget-object p0, p0, Lio/branch/search/g5;->c:Lio/branch/search/e5;

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/g5;)Lio/branch/search/r4;
    .locals 0

    iget-object p0, p0, Lio/branch/search/g5;->d:Lio/branch/search/r4;

    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    add-long/2addr v4, v2

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->byteCount()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide v6, v2

    :goto_1
    add-long/2addr v4, v6

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v2

    :goto_2
    add-long/2addr v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DULI got request for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/branch/search/g5;->c:Lio/branch/search/e5;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/branch/search/b0;->a(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->byteCount()J

    move-result-wide v0

    goto :goto_3

    :cond_3
    move-wide v0, v2

    :goto_3
    add-long/2addr v4, v0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    :cond_4
    add-long/2addr v4, v2

    iget-object v0, p0, Lio/branch/search/g5;->a:Lio/branch/search/l;

    iget-object v0, v0, Lio/branch/search/l;->f:Lio/branch/search/b1;

    invoke-virtual {v0}, Lio/branch/search/b1;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/g5;->b:Lio/branch/search/b3;

    new-instance v3, Lio/branch/search/g5$a;

    invoke-direct {v3, p0, v1, v0}, Lio/branch/search/g5$a;-><init>(Lio/branch/search/g5;Ljava/lang/Long;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "updateNetworkChannelUsage"

    invoke-virtual {v2, v0, v1, v3}, Lio/branch/search/c3;->a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Branch-API-Call-Size"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
