.class public Lcom/market/sdk/LocalAppInfo;
.super Ljava/lang/Object;


# instance fields
.field public displayName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public sourceDir:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/market/sdk/LocalAppInfo;->versionCode:I

    iput-object v0, p0, Lcom/market/sdk/LocalAppInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    iput-object v0, p0, Lcom/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/market/sdk/LocalAppInfo;
    .locals 1

    new-instance v0, Lcom/market/sdk/LocalAppInfo;

    invoke-direct {v0}, Lcom/market/sdk/LocalAppInfo;-><init>()V

    iput-object p0, v0, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
