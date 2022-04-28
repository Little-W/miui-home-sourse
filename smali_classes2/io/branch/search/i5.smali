.class public Lio/branch/search/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public a:Lio/branch/search/l;

.field public b:Lio/branch/search/e5;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/e5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/i5;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/i5;->b:Lio/branch/search/e5;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/RequestBody;Ljava/lang/String;ZZ)Lokhttp3/RequestBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lio/branch/search/i5;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    if-eqz p4, :cond_1

    :try_start_0
    invoke-static {v1}, Lio/branch/search/d5;->c([B)[B

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-static {v1, p2, v0}, Lio/branch/search/c5;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    :cond_2
    new-instance p2, Lio/branch/search/i5$a;

    invoke-direct {p2, p0, p1, v1}, Lio/branch/search/i5$a;-><init>(Lio/branch/search/i5;Lokhttp3/RequestBody;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    iget-object p2, p0, Lio/branch/search/i5;->a:Lio/branch/search/l;

    const-string p3, "EncryptionInterceptor.maybeEncode"

    invoke-virtual {p2, p3, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lio/branch/search/c5$a;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/branch/search/c5$a;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_2
    return-object p1
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lio/branch/search/c5;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/i5;->a:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    iget-object v5, p0, Lio/branch/search/i5;->b:Lio/branch/search/e5;

    iget-boolean v6, v5, Lio/branch/search/e5;->a:Z

    iget-boolean v5, v5, Lio/branch/search/e5;->b:Z

    invoke-virtual {p0, v2, v0, v6, v5}, Lio/branch/search/i5;->a(Lokhttp3/RequestBody;Ljava/lang/String;ZZ)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/i5;->b:Lio/branch/search/e5;

    iget-boolean v3, v3, Lio/branch/search/e5;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "X-Branch-Encryption"

    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "X-Branch-IV"

    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "Content-Encoding"

    const-string v1, "bncencv2"

    invoke-virtual {v2, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
