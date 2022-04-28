.class public Lio/branch/search/h5;
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

    iput-object p1, p0, Lio/branch/search/h5;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/h5;->b:Lio/branch/search/e5;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/ResponseBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bncencv2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bncencv3z"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "bncencv3"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-static {p1, p3, p4}, Lio/branch/search/c5;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {p1}, Lio/branch/search/d5;->b([B)[B

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {p1}, Lio/branch/search/d5;->a([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lio/branch/search/c5$a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/branch/search/c5$a;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/h5;->a:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lio/branch/search/h5;->b:Lio/branch/search/e5;

    iget-boolean v2, v2, Lio/branch/search/e5;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/branch/search/h5;->a:Lio/branch/search/l;

    invoke-virtual {v2}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/KBranchRemoteConfiguration;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-Branch-Encryption"

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v2, "Accept-Encoding"

    const-string v3, "bncencv2,bncencv3,bncencv3z"

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const-string v2, "X-Branch-IV"

    invoke-virtual {p1, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Encoding"

    invoke-virtual {p1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    sget-object v4, Lio/branch/search/f5;->a:Lokhttp3/MediaType;

    invoke-virtual {p0, v0, v3, v2, v1}, Lio/branch/search/h5;->a(Lokhttp3/ResponseBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v4, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    :cond_1
    return-object p1
.end method
