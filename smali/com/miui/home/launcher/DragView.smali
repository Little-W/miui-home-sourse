.class public Lcom/miui/home/launcher/DragView;
.super Landroid/view/View;
.source "DragView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;,
        Lcom/miui/home/launcher/DragView$CountLabel;,
        Lcom/miui/home/launcher/DragView$DropTargetContainer;,
        Lcom/miui/home/launcher/DragView$_lancet;
    }
.end annotation


# instance fields
.field private mAnimateTarget:Landroid/view/View;

.field private mCanceledMode:Z

.field private mContent:Landroid/view/View;

.field private mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragGroup:Lcom/miui/home/launcher/DragObject;

.field private mDragInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mDragSource:Lcom/miui/home/launcher/DragSource;

.field private mDragViewsCount:I

.field private mDragVisualizeOffset:[I

.field private mDropSucceeded:Z

.field private mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

.field private mFadeoutAnimation:Z

.field private mFakeTargetMode:Z

.field private mHasDrawn:Z

.field private mIsAutoDrag:Z

.field private mIsForceFadeOut:Z

.field private mIsMoved:Z

.field private mIsMultiDrag:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMaxDropAnimationDistance:I

.field private mMaxDropAnimationDuration:I

.field private mMinDropAnimationDuration:I

.field private mMyIndex:I

.field private mNextDragView:Lcom/miui/home/launcher/DragView;

.field private mOnAnimationEndCallback:Ljava/lang/Runnable;

.field private mOnRemoveCallback:Ljava/lang/Runnable;

.field private mOutline:Landroid/graphics/Bitmap;

.field private mOwner:Landroid/view/ViewGroup;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPrevAnimateTarget:Landroid/view/View;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mSpringLayerController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

.field private mTargetLoc:[F

.field private mTargetScale:F

.field private mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

.field private mTmpPos:[F

.field private mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ItemInfo;IIZLcom/miui/home/launcher/DragSource;)V
    .locals 4

    .line 120
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 72
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    .line 73
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mTmpPos:[F

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    .line 75
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 76
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    .line 77
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    .line 79
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    .line 80
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    .line 81
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

    .line 82
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 89
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    .line 90
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    .line 91
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    .line 92
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    .line 93
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 94
    iput v2, p0, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    .line 97
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    .line 100
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mSpringLayerController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    .line 103
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 107
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 728
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    .line 121
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 122
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 123
    iput-object p3, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    .line 124
    iput-object p4, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p1, :cond_0

    const-string p1, "Launcher_DragView"

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "new DragView:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p4}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/home/launcher/DragView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iput p5, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    .line 129
    iput-boolean p7, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    .line 130
    iput-object p8, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    .line 131
    iput-object p2, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    .line 132
    iput p6, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    .line 133
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f0b0014

    .line 136
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    iput p4, p0, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDuration:I

    const p4, 0x7f0b0015

    .line 137
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/miui/home/launcher/DragView;->setMinDropAnimationDuration(I)V

    const p4, 0x7f0b0013

    .line 138
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDistance:I

    .line 140
    instance-of p1, p2, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz p1, :cond_2

    .line 141
    check-cast p2, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    invoke-interface {p2, p1}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    aput v1, p1, v1

    .line 144
    aput v1, p1, p3

    .line 147
    :goto_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    if-nez p1, :cond_3

    .line 148
    new-instance p1, Lcom/miui/home/launcher/DragView$CountLabel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p4, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast p4, Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {p1, p2, p4}, Lcom/miui/home/launcher/DragView$CountLabel;-><init>(Landroid/content/res/Resources;Lcom/miui/home/launcher/ItemIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    .line 151
    :cond_3
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$DragView$c3w7jd9Q6gm05H7aOAm_gFsxWqw;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$DragView$c3w7jd9Q6gm05H7aOAm_gFsxWqw;-><init>(Lcom/miui/home/launcher/DragView;)V

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4, p2}, Lcom/miui/home/launcher/DragView;->createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava8/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 153
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$DragView$DyuoxyXiZ0EZE4z1IEgWlNkD9bs;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$DragView$DyuoxyXiZ0EZE4z1IEgWlNkD9bs;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-direct {p0, p1, p4, p2}, Lcom/miui/home/launcher/DragView;->createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava8/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of p2, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;

    if-eqz p2, :cond_4

    .line 156
    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;

    .line 157
    invoke-interface {p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 159
    new-instance p4, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    invoke-direct {p4, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableContainer;Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    iput-object p4, p0, Lcom/miui/home/launcher/DragView;->mSpringLayerController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/DragView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragView;F)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->updateSurroundingViews(F)V

    return-void
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mSpringLayerController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragView;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->onDropAnimationFinished()V

    return-void
.end method

.method private animateToTargetInner(Z)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/DragView$DropTargetContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/DragView$DropTargetContainer;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 564
    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_3

    .line 566
    invoke-interface {v2, v0}, Lcom/miui/home/launcher/DragView$DropTargetContainer;->setDropAnimating(Z)V

    .line 567
    iput-object v1, p0, Lcom/miui/home/launcher/DragView;->mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    .line 570
    invoke-interface {v1, v2}, Lcom/miui/home/launcher/DragView$DropTargetContainer;->setDropAnimating(Z)V

    .line 573
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/miui/home/launcher/DragView;->mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

    .line 575
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    if-nez v2, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_5

    .line 578
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V

    :cond_5
    return-void
.end method

.method private calcAndStartAnimate(Z)V
    .locals 24

    move-object/from16 v9, p0

    .line 583
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTmpPos:[F

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getScaleX()F

    move-result v2

    .line 586
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    .line 589
    :cond_0
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    iget-object v5, v9, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    iget-object v6, v9, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 590
    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInQuickOrEditingModeExiting()Z

    move-result v6

    xor-int/2addr v6, v4

    .line 589
    invoke-static {v1, v5, v0, v6, v4}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v1

    .line 591
    iget-object v5, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/home/launcher/DragController$LocationCalibration;

    if-eqz v5, :cond_1

    .line 592
    iget-object v5, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/DragController$LocationCalibration;

    iget-object v6, v9, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v5, v0, v6}, Lcom/miui/home/launcher/DragController$LocationCalibration;->offset([FLcom/miui/home/launcher/DragObject;)V

    .line 596
    :cond_1
    :goto_0
    iget v5, v9, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    iget v5, v9, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    .line 598
    :goto_1
    iget-boolean v6, v9, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_3

    .line 599
    iget-object v6, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v6, v1

    cmpl-float v1, v6, v7

    if-eqz v1, :cond_3

    const-string v1, "Launcher_DragView"

    .line 601
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "targetView\'s width and draggingView\'s width is difference="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/miui/home/launcher/DragView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    aget v1, v0, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    add-float/2addr v1, v6

    aput v1, v0, v8

    .line 606
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getAlpha()F

    move-result v6

    .line 607
    iget-boolean v1, v9, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v7, v3

    .line 608
    :goto_2
    aget v1, v0, v8

    iget-object v3, v9, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    aget v10, v3, v8

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v1, v10

    aput v1, v0, v8

    .line 609
    aget v1, v0, v4

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    aput v1, v0, v4

    .line 611
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v3, v1, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    const/4 v10, 0x2

    if-eqz v3, :cond_5

    .line 612
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 613
    check-cast v1, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    invoke-interface {v1, v3}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    .line 614
    aget v1, v0, v8

    aget v11, v3, v8

    int-to-float v11, v11

    mul-float/2addr v11, v5

    add-float/2addr v1, v11

    aput v1, v0, v8

    .line 615
    aget v1, v0, v4

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    aput v1, v0, v4

    .line 617
    :cond_5
    iget-boolean v1, v9, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    if-eqz v1, :cond_7

    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 618
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_6

    .line 619
    aget v1, v0, v8

    iget-object v3, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v11

    sub-int/2addr v3, v11

    div-int/2addr v3, v10

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v0, v8

    .line 621
    :cond_6
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_7

    .line 622
    aget v1, v0, v4

    iget-object v3, v9, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v11

    sub-int/2addr v3, v11

    div-int/2addr v3, v10

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v0, v4

    .line 625
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getTranslationX()F

    move-result v11

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getTranslationY()F

    move-result v12

    .line 627
    aget v13, v0, v8

    .line 628
    aget v14, v0, v4

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getRotation()F

    move-result v15

    sub-float v0, v13, v11

    float-to-double v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 632
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v8, v14, v12

    move/from16 v16, v11

    float-to-double v10, v8

    .line 633
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 632
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 636
    iget v1, v9, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDuration:I

    .line 637
    iget v3, v9, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDistance:I

    int-to-float v4, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    int-to-float v1, v1

    .line 638
    iget-object v4, v9, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 640
    :cond_8
    iget v0, v9, Lcom/miui/home/launcher/DragView;->mMinDropAnimationDuration:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 642
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 644
    iput-object v3, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 645
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 647
    :cond_9
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v1, :cond_a

    .line 649
    iput-object v3, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    .line 650
    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->cancel()V

    :cond_a
    if-eqz p1, :cond_b

    .line 652
    iget v1, v9, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    mul-int/lit8 v8, v1, 0x32

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    .line 654
    :goto_3
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 655
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, v9, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 656
    iget-object v1, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 657
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v10, v8

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 658
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 659
    iget-object v8, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/home/launcher/DragView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move v3, v5

    move-object v5, v4

    move v4, v7

    move-object v7, v5

    move v5, v6

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/DragView$1;-><init>(Lcom/miui/home/launcher/DragView;FFFFF)V

    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 671
    iget-object v8, v9, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 672
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getVelocityX()F

    move-result v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    const/high16 v2, -0x3b060000    # -2000.0f

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v6

    .line 674
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getVelocityY()F

    move-result v0

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v7

    .line 676
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;-><init>(FF)V

    iput-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    .line 679
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0, v10, v11}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->setStartDelay(J)V

    .line 680
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    sub-float v18, v16, v13

    sub-float v19, v12, v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-virtual/range {v17 .. v23}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->setValues(FFFFFF)V

    .line 681
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$2;

    invoke-direct {v1, v9, v13, v14}, Lcom/miui/home/launcher/DragView$2;-><init>(Lcom/miui/home/launcher/DragView;FF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->addUpdateListener(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;)V

    .line 691
    iget-object v10, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    new-instance v11, Lcom/miui/home/launcher/DragView$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, v16

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/DragView$3;-><init>(Lcom/miui/home/launcher/DragView;FFFFFFLandroid/view/ViewGroup;)V

    invoke-virtual {v10, v11}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 715
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 716
    iget-object v0, v9, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calcTouchX(I)I
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private calcTouchY(I)I
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private calcTranslationX(I)I
    .locals 1

    .line 201
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {v0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getOffsetX(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private calcTranslationY(I)I
    .locals 1

    .line 205
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {v0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getOffsetY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava8/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "F",
            "Ljava8/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    .line 432
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 433
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const p2, 0x3f666666    # 0.9f

    .line 434
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    .line 435
    invoke-static {p2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 436
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$DragView$b26XrHdgYbb25Q4xrkT7ar45nD8;

    invoke-direct {p1, p3}, Lcom/miui/home/launcher/-$$Lambda$DragView$b26XrHdgYbb25Q4xrkT7ar45nD8;-><init>(Ljava8/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object v0
.end method

.method private doDragAnim(FFIIII)V
    .locals 11

    .line 178
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    move-object v10, p0

    move v5, p2

    invoke-direct {v0, p0, v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 179
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    .line 180
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x3dcccccd    # 0.1f

    .line 181
    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 182
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move/from16 v6, p5

    move v7, p3

    move/from16 v8, p6

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;-><init>(Lcom/miui/home/launcher/DragView;FFIIII)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 197
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private fadeOut()Z
    .locals 3

    .line 755
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getScaleX()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    .line 756
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 757
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 758
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/DragView$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DragView$4;-><init>(Lcom/miui/home/launcher/DragView;)V

    .line 760
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$createSpringAnimation$3(Ljava8/util/function/Consumer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    float-to-int p1, p2

    .line 437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$doDragAnim$2(Lcom/miui/home/launcher/DragView;FFIIIILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    sub-float p7, p8, p1

    sub-float/2addr p2, p1

    div-float/2addr p7, p2

    .line 184
    invoke-virtual {p0, p8}, Lcom/miui/home/launcher/DragView;->setScaleY(F)V

    .line 185
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez p1, :cond_0

    .line 186
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {p1}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getRotation(I)F

    move-result p1

    mul-float/2addr p1, p7

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setRotation(F)V

    .line 187
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    iget p2, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getAlpha(II)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, p7

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setAlpha(F)V

    .line 188
    invoke-direct {p0, p7}, Lcom/miui/home/launcher/DragView;->updateSurroundingViews(F)V

    .line 189
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    if-nez p1, :cond_0

    int-to-float p1, p3

    .line 190
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result p2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p7

    add-float/2addr p1, p2

    int-to-float p2, p5

    .line 191
    invoke-direct {p0, p6}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result p3

    sub-int/2addr p3, p5

    int-to-float p3, p3

    mul-float/2addr p3, p7

    add-float/2addr p2, p3

    .line 192
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setTranslationX(F)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/DragView;Ljava/lang/Integer;)V
    .locals 0

    .line 152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcTouchX(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onMoveX(I)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/launcher/DragView;Ljava/lang/Integer;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcTouchY(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onMoveY(I)V

    return-void
.end method

.method private move(Landroid/util/Property;I)V
    .locals 2

    .line 450
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, v0, :cond_0

    .line 451
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result v0

    .line 452
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    if-nez v1, :cond_2

    .line 453
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, v1, :cond_1

    int-to-float p1, v0

    .line 454
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setTranslationX(F)V

    .line 455
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->onMoveX(I)V

    goto :goto_2

    :cond_1
    int-to-float p1, v0

    .line 457
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setTranslationY(F)V

    .line 458
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->onMoveY(I)V

    goto :goto_2

    .line 461
    :cond_2
    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_1
    int-to-float p2, v0

    .line 463
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_2
    return-void
.end method

.method private onDropAnimationFinished()V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    if-nez v2, :cond_1

    .line 552
    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/DragView$DropTargetContainer;->performDropFinishAnimation(Landroid/view/View;)V

    .line 553
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DragView$DropTargetContainer;->setDropAnimating(Z)V

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragObject;->onDropAnimationFinished(Lcom/miui/home/launcher/DragView;)V

    .line 556
    invoke-static {}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->getInstance()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private updateSurroundingViews(F)V
    .locals 5

    .line 264
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 268
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 269
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    sub-float v1, v3, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    move v0, v4

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_2

    .line 273
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    sub-float/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    move v0, v4

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    if-eqz v1, :cond_3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 277
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/DragView$CountLabel;->updateAlpha(I)V

    move v0, v4

    :cond_3
    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->invalidate()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public animateToTarget()Z
    .locals 2

    .line 735
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragObject;->onDropAnimationStart(Lcom/miui/home/launcher/DragView;)V

    .line 741
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->onDropAnimationFinished()V

    return v1

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 748
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    goto :goto_1

    .line 746
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->fadeOut()Z

    :goto_1
    return v1
.end method

.method public canShowShortcutMenu()Z
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->canShowShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getDragInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method public getDragSource()Lcom/miui/home/launcher/DragSource;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    return-object v0
.end method

.method public getDropTargetContainer()Lcom/miui/home/launcher/DragView$DropTargetContainer;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDropTargetContainer:Lcom/miui/home/launcher/DragView$DropTargetContainer;

    return-object v0
.end method

.method public getOutline()Landroid/graphics/Bitmap;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOwner()Landroid/view/ViewGroup;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRegistrationX()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    return v0
.end method

.method public getRegistrationY()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    return v0
.end method

.method public initRegistrationOffset(IIII)V
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    .line 169
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    .line 171
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int/2addr p2, p4

    .line 172
    iput p2, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    :goto_0
    return-void
.end method

.method public isCanceledMode()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    return v0
.end method

.method isDropSucceeded()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    return v0
.end method

.method public isTargetAnimating()Z
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 721
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method moveX(I)V
    .locals 1

    .line 442
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/DragView;->move(Landroid/util/Property;I)V

    return-void
.end method

.method moveY(I)V
    .locals 1

    .line 446
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/DragView;->move(Landroid/util/Property;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    .line 374
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_0

    .line 375
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 376
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getIsHideShadow()Z

    move-result v2

    .line 377
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 378
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->drawContent(Landroid/graphics/Canvas;)V

    .line 379
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 380
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    if-eqz v0, :cond_1

    .line 381
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DragView$CountLabel;->draw(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->drawContent(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 367
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/DragView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMoveX(I)V
    .locals 1

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 409
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->onPreDragViewMoveX(I)V

    :cond_0
    return-void
.end method

.method public onMoveY(I)V
    .locals 1

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 416
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->onPreDragViewMoveY(I)V

    :cond_0
    return-void
.end method

.method public onPreDragViewMoveX(I)V
    .locals 0

    .line 422
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->moveX(I)V

    return-void
.end method

.method public onPreDragViewMoveY(I)V
    .locals 0

    .line 426
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->moveY(I)V

    return-void
.end method

.method remove()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 527
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v2, :cond_0

    .line 528
    check-cast v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 531
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 535
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public setAnimateTarget(Landroid/view/View;)Z
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    .line 485
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    .line 486
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    .line 487
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 488
    check-cast p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 489
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 492
    instance-of p1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz p1, :cond_1

    .line 493
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 495
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 496
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public setCanceledMode()V
    .locals 1

    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    return-void
.end method

.method public setDragGroup(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public setDragVisualizeOffset(II)V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 796
    aput p2, v0, p1

    return-void
.end method

.method setDropSucceed()V
    .locals 1

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    return-void
.end method

.method public setFadeoutAnimationMode()V
    .locals 1

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    return-void
.end method

.method public setFakeTargetMode()V
    .locals 1

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    return-void
.end method

.method public setForceFadeOut()V
    .locals 1

    const/4 v0, 0x1

    .line 731
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    return-void
.end method

.method public setMinDropAnimationDuration(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mMinDropAnimationDuration:I

    return-void
.end method

.method public setNextDragView(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    return-void
.end method

.method public setOnAnimationEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnRemoveCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setTargetScale(F)V
    .locals 1

    .line 360
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    :cond_0
    return-void
.end method

.method public showWithAnim(FFIIII)V
    .locals 4

    .line 398
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setScaleX(F)V

    .line 399
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setScaleY(F)V

    int-to-float v0, p5

    .line 400
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setTranslationX(F)V

    int-to-float v0, p6

    .line 401
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setTranslationY(F)V

    .line 402
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/DragView;->doDragAnim(FFIIII)V

    return-void
.end method

.method public updateAnimateTarget(Landroid/view/View;)V
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 772
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 773
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    :cond_0
    return-void
.end method

.method public updateAnimateTarget([F)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    .line 781
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 782
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    :cond_0
    return-void
.end method
