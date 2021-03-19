.class public Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;
.super Lcom/miui/home/recents/SystemUiProxyWrapper;
.source "MiuiSystemUiProxyWrapper.java"


# instance fields
.field private mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;-><init>()V

    .line 19
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$5bzGHuESjEhwlDt0k0wbBOztTCo;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$5bzGHuESjEhwlDt0k0wbBOztTCo;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$GYABph-0RAcM8sBBQFVkDqdaDek;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$GYABph-0RAcM8sBBQFVkDqdaDek;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$null$0(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    return-void
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 34
    iput-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    .line 35
    iget-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->exitSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "MiuiSystemUiProxyWrapper"

    const-string v3, "getMiddleSplitScreenSecondaryBounds error"

    .line 82
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public onAssistantGestureCompletion()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAssistantGestureCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onGestureLineProgress(F)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onGestureLineProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxyByBundle(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "extra_miui_sysui_proxy"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    :cond_0
    return-void
.end method
