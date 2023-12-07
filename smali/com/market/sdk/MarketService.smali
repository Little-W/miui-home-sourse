.class public Lcom/market/sdk/MarketService;
.super Lcom/market/ServiceProxy;

# interfaces
.implements Lcom/market/sdk/IMarketService;


# static fields
.field private static final MARKET_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.xiaomi.market.data.MarketService"


# instance fields
.field private mService:Lcom/market/sdk/IMarketService;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/MarketService;)Lcom/market/sdk/IMarketService;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/MarketService;->mService:Lcom/market/sdk/IMarketService;

    return-object p0
.end method

.method public static openService(Landroid/content/Context;)Lcom/market/sdk/IMarketService;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "com.xiaomi.market.data.MarketService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/market/sdk/MarketService;

    invoke-direct {v1, p0, v0}, Lcom/market/sdk/MarketService;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public allowConnectToNetwork()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v1, Lcom/market/sdk/MarketService$3;

    invoke-direct {v1, p0, v0}, Lcom/market/sdk/MarketService$3;-><init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;)V

    const-string v2, "allowConnectToNetwork"

    invoke-virtual {p0, v1, v2}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/market/sdk/MarketService;->waitForCompletion()V

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApkCheckInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v6}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v7, Lcom/market/sdk/MarketService$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/market/sdk/MarketService$2;-><init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "getApkCheckInfo"

    invoke-virtual {p0, v7, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/market/sdk/MarketService;->waitForCompletion()V

    invoke-virtual {v6}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v6}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/ApkVerifyInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCategory([Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v1, Lcom/market/sdk/MarketService$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/market/sdk/MarketService$11;-><init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;[Ljava/lang/String;)V

    const-string p1, "getCategory"

    invoke-virtual {p0, v1, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/market/sdk/MarketService;->waitForCompletion()V

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCategoryV2([Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/MarketService$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/MarketService$13;-><init>(Lcom/market/sdk/MarketService;[Ljava/lang/String;Landroid/os/ResultReceiver;)V

    const-string p1, "getCategoryV2"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public getDesktopFolderConfig(Landroid/os/ResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/MarketService$16;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/MarketService$16;-><init>(Lcom/market/sdk/MarketService;Landroid/os/ResultReceiver;)V

    const-string p1, "getDesktopFolderConfig"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public getEnableSettings()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v1, Lcom/market/sdk/MarketService$10;

    invoke-direct {v1, p0, v0}, Lcom/market/sdk/MarketService$10;-><init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;)V

    const-string v2, "getEnableSettings"

    invoke-virtual {p0, v1, v2}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/market/sdk/MarketService;->waitForCompletion()V

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getVerifyInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/market/sdk/ApkVerifyInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v6}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v7, Lcom/market/sdk/MarketService$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/market/sdk/MarketService$1;-><init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "getVerifyInfo"

    invoke-virtual {p0, v7, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/market/sdk/MarketService;->waitForCompletion()V

    invoke-virtual {v6}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v6}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/ApkVerifyInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWhiteSet()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v1, Lcom/market/sdk/MarketService$9;

    invoke-direct {v1, p0, v0}, Lcom/market/sdk/MarketService$9;-><init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;)V

    const-string v2, "getWhiteSet"

    invoke-virtual {p0, v1, v2}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/market/sdk/MarketService;->waitForCompletion()V

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getWhiteSetV2(Landroid/os/ResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/MarketService$12;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/MarketService$12;-><init>(Lcom/market/sdk/MarketService;Landroid/os/ResultReceiver;)V

    const-string p1, "getWhiteSetV2"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public isInWhiteSetForApkCheck(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    new-instance v1, Lcom/market/sdk/MarketService$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/market/sdk/MarketService$8;-><init>(Lcom/market/sdk/MarketService;Lcom/market/sdk/compat/FutureTaskCompat;Ljava/lang/String;)V

    const-string p1, "isInWhiteSetForApkCheck"

    invoke-virtual {p0, v1, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/market/sdk/MarketService;->waitForCompletion()V

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->isDone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/market/sdk/compat/FutureTaskCompat;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadDesktopRecommendInfo(JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/IDesktopRecommendResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/market/sdk/IDesktopRecommendResponse;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Lcom/market/sdk/MarketService$7;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/market/sdk/MarketService$7;-><init>(Lcom/market/sdk/MarketService;JLjava/lang/String;Ljava/util/List;Lcom/market/sdk/IDesktopRecommendResponse;)V

    const-string p1, "loadDesktopRecommendInfo"

    invoke-virtual {p0, v7, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public loadDesktopRecommendInfoV2(JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Lcom/market/sdk/MarketService$14;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/market/sdk/MarketService$14;-><init>(Lcom/market/sdk/MarketService;JLjava/lang/String;Ljava/util/List;Landroid/os/ResultReceiver;)V

    const-string p1, "loadDesktopRecommendInfoV2"

    invoke-virtual {p0, v7, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public loadDesktopRecommendInfoV3(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/MarketService$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/MarketService$15;-><init>(Lcom/market/sdk/MarketService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    const-string p1, "loadDesktopRecommendInfoV3"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/MarketService$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market/sdk/MarketService$5;-><init>(Lcom/market/sdk/MarketService;Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V

    const-string p1, "loadIcon"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public loadImage(Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Lcom/market/sdk/MarketService$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/market/sdk/MarketService$6;-><init>(Lcom/market/sdk/MarketService;Ljava/lang/String;IILcom/market/sdk/IImageCallback;)V

    const-string p1, "loadImage"

    invoke-virtual {p0, v6, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Lcom/market/sdk/IMarketService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/market/sdk/IMarketService;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/MarketService;->mService:Lcom/market/sdk/IMarketService;

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public recordStaticsCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/market/sdk/MarketService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/MarketService$4;-><init>(Lcom/market/sdk/MarketService;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "recordStaticsCountEvent"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/MarketService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method
