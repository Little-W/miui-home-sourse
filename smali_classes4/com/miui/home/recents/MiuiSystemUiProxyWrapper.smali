.class public Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;
.super Lcom/miui/home/recents/SystemUiProxyWrapper;
.source "MiuiSystemUiProxyWrapper.java"


# instance fields
.field private mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;-><init>()V

    .line 24
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$5bzGHuESjEhwlDt0k0wbBOztTCo;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$5bzGHuESjEhwlDt0k0wbBOztTCo;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 39
    iput-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    .line 40
    iget-object p1, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    iget-object v0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->exitSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 3

    .line 81
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 85
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "MiuiSystemUiProxyWrapper"

    const-string v2, "getMiddleSplitScreenSecondaryBounds error"

    .line 87
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public synthetic lambda$new$0$MiuiSystemUiProxyWrapper()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    return-void
.end method

.method public synthetic lambda$new$1$MiuiSystemUiProxyWrapper()V
    .locals 2

    .line 25
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$C_irXsuhlHrZIIzWqw2gKuN8Zzo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$MiuiSystemUiProxyWrapper$C_irXsuhlHrZIIzWqw2gKuN8Zzo;-><init>(Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantGestureCompletion()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onAssistantGestureCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFocusNotifyAnimEnd()V
    .locals 2

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onFocusNotifyAnimEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MiuiSystemUiProxyWrapper"

    const-string v1, "onFocusNotifyAnimEnd error"

    .line 112
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onFocusNotifyAnimStart()V
    .locals 2

    .line 94
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 98
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onFocusNotifyAnimStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MiuiSystemUiProxyWrapper"

    const-string v1, "onFocusNotifyAnimStart error"

    .line 100
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onGestureLineProgress(F)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->mMiuiSystemUiProxy:Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    if-nez p0, :cond_0

    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;->onGestureLineProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V
    .locals 0

    .line 30
    invoke-super/range {p0 .. p8}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;)V

    if-eqz p1, :cond_0

    const-string p2, "extra_miui_sysui_proxy"

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy;)V

    :cond_0
    return-void
.end method
