.class public Lcom/miui/home/recents/SystemUiProxyWrapper;
.super Ljava/lang/Object;
.source "SystemUiProxyWrapper.java"


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/MainThreadInitializedObject<",
            "Lcom/miui/home/recents/SystemUiProxyWrapper;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/miui/home/recents/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$gcX4WLZ9Hlee2V9FTl2FVmiaEWc;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$gcX4WLZ9Hlee2V9FTl2FVmiaEWc;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$a34-MuaSVCrOVm47H2JWFOgeEj4;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$a34-MuaSVCrOVm47H2JWFOgeEj4;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static synthetic lambda$new$343(Lcom/miui/home/recents/SystemUiProxyWrapper;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$HzwNiIw_YyN60pE8_7Iq0FNu98s;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$HzwNiIw_YyN60pE8_7Iq0FNu98s;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$null$342(Lcom/miui/home/recents/SystemUiProxyWrapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    return-void
.end method

.method static synthetic lambda$static$344(Landroid/os/Bundle;)Lcom/miui/home/recents/SystemUiProxyWrapper;
    .locals 3

    const-string v0, "extra_miui_sysui_proxy"

    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 27
    new-instance p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-direct {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;-><init>()V

    :goto_0
    const-string v0, "SystemUiProxyWrapper"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create instance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 42
    iput-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 43
    iget-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->exitSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemUiProxyWrapper"

    const-string v2, "Failed to notify SysUI of exitSplitScreen"

    .line 86
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "SystemUiProxyWrapper"

    const-string v3, "getMiddleSplitScreenSecondaryBounds error"

    .line 141
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public isProxySurvive()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SystemUiProxyWrapper"

    const-string p2, "Failed to link sysui proxy death recipient"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onAssistantGestureCompletion()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemUiProxyWrapper"

    const-string v2, "Failed to notify SysUI of onAssistantGestureCompletion"

    .line 130
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to notify SysUI of onAssistantProgress"

    .line 119
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onGestureLineProgress(F)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onGestureLineProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to notify SysUI of onGestureLineProgress"

    .line 97
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onSplitScreenInvoked()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to notify SysUI of onStatusBarMotionEvent"

    .line 153
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "extra_sysui_proxy"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    :cond_0
    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed to notify SysUI of startAssistant"

    .line 108
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
