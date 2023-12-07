.class public final Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;
.super Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private encryptHeaderKeys:[Ljava/lang/String;

.field private reservedQueryKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->encryptHeaderKeys:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->reservedQueryKeys:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/mi/encrypt/okhttp/EncryptInterceptor;
    .locals 1

    new-instance v0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;

    invoke-direct {v0, p0}, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2;-><init>(Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;)V

    return-object v0
.end method

.method public setEncryptHeaderKeys([Ljava/lang/String;)Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->encryptHeaderKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public setReservedQueryKeys([Ljava/lang/String;)Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptorV2$Builder;->reservedQueryKeys:[Ljava/lang/String;

    return-object p0
.end method
