.class public Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;
.super Lcom/miui/home/launcher/common/HapticFeedbackCompat;
.source "HapticFeedbackCompatNormal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;-><init>()V

    return-void
.end method

.method static synthetic lambda$performEnterEditMode$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method static synthetic lambda$performEnterRecent$2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method static synthetic lambda$performStartDrag$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public isSupportEffectGestureBackLinear()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public performBoom()V
    .locals 0

    return-void
.end method

.method public performCheckedStateInEditMode(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performClearAllRecentTasks()V
    .locals 0

    return-void
.end method

.method public performClickNavBarTypePreference(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performEnough()V
    .locals 0

    return-void
.end method

.method public performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 0

    .line 22
    new-instance p2, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatNormal$prAPhjE6GkayrWsmh9Ij9BIsZpI;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatNormal$prAPhjE6GkayrWsmh9Ij9BIsZpI;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterHotSeat(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performEnterOrCreateFolder(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performEnterRecent(Landroid/view/View;)V
    .locals 1

    .line 47
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatNormal$AePKaXlXBx43diBj8reLCafjnWM;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatNormal$AePKaXlXBx43diBj8reLCafjnWM;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performFastScrollSection(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performGestureBackHandUp()V
    .locals 0

    return-void
.end method

.method public performGestureReadyBack()V
    .locals 0

    return-void
.end method

.method public performHold(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performHomeGestureAccessibilitySwitch(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performInjectKeyEvent(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performNotEnough()V
    .locals 0

    return-void
.end method

.method public performReadyDrop(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performRecentViewLockChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public performSqueezePosition(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performStartDrag(Landroid/view/View;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatNormal$kr6ywgke-sOpw1f_f1R4pesH_qQ;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatNormal$kr6ywgke-sOpw1f_f1R4pesH_qQ;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatNormal;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performStopScreenPinning(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performUninstall()V
    .locals 0

    return-void
.end method
