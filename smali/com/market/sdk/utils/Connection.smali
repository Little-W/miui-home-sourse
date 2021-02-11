.class public Lcom/market/sdk/utils/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/utils/Connection$FileResetableOutputStream;,
        Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;,
        Lcom/market/sdk/utils/Connection$ResetableOutputStream;,
        Lcom/market/sdk/utils/Connection$ConnectionException;,
        Lcom/market/sdk/utils/Connection$Parameter;,
        Lcom/market/sdk/utils/Connection$NetworkError;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final GPRS_READ_TIMEOUT:I = 0x7530

.field protected static final PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field protected static final PROTOCOL_HTTPS:Ljava/lang/String; = "https"

.field private static final TAG:Ljava/lang/String; = "MarketConnection"

.field private static final WIFI_READ_TIMEOUT:I = 0x2710


# instance fields
.field protected mIsBackground:Z

.field protected mNeedBaseParameter:Z

.field protected mNeedHosted:Z

.field protected mNeedId:Z

.field protected mNeedSessionID:Z

.field protected mParameter:Lcom/market/sdk/utils/Connection$Parameter;

.field protected mResponse:Lorg/json/JSONObject;

.field protected mString:Ljava/lang/String;

.field protected mUrl:Ljava/net/URL;

.field protected mUseGet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/market/sdk/utils/Connection;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p1, p2}, Lcom/market/sdk/utils/Connection;->connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/utils/Connection;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MarketConnection"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-direct {p0, v0}, Lcom/market/sdk/utils/Connection;->init(Ljava/net/URL;)V

    .line 76
    iput-boolean p2, p0, Lcom/market/sdk/utils/Connection;->mIsBackground:Z

    return-void
.end method

.method public static connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 83
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 87
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 90
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleResponseCode(I)Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 399
    sget-object p1, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p1

    :cond_0
    const-string v0, "MarketConnection"

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object p1, Lcom/market/sdk/utils/Connection$NetworkError;->SERVER_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p1
.end method

