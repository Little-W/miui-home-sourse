.class public Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;
.super Lcom/mi/encrypt/okhttp/EncryptInterceptor;
.source "EncryptInterceptorV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;
    }
.end annotation


# instance fields
.field private final mEncryptHeaderKeys:[Ljava/lang/String;

.field private final mReservedQueryKeys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;-><init>(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)V

    .line 37
    invoke-static {p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->access$000(Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;->mEncryptHeaderKeys:[Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->access$100(Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;->mReservedQueryKeys:[Ljava/lang/String;

    return-void
.end method

.method private static handleReservedQueryKeys(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl$Builder;[Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x0

    .line 107
    :goto_0
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->querySize()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 108
    invoke-virtual {p0, p2}, Lokhttp3/HttpUrl;->queryParameterName(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0, p2}, Lokhttp3/HttpUrl;->queryParameterValue(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {p1, v1, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkRequestNeedEncrypt(Lokhttp3/Request;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected generateEncryptedRequestInner(Lokhttp3/Request;)Lokhttp3/Request$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 75
    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lokio/Buffer;->close()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 81
    :goto_0
    new-instance v1, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;

    invoke-direct {v1}, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;-><init>()V

    .line 82
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->setMethod(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v2}, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->setPlainBody([B)V

    .line 84
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->setQuery(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;->mEncryptHeaderKeys:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mi/encrypt/okhttp/HeaderUtils;->filter(Lokhttp3/Headers;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 88
    invoke-virtual {v1, v3}, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->setMultiMapHeaders(Ljava/util/Map;)V

    .line 89
    invoke-virtual {v1}, Lcom/mi/encrypt/okhttp/RequestBodyJson$Builder;->build()Lcom/mi/encrypt/okhttp/RequestBodyJson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/encrypt/okhttp/RequestBodyJson;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mi/encrypt/EncryptHelper;->encrypt([B)[B

    move-result-object v1

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 94
    :goto_1
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 95
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lokhttp3/HttpUrl$Builder;->query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 96
    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;->mReservedQueryKeys:[Ljava/lang/String;

    invoke-static {v2, v1, p0}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;->handleReservedQueryKeys(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl$Builder;[Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    .line 98
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string p1, "POST"

    .line 101
    invoke-virtual {p0, p1, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected getProtocolVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "2"

    return-object p0
.end method
