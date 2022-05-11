.class public Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;
.super Lcom/miui/home/launcher/common/HapticFeedbackCompat;
.source "HapticFeedbackCompatLinear.java"


# instance fields
.field private final mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

.field private final mSupportEffectGestureBackLinear:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;-><init>()V

    .line 24
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa3

    .line 26
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mSupportEffectGestureBackLinear:Z

    return-void
.end method

.method public static synthetic lambda$performBoom$5(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performClearAllRecentTasks$4(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performEnough$6(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performEnterEditMode$0(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performGestureBackHandUp$8(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performGestureReadyBack$7(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performHomeGestureAccessibilitySwitch$3(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRemoveScreenReaderVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v0, 0xbf

    invoke-virtual {p1, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$performRecentViewLockChanged$2(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(II)Z

    return-void
.end method

.method public static synthetic lambda$performUninstall$1(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public isSupportEffectGestureBackLinear()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mSupportEffectGestureBackLinear:Z

    return v0
.end method

.method public performBoom()V
    .locals 1

    .line 106
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xB_Q-EdsUCJ2dA7aj3IkA4vP_7Q;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xB_Q-EdsUCJ2dA7aj3IkA4vP_7Q;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performClearAllRecentTasks()V
    .locals 1

    .line 96
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$dNZP5-O6XsFEgRTgofzVsWNMg_E;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$dNZP5-O6XsFEgRTgofzVsWNMg_E;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnough()V
    .locals 1

    .line 116
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$AElzV_R7yeSJtca8JHXvsZGdIXY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$AElzV_R7yeSJtca8JHXvsZGdIXY;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 0

    .line 48
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$7BSDH1EngxXLvOqJzALlWvGCVv4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$7BSDH1EngxXLvOqJzALlWvGCVv4;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterOrCreateFolder(Landroid/view/View;)V
    .locals 1

    .line 65
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void
.end method

.method public performEnterRecent(Landroid/view/View;)V
    .locals 1

    .line 81
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void
.end method

.method public performGestureBackHandUp()V
    .locals 1

    const-string v0, "BLOCKER_ID_FOR_HAPTIC_GESTURE_BACK"

    .line 127
    invoke-static {v0}, Lcom/miui/home/recents/util/TimeOutBlocker;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$WXvApEEplUVBDpb0LT_MMaXeXl8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$WXvApEEplUVBDpb0LT_MMaXeXl8;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public performGestureReadyBack()V
    .locals 4

    .line 121
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$kuKH7Bm0e3Hf9WqrIQgQ-TF4PNQ;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$kuKH7Bm0e3Hf9WqrIQgQ-TF4PNQ;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "BLOCKER_ID_FOR_HAPTIC_GESTURE_BACK"

    const-wide/16 v2, 0x8c

    invoke-static {v0, v2, v3, v1}, Lcom/miui/home/recents/util/TimeOutBlocker;->startCountDown(Landroid/os/Handler;JLjava/lang/String;)V

    return-void
.end method

.method public performHold(Landroid/view/View;)V
    .locals 1

    .line 111
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void
.end method

.method public performHomeGestureAccessibilitySwitch(Landroid/view/View;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$Qi_eR02wwJZywUsLUM_Lp1kL5-4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$Qi_eR02wwJZywUsLUM_Lp1kL5-4;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performMeshHeavy(Landroid/view/View;)V
    .locals 1

    .line 43
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void
.end method

.method public performMeshNormal(Landroid/view/View;)V
    .locals 1

    .line 38
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void
.end method

.method public performPickUp(Landroid/view/View;)V
    .locals 1

    .line 55
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    return-void
.end method

.method public performRecentViewLockChanged(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 71
    sget p2, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {p1, p2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$sYHh2lEwz5HThX0fGJpl6NeL67c;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$sYHh2lEwz5HThX0fGJpl6NeL67c;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public performUninstall()V
    .locals 1

    .line 60
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$nUBRwunxYKpG-4zugsAceN1agUY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$nUBRwunxYKpG-4zugsAceN1agUY;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method
