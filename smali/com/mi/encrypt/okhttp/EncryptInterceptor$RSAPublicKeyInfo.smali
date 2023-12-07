.class Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/encrypt/okhttp/EncryptInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RSAPublicKeyInfo"
.end annotation


# instance fields
.field private certificatePathInfo:Ljava/lang/String;

.field private rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method private constructor <init>([Ljava/security/cert/Certificate;Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->dumpCertificatePathInfo([Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->certificatePathInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method synthetic constructor <init>([Ljava/security/cert/Certificate;Ljava/security/interfaces/RSAPublicKey;Lcom/mi/encrypt/okhttp/EncryptInterceptor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;-><init>([Ljava/security/cert/Certificate;Ljava/security/interfaces/RSAPublicKey;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)Ljava/security/interfaces/RSAPublicKey;
    .locals 0

    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$RSAPublicKeyInfo;->certificatePathInfo:Ljava/lang/String;

    return-object p0
.end method

.method private static dumpCertificatePathInfo([Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    const-string v3, "---Certs["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "---\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    const-string v4, "\n"

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
