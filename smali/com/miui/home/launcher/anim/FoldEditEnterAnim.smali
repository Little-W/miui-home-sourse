.class public Lcom/miui/home/launcher/anim/FoldEditEnterAnim;
.super Lcom/miui/home/launcher/anim/NormalEditEnterAnim;
.source "FoldEditEnterAnim.java"


# instance fields
.field private mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field private mFoldEditBgMargin:I

.field private mIsFoldLongClickInEdit:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->initFoldParam()V

    return-void
.end method

.method private initFoldParam()V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070159

    goto :goto_0

    :cond_0
    const v1, 0x7f07015a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mFoldEditBgMargin:I

    const v1, 0x7f07015b

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0600ec

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f0600eb

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 40
    new-instance v3, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v4, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {v3, v4, v2, v0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    return-void
.end method

.method public static synthetic lambda$startFoldEnterEditAnim$0(Lcom/miui/home/launcher/anim/FoldEditEnterAnim;F)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getEditModePivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setPivotY(F)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->scaleTargetView(F)V

    return-void
.end method

.method private startFoldEnterEditAnim()V
    .locals 5

    .line 67
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    .line 68
    new-instance v1, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditEnterAnim$n34XYJjO-D-b4_2NW6r4BdtJkIo;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$FoldEditEnterAnim$n34XYJjO-D-b4_2NW6r4BdtJkIo;-><init>(Lcom/miui/home/launcher/anim/FoldEditEnterAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 72
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->registerEndAnimationMessage()V

    const-wide/16 v1, 0x32

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->startDelay(J)V

    .line 74
    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    return-void
.end method


# virtual methods
.method public drawEditBackground(ZLandroid/graphics/Canvas;)V
    .locals 7

    if-nez p1, :cond_0

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getCellContainerHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mFoldEditBgMargin:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNotchEditModePaddingTopDelta()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getNotchEditModeGapDelta()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mFoldEditBgMargin:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    .line 81
    iget-object v1, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-float v6, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;FFFF)V

    :cond_0
    return-void
.end method

.method protected prepareAnimParam()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/miui/home/launcher/anim/NormalEditEnterAnim;->prepareAnimParam()V

    .line 62
    iget-boolean v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mIsFoldLongClickInEdit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleY()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCurrentCellLayoutScale:F

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mIsScalePivotInCenter:Z

    return-void
.end method

.method protected scaleTargetView(F)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->updateEditModeScale(F)V

    return-void
.end method

.method public startEditAnim(ZLcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "event_long_click_in_edit"

    .line 47
    invoke-virtual {p2}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "event_menu"

    .line 48
    invoke-virtual {p2}, Lcom/miui/home/launcher/EditStateChangeReason;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mIsFoldLongClickInEdit:Z

    if-eqz p1, :cond_2

    .line 49
    iget-boolean p2, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mIsFoldLongClickInEdit:Z

    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->startEnterAnim()V

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->startFoldEnterEditAnim()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->startEnterAnim()V

    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->startOutAnim()V

    :goto_1
    return-void
.end method

.method public updateEditBackground(F)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    sub-float v1, v0, v1

    div-float/2addr p1, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mBackgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)V

    :cond_0
    return-void
.end method

.method public updateParam()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070159

    goto :goto_0

    :cond_0
    const v1, 0x7f07015a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/FoldEditEnterAnim;->mFoldEditBgMargin:I

    return-void
.end method
