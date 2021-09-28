.class public Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;
.super Lcom/miui/home/recents/SystemUiProxyWrapper;
.source "MiuiSystemUiProxyWrapper.java"


# instance fields
.field private mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;-><init>()V

    .line 18
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$5bzGHuESjEhwlDt0k0wbBOztTCo;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$5bzGHuESjEhwlDt0k0wbBOztTCo;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V
    .locals 2

    .line 19
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$C_irXsuhlHrZIIzWqw2gKuN8Zzo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$C_irXsuhlHrZIIzWqw2gKuN8Zzo;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 33
    iput-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    .line 34
    iget-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->exitSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 79
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

    .line 81
    return-object v1
.end method

.method public onAssistantGestureCompletion()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAssistantGestureCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onGestureLineProgress(F)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onGestureLineProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V

    if-eqz p1, :cond_0

    const-string p2, "extra_miui_sysui_proxy"

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    :cond_0
    return-void
.end method
