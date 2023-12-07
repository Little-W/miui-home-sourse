.class public Lio/branch/search/w5;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lio/branch/search/l;


# direct methods
.method public constructor <init>(Lio/branch/search/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/w5;->a:Lio/branch/search/l;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/branch/search/w5;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lio/branch/search/r5;->c([B)[B

    move-result-object v1

    invoke-static {v1, p2, v0}, Lio/branch/search/q5;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    new-instance v0, Lio/branch/search/w5$a;

    invoke-direct {v0, p0, p1, p2}, Lio/branch/search/w5$a;-><init>(Lio/branch/search/w5;Lokhttp3/RequestBody;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/branch/search/w5;->a:Lio/branch/search/l;

    const-string p2, "EncryptionInterceptor.maybeEncode"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lio/branch/search/q5$a;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/branch/search/q5$a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lio/branch/search/q5;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/w5;->a:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lio/branch/search/w5;->a(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v2, "X-Branch-Encryption"

    invoke-virtual {p0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v1, "X-Branch-IV"

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v0, "Content-Encoding"

    const-string v1, "bncencv2"

    invoke-virtual {p0, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
