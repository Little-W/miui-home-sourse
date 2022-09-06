.class public Lcom/xiaomi/onetrack/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AES"

.field private static final b:Ljava/lang/String; = "AES/ECB/PKCS5Padding"

.field private static final c:Ljava/lang/String; = "AES"

.field private static d:Ljavax/crypto/KeyGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "AES"

    .line 21
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/d/a;->d:Ljavax/crypto/KeyGenerator;

    .line 22
    sget-object v0, Lcom/xiaomi/onetrack/d/a;->d:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AES"

    .line 24
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AesUtil e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 117
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/xiaomi/onetrack/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 119
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 120
    :goto_1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 121
    aget-char v4, p0, v2

    aget-char v5, p0, v3

    if-ge v4, v5, :cond_0

    .line 122
    aget-char v4, p0, v2

    .line 123
    aget-char v5, p0, v3

    aput-char v5, p0, v2

    .line 124
    aput-char v4, p0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "AES"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeFromSalt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->e(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()[B
    .locals 1

    .line 29
    sget-object v0, Lcom/xiaomi/onetrack/d/a;->d:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;)[B
    .locals 2

    .line 50
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/onetrack/d/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 51
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5Padding"

    .line 52
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 53
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 54
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AES"

    .line 56
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "decrypt exception:"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B[B)[B
    .locals 2

    .line 34
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5Padding"

    .line 35
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 37
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AES"

    .line 39
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encrypt exception:"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->e(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([B[B)[B
    .locals 3

    .line 63
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    .line 64
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 65
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "AES"

    const-string v2, "decrypt exception:"

    .line 68
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "AES"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", passwd len="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/a;->c(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a([BLjava/lang/String;)[B

    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 6

    if-eqz p0, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 88
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    .line 89
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 91
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 110
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a([BLjava/lang/String;)[B

    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method
