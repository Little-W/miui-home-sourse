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
.field private mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

.field private mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/miui/home/recents/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$JTaWkTkRT6U18upfHCVBROZfPLc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$JTaWkTkRT6U18upfHCVBROZfPLc;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/recents/SystemUiProxyWrapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/onehanded/IOneHanded;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/recents/SystemUiProxyWrapper;)V
    .locals 2

    .line 23
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$myWAy2B17ydbLNl8OVKVQXrEMWA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$myWAy2B17ydbLNl8OVKVQXrEMWA;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$static$2(Landroid/os/Bundle;)Lcom/miui/home/recents/SystemUiProxyWrapper;
    .locals 3

    const-string v0, "extra_miui_sysui_proxy"

    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 30
    new-instance p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-direct {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;-><init>()V

    :goto_0
    const-string v0, "SystemUiProxyWrapper"

    .line 31
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

    return-object p0
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/onehanded/IOneHanded;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 45
    iput-object p2, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    .line 46
    iget-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object p2, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 87
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

    .line 89
    :goto_0
    return-void
.end method

.method public getMiddleSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 142
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

    .line 144
    return-object v1
.end method

.method public isProxySurvive()Z
    .locals 1

    .line 66
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

    .line 52
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

    .line 54
    :cond_0
    :goto_0
    return-void
.end method

.method public onAssistantGestureCompletion()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 131
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

    .line 133
    :goto_0
    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 120
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

    .line 122
    :goto_0
    return-void
.end method

.method public onGestureLineProgress(F)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 98
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

    .line 100
    :goto_0
    return-void
.end method

.method public onSplitScreenInvoked()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 154
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

    .line 156
    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "extra_sysui_proxy"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/onehanded/IOneHanded;)V

    :cond_0
    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-nez v0, :cond_0

    return-void

    .line 109
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

    .line 111
    :goto_0
    return-void
.end method

.method public startOneHandedMode()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/IOneHanded;->startOneHanded()V

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "startOneHandedMode"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemUiProxyWrapper"

    const-string v2, "Failed call startOneHandedMode"

    .line 166
    :cond_0
    :goto_0
    return-void
.end method

.method public stopOneHandedMode()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/IOneHanded;->stopOneHanded()V

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "stopOneHandedMode"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemUiProxyWrapper"

    const-string v2, "Failed call stopOneHandedMode"

    .line 177
    :cond_0
    :goto_0
    return-void
.end method

.method protected unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
