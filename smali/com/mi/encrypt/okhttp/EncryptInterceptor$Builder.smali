.class public abstract Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;
.super Ljava/lang/Object;
.source "EncryptInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/encrypt/okhttp/EncryptInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private encryptDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionReporter:Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;

.field private isDefaultEncrypt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->isDefaultEncrypt:Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->encryptDomainList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->isDefaultEncrypt:Z

    return p0
.end method

.method static synthetic access$100(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)Ljava/util/List;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->encryptDomainList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->exceptionReporter:Lcom/mi/encrypt/okhttp/EncryptInterceptor$ExceptionReporter;

    return-object p0
.end method


# virtual methods
.method public abstract build()Lcom/mi/encrypt/okhttp/EncryptInterceptor;
.end method

.method public setDefaultEncrypt(Z)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->isDefaultEncrypt:Z

    return-object p0
.end method

.method public setEncryptDomainList(Ljava/util/List;)Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/mi/encrypt/okhttp/EncryptInterceptor$Builder;->encryptDomainList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
