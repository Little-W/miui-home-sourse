.class public Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;
.super Lcom/miui/home/launcher/common/HapticFeedbackCompat;
.source "HapticFeedbackCompatLinear.java"


# instance fields
.field private final mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

.field private final mSupportEffectGestureBackLinear:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;-><init>()V

    .line 23
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa3

    .line 25
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

.method public static synthetic lambda$performBoom$11(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performClearAllRecentTasks$10(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performEnough$13(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performEnterEditMode$2(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Lcom/miui/home/launcher/EditStateChangeReason;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "event_pinch_in"

    .line 50
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p2, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 p2, 0x57

    invoke-virtual {p1, p2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    :goto_0
    return-void
.end method

.method static synthetic lambda$performEnterOrCreateFolder$5(Landroid/view/View;)V
    .locals 1

    .line 71
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic lambda$performEnterRecent$8(Landroid/view/View;)V
    .locals 1

    .line 89
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic lambda$performGestureBackHandUp$15(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public static synthetic lambda$performGestureReadyBack$14(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method static synthetic lambda$performHold$12(Landroid/view/View;)V
    .locals 1

    .line 120
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic lambda$performHomeGestureAccessibilitySwitch$9(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Landroid/view/View;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRemoveScreenReaderVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v0, 0xbf

    invoke-virtual {p1, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$performMeshHeavy$1(Landroid/view/View;)V
    .locals 1

    .line 43
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic lambda$performMeshNormal$0(Landroid/view/View;)V
    .locals 1

    .line 37
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic lambda$performPickUp$3(Landroid/view/View;)V
    .locals 1

    .line 60
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic lambda$performRecentViewLockChanged$6(Landroid/view/View;)V
    .locals 1

    .line 78
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic lambda$performRecentViewLockChanged$7(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(II)Z

    return-void
.end method

.method public static synthetic lambda$performUninstall$4(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public isSupportEffectGestureBackLinear()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->mSupportEffectGestureBackLinear:Z

    return v0
.end method

.method public performBoom(Landroid/view/View;)V
    .locals 0

    .line 115
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$h1jMAJh_gb22_2tLHztsT0hiCFQ;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$h1jMAJh_gb22_2tLHztsT0hiCFQ;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performClearAllRecentTasks(Landroid/view/View;)V
    .locals 0

    .line 105
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$J3Q3sYy2Xd1rDQZ5HjdxlJdwEBY;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$J3Q3sYy2Xd1rDQZ5HjdxlJdwEBY;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnough(Landroid/view/View;)V
    .locals 0

    .line 126
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$IVTsGIZvR8MJMxJnCaz5x5AMDrQ;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$IVTsGIZvR8MJMxJnCaz5x5AMDrQ;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Lcom/miui/home/launcher/EditStateChangeReason;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterOrCreateFolder(Landroid/view/View;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$PmPbAoVl_d3ZAd5yatzK0duAVu8;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$PmPbAoVl_d3ZAd5yatzK0duAVu8;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterRecent(Landroid/view/View;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$s5mbVjDM8eqInSZdXvVjwW75MDw;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$s5mbVjDM8eqInSZdXvVjwW75MDw;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performGestureBackHandUp(Landroid/view/View;)V
    .locals 0

    .line 136
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$nv8a1i-QSqLfxqqOFXSXF8F6GfQ;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$nv8a1i-QSqLfxqqOFXSXF8F6GfQ;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performGestureReadyBack(Landroid/view/View;)V
    .locals 0

    .line 131
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$48ZCs-cEM1wg3jzbtOOK169Zfdo;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$48ZCs-cEM1wg3jzbtOOK169Zfdo;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performHold(Landroid/view/View;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$F6QMo4IsCau11Y2WcqbDlaaWJ40;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$F6QMo4IsCau11Y2WcqbDlaaWJ40;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performHomeGestureAccessibilitySwitch(Landroid/view/View;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$_VLi8SsDiDc18iSJOr87qEh3QLY;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$_VLi8SsDiDc18iSJOr87qEh3QLY;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performMeshHeavy(Landroid/view/View;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$MXn-2c45BLxoNe-cj1c2NQYLLi0;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$MXn-2c45BLxoNe-cj1c2NQYLLi0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performMeshNormal(Landroid/view/View;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$u5jokxzKLu49dy8orPXeI_k4O4U;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$u5jokxzKLu49dy8orPXeI_k4O4U;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performPickUp(Landroid/view/View;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$QnDQPk9U0Y8aCwKJ7k4EqP5wrQE;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$QnDQPk9U0Y8aCwKJ7k4EqP5wrQE;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performRecentViewLockChanged(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 78
    new-instance p2, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$XcdH0m_EqH8yV4sov6GcY_bLAE8;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$XcdH0m_EqH8yV4sov6GcY_bLAE8;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$RSrT4r6Kll6niFpOhVx7B61Mob8;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$RSrT4r6Kll6niFpOhVx7B61Mob8;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public performUninstall(Landroid/view/View;)V
    .locals 0

    .line 66
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$ZjsxdF8xtBt8N58r9eFWzkuazT4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$ZjsxdF8xtBt8N58r9eFWzkuazT4;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method