.method private init(Ljava/net/URL;)V
    .locals 2

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/market/sdk/utils/Connection;->mNeedBaseParameter:Z

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/market/sdk/utils/Connection;->mUseGet:Z

    .line 99
    iput-boolean v0, p0, Lcom/market/sdk/utils/Connection;->mNeedHosted:Z

    .line 100
    iput-boolean v0, p0, Lcom/market/sdk/utils/Connection;->mNeedId:Z

    .line 101
    iput-boolean v0, p0, Lcom/market/sdk/utils/Connection;->mNeedSessionID:Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/market/sdk/utils/Connection;->checkURL(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/market/sdk/utils/Connection;->mUrl:Ljava/net/URL;

    :cond_0
    return-void
.end method

.method private innerRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/market/sdk/utils/Connection$ResetableOutputStream;)Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 8

    .line 275
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 280
    sget-boolean v0, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MarketConnection"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hosted connection url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 p4, 0x0

    .line 294
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x2710

    .line 295
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 296
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market/sdk/utils/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x7530

    .line 299
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :goto_1
    const/4 v2, 0x0

    if-eqz p3, :cond_3

    const-string v3, "GET"

    .line 302
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_2

    :cond_3
    const-string v3, "POST"

    .line 305
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 306
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 309
    :goto_2
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/market/sdk/utils/Connection;->onConnectionCreated(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_3
    .catch Lcom/market/sdk/utils/Connection$ConnectionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 313
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    if-nez p3, :cond_5

    .line 316
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 317
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 318
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 319
    sget-boolean v4, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "MarketConnection"

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[post]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 325
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 326
    invoke-direct {p0, v3}, Lcom/market/sdk/utils/Connection;->handleResponseCode(I)Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v3

    .line 327
    sget-object v4, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v3, v4, :cond_9

    if-eqz p5, :cond_9

    .line 331
    :try_start_5
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 p4, 0x400

    .line 332
    :try_start_6
    new-array v5, p4, [B

    .line 334
    :goto_3
    invoke-virtual {v4, v5, v2, p4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_6

    .line 335
    invoke-virtual {p5, v5, v2, v6}, Lcom/market/sdk/utils/Connection$ResetableOutputStream;->write([BII)V

    goto :goto_3

    .line 337
    :cond_6
    invoke-virtual {p5}, Lcom/market/sdk/utils/Connection$ResetableOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 346
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catch_0
    move-exception p4

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v4, p4

    move-object p4, v2

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v4, p4

    move-object p4, v2

    :goto_4
    :try_start_8
    const-string v2, "MarketConnection"

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection Exception for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : read file stream error "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p5}, Lcom/market/sdk/utils/Connection$ResetableOutputStream;->reset()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v4, :cond_7

    .line 346
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_7
    if-eqz v1, :cond_0

    .line 357
    :goto_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_1
    move-exception p4

    :goto_6
    if-eqz v4, :cond_8

    .line 346
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 348
    :cond_8
    throw p4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_9
    :goto_7
    if-eqz v1, :cond_a

    .line 357
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-object v3

    :catch_2
    move-exception p4

    .line 311
    :try_start_b
    iget-object p1, p4, Lcom/market/sdk/utils/Connection$ConnectionException;->mError:Lcom/market/sdk/utils/Connection$NetworkError;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v1, :cond_b

    .line 357
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-object p1

    :catch_3
    move-exception p4

    goto :goto_8

    :catchall_2
    move-exception p1

    move-object v1, p4

    goto :goto_9

    :catch_4
    move-exception v1

    move-object v7, v1

    move-object v1, p4

    move-object p4, v7

    :goto_8
    :try_start_c
    const-string v2, "MarketConnection"

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection Exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v1, :cond_0

    goto :goto_5

    :catchall_3
    move-exception p1

    :goto_9
    if-eqz v1, :cond_c

    .line 357
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 359
    :cond_c
    throw p1

    :catch_5
    move-exception p4

    const-string v0, "MarketConnection"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " URL error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_d
    sget-object p1, Lcom/market/sdk/utils/Connection$NetworkError;->NETWORK_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p1
.end method


# virtual methods
.method protected checkURL(Ljava/net/URL;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 393
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http"

    .line 394
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getParameter()Lcom/market/sdk/utils/Connection$Parameter;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/market/sdk/utils/Connection;->mParameter:Lcom/market/sdk/utils/Connection$Parameter;

    return-object v0
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/market/sdk/utils/Connection;->mResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStringResponse()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/market/sdk/utils/Connection;->mString:Ljava/lang/String;

    return-object v0
.end method

.method protected onConnectionCreated(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/utils/Connection$ConnectionException;
        }
    .end annotation

    return-object p1
.end method

.method protected onQueryCreated(Lcom/market/sdk/utils/Connection$Parameter;)Lcom/market/sdk/utils/Connection$Parameter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/utils/Connection$ConnectionException;
        }
    .end annotation

    return-object p1
.end method

.method protected onURLCreated(Ljava/lang/String;Lcom/market/sdk/utils/Connection$Parameter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/utils/Connection$ConnectionException;
        }
    .end annotation

    return-object p1
.end method

.method protected request(Lcom/market/sdk/utils/Connection$ResetableOutputStream;)Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 10

    .line 205
    iget-object v0, p0, Lcom/market/sdk/utils/Connection;->mUrl:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 207
    sget-object p1, Lcom/market/sdk/utils/Connection$NetworkError;->URL_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p1

    .line 210
    :cond_0
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    sget-object p1, Lcom/market/sdk/utils/Connection$NetworkError;->NETWORK_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/market/sdk/utils/Connection;->mParameter:Lcom/market/sdk/utils/Connection$Parameter;

    if-nez v0, :cond_2

    .line 217
    new-instance v0, Lcom/market/sdk/utils/Connection$Parameter;

    invoke-direct {v0, p0}, Lcom/market/sdk/utils/Connection$Parameter;-><init>(Lcom/market/sdk/utils/Connection;)V

    iput-object v0, p0, Lcom/market/sdk/utils/Connection;->mParameter:Lcom/market/sdk/utils/Connection$Parameter;

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/market/sdk/utils/Connection;->mParameter:Lcom/market/sdk/utils/Connection$Parameter;

    .line 223
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/market/sdk/utils/Connection;->onQueryCreated(Lcom/market/sdk/utils/Connection$Parameter;)Lcom/market/sdk/utils/Connection$Parameter;

    move-result-object v0
    :try_end_0
    .catch Lcom/market/sdk/utils/Connection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    iget-object v1, p0, Lcom/market/sdk/utils/Connection;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-boolean v2, p0, Lcom/market/sdk/utils/Connection;->mUseGet:Z

    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {v0}, Lcom/market/sdk/utils/Connection$Parameter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 233
    iget-object v1, p0, Lcom/market/sdk/utils/Connection;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/market/sdk/utils/Connection;->mUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/market/sdk/utils/Connection$Parameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/market/sdk/utils/Connection$Parameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/market/sdk/utils/Connection;->onURLCreated(Ljava/lang/String;Lcom/market/sdk/utils/Connection$Parameter;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lcom/market/sdk/utils/Connection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    sget-boolean v2, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "MarketConnection"

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, ""

    .line 259
    iget-boolean v3, p0, Lcom/market/sdk/utils/Connection;->mUseGet:Z

    if-nez v3, :cond_6

    .line 260
    invoke-virtual {v0}, Lcom/market/sdk/utils/Connection$Parameter;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_6
    move-object v4, v2

    .line 263
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 264
    iget-boolean v5, p0, Lcom/market/sdk/utils/Connection;->mUseGet:Z

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/market/sdk/utils/Connection;->innerRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/market/sdk/utils/Connection$ResetableOutputStream;)Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object p1

    .line 265
    sget-boolean v0, Lcom/market/sdk/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "MarketConnection"

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time(ms) spent in request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v8

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object p1

    :catch_0
    move-exception p1

    .line 248
    iget-object p1, p1, Lcom/market/sdk/utils/Connection$ConnectionException;->mError:Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p1

    :catch_1
    move-exception p1

    .line 225
    iget-object p1, p1, Lcom/market/sdk/utils/Connection$ConnectionException;->mError:Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p1
.end method

.method public requestFile(Ljava/io/File;)Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 187
    :try_start_0
    new-instance v0, Lcom/market/sdk/utils/Connection$FileResetableOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/utils/Connection$FileResetableOutputStream;-><init>(Lcom/market/sdk/utils/Connection;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    invoke-virtual {p0, v0}, Lcom/market/sdk/utils/Connection;->request(Lcom/market/sdk/utils/Connection$ResetableOutputStream;)Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v1

    .line 194
    :try_start_1
    invoke-virtual {v0}, Lcom/market/sdk/utils/Connection$FileResetableOutputStream;->close()V

    .line 195
    sget-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    if-eq v1, v0, :cond_0

    const-string v0, "MarketConnection"

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object v1

    :catch_1
    move-exception p1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketConnection"

    invoke-static {v1, v0}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    throw p1

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public requestJSON()Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 5

    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    new-instance v1, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;

    invoke-direct {v1, p0, v0}, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;-><init>(Lcom/market/sdk/utils/Connection;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0, v1}, Lcom/market/sdk/utils/Connection;->request(Lcom/market/sdk/utils/Connection$ResetableOutputStream;)Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v1

    .line 146
    :try_start_0
    sget-object v2, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    if-ne v1, v2, :cond_0

    .line 147
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/market/sdk/utils/Connection;->mResponse:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "MarketConnection"

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "MarketConnection"

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->RESULT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v1

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 159
    :catch_3
    throw v1
.end method

.method public requestString()Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 5

    .line 164
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    new-instance v1, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;

    invoke-direct {v1, p0, v0}, Lcom/market/sdk/utils/Connection$MemoryResetableOutputStream;-><init>(Lcom/market/sdk/utils/Connection;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0, v1}, Lcom/market/sdk/utils/Connection;->request(Lcom/market/sdk/utils/Connection$ResetableOutputStream;)Lcom/market/sdk/utils/Connection$NetworkError;

    move-result-object v1

    .line 166
    sget-object v2, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    if-ne v1, v2, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market/sdk/utils/Connection;->mString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "MarketConnection"

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public setNeedBaseParameter(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/market/sdk/utils/Connection;->mNeedBaseParameter:Z

    return-void
.end method

.method public setNeedHosted(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/market/sdk/utils/Connection;->mNeedHosted:Z

    return-void
.end method

.method public setNeedId(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/market/sdk/utils/Connection;->mNeedId:Z

    return-void
.end method

.method public setNeedSessionId(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/market/sdk/utils/Connection;->mNeedSessionID:Z

    return-void
.end method

.method public setUseGet(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/market/sdk/utils/Connection;->mUseGet:Z

    return-void
.end method
