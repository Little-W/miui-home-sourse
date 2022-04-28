.class public Lcom/mi/encrypt/EncryptHelper;
.super Ljava/lang/Object;
.source "EncryptHelper.java"


# static fields
.field private static sInstance:Lcom/mi/encrypt/EncryptHelper;


# instance fields
.field private mAESIV:[B

.field private mAESKey:[B

.field private mAESKeyID:Ljava/lang/String;

.field private mAESSecretKey:[B

.field private mEncryptedAESKeys:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/security/interfaces/RSAPublicKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mEncryptedAESKeys:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESSecretKey:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mi/encrypt/AESUtil;->generateSecretKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESSecretKey:[B

    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESKeyID:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESSecretKey:[B

    invoke-direct {p0, v0}, Lcom/mi/encrypt/EncryptHelper;->generateAESKey([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESKey:[B

    .line 60
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESSecretKey:[B

    invoke-direct {p0, v0}, Lcom/mi/encrypt/EncryptHelper;->generateAESIV([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESIV:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private generateAESIV([B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    .line 161
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateAESKey([B)[B
    .locals 2

    if-eqz p1, :cond_0

    .line 145
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 148
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/mi/encrypt/EncryptHelper;
    .locals 2

    .line 44
    sget-object v0, Lcom/mi/encrypt/EncryptHelper;->sInstance:Lcom/mi/encrypt/EncryptHelper;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/mi/encrypt/EncryptHelper;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/mi/encrypt/EncryptHelper;->sInstance:Lcom/mi/encrypt/EncryptHelper;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/mi/encrypt/EncryptHelper;

    invoke-direct {v1}, Lcom/mi/encrypt/EncryptHelper;-><init>()V

    sput-object v1, Lcom/mi/encrypt/EncryptHelper;->sInstance:Lcom/mi/encrypt/EncryptHelper;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/encrypt/EncryptHelper;->sInstance:Lcom/mi/encrypt/EncryptHelper;

    return-object v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESKey:[B

    iget-object v1, p0, Lcom/mi/encrypt/EncryptHelper;->mAESIV:[B

    invoke-static {p1, v0, v1}, Lcom/mi/encrypt/AESUtil;->decrypt([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESKey:[B

    iget-object v1, p0, Lcom/mi/encrypt/EncryptHelper;->mAESIV:[B

    invoke-static {p1, v0, v1}, Lcom/mi/encrypt/AESUtil;->encrypt([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getAESIV()[B
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESIV:[B

    return-object v0
.end method

.method public getAESKey()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESKey:[B

    return-object v0
.end method

.method public getAESKeyID()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESKeyID:Ljava/lang/String;

    return-object v0
.end method

.method public getAESSecretKey()[B
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESSecretKey:[B

    return-object v0
.end method

.method public getEncryptedAESKey(Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mEncryptedAESKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mAESSecretKey:[B

    invoke-static {v0, p1}, Lcom/mi/encrypt/RSAUtil;->encrypt([BLjava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/mi/encrypt/EncryptHelper;->mEncryptedAESKeys:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/mi/encrypt/EncryptHelper;->mEncryptedAESKeys:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
