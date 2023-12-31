.class public Lcom/market/sdk/FloatService;
.super Lcom/market/ServiceProxy;
.source "FloatService.java"

# interfaces
.implements Lcom/xiaomi/market/IAppDownloadManager;


# static fields
.field private static final BIND_SERVICE_ACTION:Ljava/lang/String; = "com.xiaomi.market.service.AppDownloadService"

.field private static final BIND_SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.market.data.AppDownloadService"

.field private static final TAG:Ljava/lang/String; = "FloatService"


# instance fields
.field private mAidl:Lcom/xiaomi/market/IAppDownloadManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/market/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/FloatService;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/market/sdk/FloatService;->mAidl:Lcom/xiaomi/market/IAppDownloadManager;

    return-object p0
.end method

.method public static openService(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;
    .locals 3

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object p1, Lcom/market/sdk/MarketManager;->MARKET_PACKAGE_NAME:Ljava/lang/String;

    .line 32
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.market.data.AppDownloadService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "com.xiaomi.market.service.AppDownloadService"

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    new-instance p1, Lcom/market/sdk/FloatService;

    invoke-direct {p1, p0, v0}, Lcom/market/sdk/FloatService;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public cancel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public download(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/market/sdk/FloatService$1;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$1;-><init>(Lcom/market/sdk/FloatService;Landroid/os/Bundle;)V

    const-string p1, "download"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/FloatService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public downloadByUri(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/market/sdk/FloatService$4;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$4;-><init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V

    const-string p1, "downloadByUri"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/FloatService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public lifecycleChanged(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/market/sdk/FloatService$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/FloatService$7;-><init>(Lcom/market/sdk/FloatService;Ljava/lang/String;I)V

    const-string p1, "lifecycleChanged"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/FloatService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/FloatService;->mAidl:Lcom/xiaomi/market/IAppDownloadManager;

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public pause(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    .line 74
    new-instance v1, Lcom/market/sdk/FloatService$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/FloatService$2;-><init>(Lcom/market/sdk/FloatService;Lcom/market/sdk/compat/FutureTaskCompat;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pause"

    invoke-virtual {p0, v1, p1}, Lcom/market/sdk/FloatService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 84
    invoke-virtual {p0}, Lcom/market/sdk/FloatService;->waitForCompletion()V

    .line 85
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

.method public pauseByUri(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/market/sdk/FloatService$5;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$5;-><init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V

    const-string p1, "pauseByUri"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/FloatService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method

.method public resume(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/market/sdk/compat/FutureTaskCompat;

    invoke-direct {v0}, Lcom/market/sdk/compat/FutureTaskCompat;-><init>()V

    .line 91
    new-instance v1, Lcom/market/sdk/FloatService$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/market/sdk/FloatService$3;-><init>(Lcom/market/sdk/FloatService;Lcom/market/sdk/compat/FutureTaskCompat;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "resume"

    invoke-virtual {p0, v1, p1}, Lcom/market/sdk/FloatService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 101
    invoke-virtual {p0}, Lcom/market/sdk/FloatService;->waitForCompletion()V

    .line 102
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

.method public resumeByUri(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/market/sdk/FloatService$6;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/FloatService$6;-><init>(Lcom/market/sdk/FloatService;Landroid/net/Uri;)V

    const-string p1, "resumeByUri"

    invoke-virtual {p0, v0, p1}, Lcom/market/sdk/FloatService;->setTask(Lcom/market/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    return-void
.end method
