.class public Lcom/market/sdk/PreloadAppDetailService;
.super Lcom/market/ServiceProxy;

# interfaces
.implements Lcom/xiaomi/market/IPreloadAppDetailService;


# static fields
.field private static final ACTION_PRELOAD_SERVICE:Ljava/lang/String; = "com.xiaomi.market.PRELOAD_APP_DETAIL"

.field private static final TAG:Ljava/lang/String; = "PreloadAppDetailService"


# instance fields
.field private mAidl:Lcom/xiaomi/market/IPreloadAppDetailService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/PreloadAppDetailService;)Lcom/xiaomi/market/IPreloadAppDetailService;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/PreloadAppDetailService;->mAidl:Lcom/xiaomi/market/IPreloadAppDetailService;

    return-object p0
.end method

.method public static openService()Lcom/xiaomi/market/IPreloadAppDetailService;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.PRELOAD_APP_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/market/sdk/PreloadAppDetailService;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/market/sdk/PreloadAppDetailService;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/market/IPreloadAppDetailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IPreloadAppDetailService;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/PreloadAppDetailService;->mAidl:Lcom/xiaomi/market/IPreloadAppDetailService;

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public preloadAppDetail(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/PreloadAppDetailService$1;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/PreloadAppDetailService$1;-><init>(Lcom/market/sdk/PreloadAppDetailService;Ljava/lang/String;)V

    const-string p1, "preloadAppDetail"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/PreloadAppDetailService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method
