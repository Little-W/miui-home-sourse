.class public final Lcom/xiaomi/dist/utils/SignatureUtils;
.super Ljava/lang/Object;
.source "SignatureUtils.java"


# static fields
.field private static final HEX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "A"

    const-string v11, "B"

    const-string v12, "C"

    const-string v13, "D"

    const-string v14, "E"

    const-string v15, "F"

    .line 20
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/dist/utils/SignatureUtils;->HEX:[Ljava/lang/String;

    return-void
.end method

.method public static getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 47
    invoke-static {p1, p0}, Lcom/xiaomi/dist/utils/SignatureUtils;->getSignatureAndroidP(Ljava/lang/String;Landroid/content/pm/PackageManager;)[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1, p0}, Lcom/xiaomi/dist/utils/SignatureUtils;->getSignatureDefault(Ljava/lang/String;Landroid/content/pm/PackageManager;)[Landroid/content/pm/Signature;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 51
    array-length p1, p0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 54
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/dist/utils/SignatureUtils;->getStringSignatures([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getSignatureAndroidP(Ljava/lang/String;Landroid/content/pm/PackageManager;)[Landroid/content/pm/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/high16 v0, 0x8000000

    .line 79
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 81
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method private static getSignatureDefault(Ljava/lang/String;Landroid/content/pm/PackageManager;)[Landroid/content/pm/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x40

    .line 72
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 73
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object p0
.end method

.method private static getStringSignatures([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 85
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "SHA-1"

    .line 90
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/dist/utils/SignatureUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static toHexString(B)Ljava/lang/String;
    .locals 3

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    .line 65
    :cond_0
    div-int/lit8 v0, p0, 0x10

    .line 66
    rem-int/lit8 p0, p0, 0x10

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/dist/utils/SignatureUtils;->HEX:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaomi/dist/utils/SignatureUtils;->HEX:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 32
    invoke-static {v3}, Lcom/xiaomi/dist/utils/SignatureUtils;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
