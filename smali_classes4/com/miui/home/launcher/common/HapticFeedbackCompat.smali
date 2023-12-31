.class public abstract Lcom/miui/home/launcher/common/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/common/HapticFeedbackCompat;

.field private static final sInstanceLock:Ljava/lang/Object;

.field public static sIsSupportHapticV2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sInstanceLock:Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->doesSupportHapticV2()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sIsSupportHapticV2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static doesSupportHapticV2()Z
    .locals 2

    const-string v0, "sys.haptic.version"

    const-string v1, "1.0"

    .line 79
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;
    .locals 2

    .line 20
    sget-object v0, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sInstance:Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    if-nez v1, :cond_2

    .line 22
    sget-boolean v1, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sIsSupportHapticV2:Z

    if-eqz v1, :cond_0

    .line 23
    new-instance v1, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sInstance:Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    new-instance v1, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sInstance:Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sInstance:Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    .line 30
    :cond_2
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sInstance:Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$performBackground$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 61
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.Haptic"

    const-string v1, "performHapticFeedback error"

    .line 63
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract isSupportEffectGestureBackLinear()Z
.end method

.method protected performBackground(Ljava/lang/Runnable;)V
    .locals 0

    .line 59
    new-instance p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompat$JgXRB9bOEAnox5ZbDXD0GAimj1E;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompat$JgXRB9bOEAnox5ZbDXD0GAimj1E;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract performBoom()V
.end method

.method public abstract performCheckedStateInEditMode(Landroid/view/View;)V
.end method

.method public abstract performClearAllRecentTasks()V
.end method

.method public abstract performClickNavBarTypePreference(Landroid/view/View;)V
.end method

.method public abstract performEnough()V
.end method

.method public abstract performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V
.end method

.method public abstract performEnterHotSeat(Landroid/view/View;)V
.end method

.method public abstract performEnterOrCreateFolder(Landroid/view/View;)V
.end method

.method public abstract performEnterRecent(Landroid/view/View;)V
.end method

.method public abstract performFastScrollSection(Landroid/view/View;)V
.end method

.method public abstract performGestureBackHandUp()V
.end method

.method public abstract performGestureReadyBack()V
.end method

.method public abstract performHold(Landroid/view/View;)V
.end method

.method public abstract performHomeGestureAccessibilitySwitch(Landroid/view/View;)V
.end method

.method public abstract performInjectKeyEvent(Landroid/view/View;)V
.end method

.method public abstract performNotEnough()V
.end method

.method public abstract performReadyDrop(Landroid/view/View;)V
.end method

.method public abstract performRecentViewLockChanged(Landroid/view/View;Z)V
.end method

.method public abstract performSqueezePosition(Landroid/view/View;)V
.end method

.method public abstract performStartDrag(Landroid/view/View;)V
.end method

.method public abstract performStopScreenPinning(Landroid/view/View;)V
.end method

.method public abstract performUninstall()V
.end method
