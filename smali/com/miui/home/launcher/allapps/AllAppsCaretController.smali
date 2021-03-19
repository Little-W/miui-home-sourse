.class public Lcom/miui/home/launcher/allapps/AllAppsCaretController;
.super Ljava/lang/Object;
.source "AllAppsCaretController.java"


# instance fields
.field private mCaretAnimator:Landroid/animation/ObjectAnimator;

.field private mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

.field private mLastCaretProgress:F

.field private mThresholdCrossed:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/pageindicators/CaretDrawable;Lcom/miui/home/launcher/Launcher;)V
    .locals 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    .line 43
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    const p1, 0x10c000d

    .line 45
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    const-string v2, "caretProgress"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    .line 50
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private animateCaretToProgress(F)V
    .locals 3

    .line 91
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mLastCaretProgress:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 100
    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mLastCaretProgress:F

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private getThreshold()F
    .locals 1

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mThresholdCrossed:Z

    if-eqz v0, :cond_1

    const v0, 0x3c75c28f    # 0.015f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onDragStart()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mThresholdCrossed:Z

    return-void
.end method

.method public updateCaret(FFZ)V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->getThreshold()F

    move-result v0

    cmpg-float v0, v0, p1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->getThreshold()F

    move-result v0

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mThresholdCrossed:Z

    const p1, 0x3f333333    # 0.7f

    div-float/2addr p2, p1

    .line 70
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 72
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/miui/home/launcher/pageindicators/CaretDrawable;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/pageindicators/CaretDrawable;->setCaretProgress(F)V

    .line 75
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->mLastCaretProgress:F

    const/4 p1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->animateCaretToProgress(F)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->getThreshold()F

    move-result p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    .line 82
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->animateCaretToProgress(F)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->getThreshold()F

    move-result p2

    sub-float/2addr v2, p2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    .line 84
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCaretController;->animateCaretToProgress(F)V

    :cond_2
    :goto_0
    return-void
.end method
