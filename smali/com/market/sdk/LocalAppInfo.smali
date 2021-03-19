.class public Lcom/market/sdk/LocalAppInfo;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"


# instance fields
.field public displayName:Ljava/lang/String;

.field public isSystem:Z

.field public packageName:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public sourceMD5:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/market/sdk/LocalAppInfo;->versionCode:I

    const-string v1, ""

    .line 14
    iput-object v1, p0, Lcom/market/sdk/LocalAppInfo;->versionName:Ljava/lang/String;

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    const-string v1, ""

    .line 16
    iput-object v1, p0, Lcom/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    const-string v1, ""

    .line 17
    iput-object v1, p0, Lcom/market/sdk/LocalAppInfo;->sourceMD5:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, Lcom/market/sdk/LocalAppInfo;->isSystem:Z

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/market/sdk/LocalAppInfo;
    .locals 1

    .line 25
    new-instance v0, Lcom/market/sdk/LocalAppInfo;

    invoke-direct {v0}, Lcom/market/sdk/LocalAppInfo;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getSourceMD5()Ljava/lang/String;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/market/sdk/LocalAppInfo;->sourceMD5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/market/sdk/utils/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/market/sdk/LocalAppInfo;->sourceMD5:Ljava/lang/String;

    return-object v0
.end method
