.class public abstract Lcom/mi/encrypt/okhttp/EncryptInterceptor;
.super Ljava/lang/Object;
.source "EncryptInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;,
        Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;,
        Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;
    }
.end annotation


# instance fields
.field private mEncryptDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExceptionReporter:Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;

.field mIsDefaultEncrypt:Z


# direct methods
.method constructor <init>(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->access$000(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mIsDefaultEncrypt:Z

    .line 89
    invoke-static {p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->access$100(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mEncryptDomainList:Ljava/util/List;

    .line 90
    invoke-static {p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->access$200(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mExceptionReporter:Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;

    return-void
.end method

.method private chainProceed(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Z)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_3

    .line 309
    invoke-virtual {p2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object p0

    const/4 p3, 0x0

    const-string v0, "X-MI-XFLAG"

    .line 311
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    :cond_0
    const-string v0, "X-MI-XKEY"

    .line 314
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p3

    .line 316
    :goto_0
    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    if-eqz p3, :cond_3

    .line 319
    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 323
    :cond_3
    invoke-interface {p1, p2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private checkIsNeedDecrypt(Lokhttp3/Response;)Z
    .locals 1

    .line 368
    invoke-direct {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->getResponseDecryptFlag(Lokhttp3/Response;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 369
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkIsNeedEncrypt(Lokhttp3/Request;)Z
    .locals 3

    .line 334
    invoke-virtual {p1}, Lokhttp3/Request;->isHttps()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 339
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 344
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->getRequestEncryptFlag(Lokhttp3/Request;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 354
    invoke-virtual {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->checkRequestNeedEncrypt(Lokhttp3/Request;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private encryptFlagStringToInt(Ljava/lang/String;)I
    .locals 1

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 479
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p0, v0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private generateDecryptedResponse(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 10

    const-string v0, "Content-Encoding"

    const/4 v1, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    const-string v3, "Content-Type"

    .line 230
    invoke-virtual {p2, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 237
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    .line 238
    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    .line 239
    invoke-interface {v6}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v6

    const-string v7, "gzip"

    .line 241
    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "Content-Length"

    if-eqz v7, :cond_0

    .line 242
    :try_start_1
    new-instance v4, Lokio/GzipSource;

    invoke-virtual {v6}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v5

    invoke-direct {v4, v5}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 245
    new-instance v5, Lokhttp3/internal/http/RealResponseBody;

    const-wide/16 v6, -0x1

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    invoke-direct {v5, v3, v6, v7, v4}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 246
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    move-object v3, v0

    move-object v0, v5

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {v6}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    move-object v3, v1

    .line 251
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :try_start_2
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mi/encrypt/EncryptHelper;->decrypt([B)[B

    move-result-object v4

    .line 254
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {v5, v3}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 258
    :cond_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v4}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;

    move-result-object v2

    .line 259
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->wrapperReportMessage(Ljava/lang/Exception;Lokhttp3/Response;[BLcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)V

    .line 261
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catch_1
    move-exception v0

    .line 265
    :goto_1
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->wrapperReportMessage(Ljava/lang/Exception;Lokhttp3/Response;[BLcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method private generateEncryptedRequest(Lokhttp3/Request;Ljava/security/interfaces/RSAPublicKey;)Lokhttp3/Request;
    .locals 4

    .line 167
    :try_start_0
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mi/encrypt/EncryptHelper;->getEncryptedAESKey(Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/encrypt/EncryptHelper;->getAESKeyID()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->generateEncryptedRequestInner(Lokhttp3/Request;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "X-MI-XKEY"

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-virtual {v1, v2, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "X-MI-XFLAG"

    .line 172
    invoke-virtual {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->getRequestEncryptFlag(Lokhttp3/Request;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getRSAPublicKeyInfo(Lokhttp3/Connection;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;
    .locals 2

    const/4 p0, 0x0

    .line 415
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Connection;->socket()Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 416
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    .line 417
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v0, 0x0

    .line 418
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v1, p1, v0, p0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;-><init>([Ljava/security/cert/Certificate;Ljava/security/interfaces/RSAPublicKey;Lcom/mi/encrypt/okhttp/EncryptInterceptor$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private getResponseDecryptFlag(Lokhttp3/Response;)I
    .locals 1

    const-string v0, "X-MI-XFLAG"

    .line 469
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-direct {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->encryptFlagStringToInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isInEncryptDomainList(Ljava/lang/String;)Z
    .locals 3

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mEncryptDomainList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 454
    :goto_0
    iget-object v2, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mEncryptDomainList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 455
    iget-object v2, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mEncryptDomainList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private wrapperReportMessage(Ljava/lang/Exception;Lokhttp3/Response;[BLcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mExceptionReporter:Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    invoke-static {p4}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->access$300(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 275
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v2, 0x0

    .line 279
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 280
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 285
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object p2

    .line 287
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/encrypt/EncryptHelper;->getAESIV()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v5, "H_AESIV"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/encrypt/EncryptHelper;->getAESKey()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v5, "H_AESKey"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/encrypt/EncryptHelper;->getAESSecretKey()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v5, "H_AESSecretKey"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-static {}, Lcom/mi/encrypt/EncryptHelper;->getInstance()Lcom/mi/encrypt/EncryptHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/encrypt/EncryptHelper;->getAESKeyID()Ljava/lang/String;

    move-result-object v3

    const-string v5, "H_AESKeyID"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {p4}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->access$300(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "H_RsaPublicKey"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p4}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->access$400(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)Ljava/lang/String;

    move-result-object p4

    const-string v3, "H_CertificatePath"

    invoke-interface {v0, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "H_RequestHeaders"

    .line 293
    invoke-interface {v0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "H_ResponseHeaders"

    .line 294
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "H_Response"

    .line 295
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "H_Crash"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    .line 298
    invoke-static {p3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "H_ServerBodyBytes"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_3
    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mExceptionReporter:Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;

    if-eqz p0, :cond_4

    .line 302
    invoke-interface {p0, v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;->callbackException(Ljava/util/Map;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected abstract checkRequestNeedEncrypt(Lokhttp3/Request;)Z
.end method

.method protected abstract generateEncryptedRequestInner(Lokhttp3/Request;)Lokhttp3/Request$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getProtocolVersion()Ljava/lang/String;
.end method

.method protected getRequestEncryptFlag(Lokhttp3/Request;)I
    .locals 1

    const-string v0, "X-MI-XFLAG"

    .line 438
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-direct {p0, v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->encryptFlagStringToInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 443
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->isInEncryptDomainList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 447
    :cond_1
    iget-boolean p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->mIsDefaultEncrypt:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 184
    invoke-static {}, Lcom/mi/encrypt/VersionUtils;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->getProtocolVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-MI-XPROTOCOL"

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "X-MI-XVERSION"

    .line 187
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->checkIsNeedEncrypt(Lokhttp3/Request;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 190
    invoke-direct {p0, p1, v0, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->chainProceed(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Z)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    .line 194
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->getRSAPublicKeyInfo(Lokhttp3/Connection;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 197
    invoke-static {v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->access$300(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {v1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->access$300(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->generateEncryptedRequest(Lokhttp3/Request;Ljava/security/interfaces/RSAPublicKey;)Lokhttp3/Request;

    move-result-object v3

    if-nez v3, :cond_2

    .line 206
    invoke-direct {p0, p1, v0, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->chainProceed(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Z)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, p1, v3, v0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->chainProceed(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Z)Lokhttp3/Response;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->checkIsNeedDecrypt(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    invoke-direct {p0, v1, p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->generateDecryptedResponse(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p0

    if-eqz p0, :cond_3

    move-object p1, p0

    :cond_3
    return-object p1

    .line 198
    :cond_4
    :goto_0
    invoke-direct {p0, p1, v0, v2}, Lcom/mi/encrypt/okhttp/EncryptInterceptor;->chainProceed(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Z)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
