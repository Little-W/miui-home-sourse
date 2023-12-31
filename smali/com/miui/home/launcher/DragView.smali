.class public Lcom/miui/home/launcher/DragView;
.super Landroid/view/View;
.source "DragView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;,
        Lcom/miui/home/launcher/DragView$CountLabel;
    }
.end annotation


# instance fields
.field private final isDrawOutline:Z

.field private mAnimateTarget:Landroid/view/View;

.field private mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

.field private mCanceledMode:Z

.field private mContent:Landroid/view/View;

.field private mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private final mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragGroup:Lcom/miui/home/launcher/DragObject;

.field private mDragInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mDragSource:Lcom/miui/home/launcher/DragSource;

.field private mDragViewOldVisibility:I

.field private mDragViewsCount:I

.field private mDragVisualizeOffset:[I

.field private mDropAnimationStartDelay:I

.field private mDropSucceeded:Z

.field private mFadeoutAnimation:Z

.field private mFakeTargetMode:Z

.field private mHasDrawn:Z

.field private mIsAutoDrag:Z

.field private mIsBigFolderAnimStyle:Z

.field private mIsForceFadeOut:Z

.field private mIsMoved:Z

.field private mIsMultiDrag:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMaxDropAnimationDistance:I

.field private mMaxDropAnimationDuration:I

.field private mMinDropAnimationDuration:I

.field private mMyIndex:I

.field private mNeedOutline:Z

.field private mNextDragView:Lcom/miui/home/launcher/DragView;

.field private mOldDragTitleAlpha:F

.field private mOnAnimationEndCallback:Ljava/lang/Runnable;

.field private mOnRemoveCallback:Ljava/lang/Runnable;

.field private mOutline:Landroid/graphics/Bitmap;

.field private mOwner:Landroid/view/ViewGroup;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPrevAnimateTarget:Landroid/view/View;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mTargetLoc:[F

.field private mTargetScale:F

.field private mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

.field private mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

.field private mTmpPos:[F

.field private mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final showDeleteTint:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/miui/home/launcher/ItemInfo;IIZLcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragController;)V
    .locals 5

    .line 145
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 81
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    .line 95
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 97
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    new-array v2, v2, [F

    .line 98
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mTmpPos:[F

    const/4 v2, 0x0

    .line 99
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    .line 100
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 101
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    .line 102
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    .line 103
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    .line 105
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    .line 106
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 110
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    .line 115
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    .line 116
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    .line 117
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    .line 118
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    .line 119
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 120
    iput v3, p0, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    .line 123
    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    .line 124
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    .line 130
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 134
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 919
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    .line 146
    iput-object p9, p0, Lcom/miui/home/launcher/DragView;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 147
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p9

    iput-object p9, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 148
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 149
    iput-object p3, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    .line 150
    iput-object p4, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 151
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p1, :cond_0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "new DragView:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Launcher_DragView"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iput p5, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    .line 155
    iput-boolean p7, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    .line 156
    iput-object p8, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    .line 157
    iput-object p2, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    .line 158
    iput p6, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    .line 159
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    if-le p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b0027

    .line 161
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDuration:I

    const p3, 0x7f0b0028

    .line 162
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/DragView;->setMinDropAnimationDuration(I)V

    const p3, 0x7f0b0026

    .line 163
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDistance:I

    .line 165
    instance-of p1, p2, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    if-eqz p1, :cond_2

    .line 166
    check-cast p2, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    invoke-interface {p2, p1}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    aput v0, p1, v0

    .line 169
    aput v0, p1, v1

    .line 172
    :goto_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    if-nez p1, :cond_3

    .line 173
    new-instance p1, Lcom/miui/home/launcher/DragView$CountLabel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast p3, Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {p1, p2, p3}, Lcom/miui/home/launcher/DragView$CountLabel;-><init>(Landroid/content/res/Resources;Lcom/miui/home/launcher/ItemIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    .line 176
    :cond_3
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$DragView$R8gCOrJdhkouiwIhLSPb-t1ynXk;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$DragView$R8gCOrJdhkouiwIhLSPb-t1ynXk;-><init>(Lcom/miui/home/launcher/DragView;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/DragView;->createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 178
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$DragView$w40zJ8NW6c9kMPh2GDUM4ZWYNlU;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$DragView$w40zJ8NW6c9kMPh2GDUM4ZWYNlU;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-direct {p0, p1, p3, p2}, Lcom/miui/home/launcher/DragView;->createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 180
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->shouldDrawOutline(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->isDrawOutline:Z

    .line 183
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->shouldShowDeleteHint(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->showDeleteTint:Z

    .line 185
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of p2, p1, Lcom/miui/home/launcher/anim/IBackgroundController;

    if-eqz p2, :cond_4

    .line 186
    check-cast p1, Lcom/miui/home/launcher/anim/IBackgroundController;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/IBackgroundController;->getBackgroundAnimController()Lcom/miui/home/launcher/anim/BackgroundAnimController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz p1, :cond_4

    .line 188
    invoke-interface {p1, p0}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->setTargetView(Landroid/view/View;)V

    .line 192
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->isNeedSoftWare()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 193
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/DragView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_5
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

.method static synthetic access$000(Lcom/miui/home/launcher/DragView;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/anim/BackgroundAnimController;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragView;F)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->updateSurroundingViews(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragView;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/DragView;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimateRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->onDropAnimationFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/DragView;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/DragView;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    return-object p0
.end method

.method private animateToTargetInner(Z)V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->resetView(Landroid/view/View;)V

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 698
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/DragView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    if-nez v1, :cond_3

    .line 702
    instance-of v1, v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    if-eqz v1, :cond_2

    .line 703
    check-cast v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    invoke-interface {v0}, Lcom/miui/home/launcher/folder/IItemDragAnim;->performPreViewItemHiddenAnim()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    .line 705
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 710
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 711
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 p1, 0x0

    .line 712
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V

    :cond_4
    return-void
.end method

.method private calcAndStartAnimate(Z)V
    .locals 24

    move-object/from16 v7, p0

    .line 717
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTmpPos:[F

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getScaleX()F

    move-result v2

    .line 720
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    .line 723
    :cond_0
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 724
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v5

    iget-object v6, v7, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isInQuickOrEditingModeExiting()Z

    move-result v6

    xor-int/2addr v6, v4

    .line 723
    invoke-static {v1, v5, v0, v6, v4}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v1

    .line 725
    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/miui/home/launcher/DragController$LocationCalibration;

    if-eqz v5, :cond_1

    .line 726
    iget-object v5, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/DragController$LocationCalibration;

    iget-object v6, v7, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v5, v0, v6}, Lcom/miui/home/launcher/DragController$LocationCalibration;->offset([FLcom/miui/home/launcher/DragObject;)V

    .line 730
    :cond_1
    :goto_0
    iget v5, v7, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    iget v5, v7, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    .line 732
    :goto_1
    iget-boolean v6, v7, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v6, :cond_3

    .line 733
    iget-object v6, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v6, v1

    cmpl-float v1, v6, v8

    if-eqz v1, :cond_3

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "targetView\'s width and draggingView\'s width is difference="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "Launcher_DragView"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    aget v1, v0, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    add-float/2addr v1, v6

    aput v1, v0, v9

    .line 740
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getAlpha()F

    move-result v6

    .line 741
    iget-boolean v1, v7, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v8, v3

    .line 742
    :goto_2
    aget v1, v0, v9

    iget-object v3, v7, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    aget v10, v3, v9

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v1, v10

    aput v1, v0, v9

    .line 743
    aget v1, v0, v4

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    aput v1, v0, v4

    .line 745
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v3, v1, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    const/4 v10, 0x2

    if-eqz v3, :cond_5

    new-array v3, v10, [I

    .line 746
    fill-array-data v3, :array_0

    .line 747
    check-cast v1, Lcom/miui/home/launcher/DragController$VisualizeCalibration;

    invoke-interface {v1, v3}, Lcom/miui/home/launcher/DragController$VisualizeCalibration;->getVisionOffset([I)V

    .line 748
    aget v1, v0, v9

    aget v11, v3, v9

    int-to-float v11, v11

    mul-float/2addr v11, v5

    add-float/2addr v1, v11

    aput v1, v0, v9

    .line 749
    aget v1, v0, v4

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    aput v1, v0, v4

    .line 751
    :cond_5
    iget-boolean v1, v7, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    if-eqz v1, :cond_7

    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 752
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_6

    .line 753
    aget v1, v0, v9

    iget-object v3, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v11

    sub-int/2addr v3, v11

    div-int/2addr v3, v10

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v0, v9

    .line 755
    :cond_6
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_7

    .line 756
    aget v1, v0, v4

    iget-object v3, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v11

    sub-int/2addr v3, v11

    div-int/2addr v3, v10

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v0, v4

    .line 759
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getTranslationX()F

    move-result v11

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getTranslationY()F

    move-result v12

    .line 761
    aget v13, v0, v9

    .line 762
    aget v14, v0, v4

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getRotation()F

    move-result v15

    sub-float v0, v13, v11

    float-to-double v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 766
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v9, v14, v12

    move/from16 v16, v11

    float-to-double v10, v9

    .line 767
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 766
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 770
    iget v1, v7, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDuration:I

    .line 771
    iget v3, v7, Lcom/miui/home/launcher/DragView;->mMaxDropAnimationDistance:I

    int-to-float v4, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    int-to-float v1, v1

    .line 772
    iget-object v4, v7, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 774
    :cond_8
    iget v0, v7, Lcom/miui/home/launcher/DragView;->mMinDropAnimationDuration:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 776
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 778
    iput-object v3, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 779
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 781
    :cond_9
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v1, :cond_a

    .line 783
    iput-object v3, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    .line 784
    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->cancel()V

    :cond_a
    if-eqz p1, :cond_b

    .line 786
    iget v1, v7, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    mul-int/lit8 v9, v1, 0x32

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    .line 787
    :goto_3
    iget-object v1, v7, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->getAnimDuration()J

    move-result-wide v0

    goto :goto_4

    :cond_c
    int-to-long v0, v0

    .line 789
    :goto_4
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 790
    iget-object v3, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v7, Lcom/miui/home/launcher/DragView;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 791
    iget-object v3, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 792
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 793
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 794
    iget-object v11, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/home/launcher/DragView$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move v3, v5

    move-object v5, v4

    move v4, v8

    move-object v8, v5

    move v5, v6

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/DragView$1;-><init>(Lcom/miui/home/launcher/DragView;FFFFF)V

    invoke-virtual {v11, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 827
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$2;

    invoke-direct {v1, v7}, Lcom/miui/home/launcher/DragView$2;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 836
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    .line 837
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getVelocityX()F

    move-result v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    const/high16 v2, -0x3b060000    # -2000.0f

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v22

    .line 839
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getVelocityY()F

    move-result v0

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v23

    .line 841
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;-><init>(FF)V

    iput-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    .line 843
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0, v9, v10}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->setStartDelay(J)V

    .line 844
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    sub-float v18, v16, v13

    sub-float v19, v12, v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v23}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->setValues(FFFFFF)V

    .line 845
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$3;

    invoke-direct {v1, v7, v13, v14}, Lcom/miui/home/launcher/DragView$3;-><init>(Lcom/miui/home/launcher/DragView;FF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->addUpdateListener(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;)V

    .line 851
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$4;

    move/from16 v2, v16

    invoke-direct {v1, v7, v2, v12}, Lcom/miui/home/launcher/DragView$4;-><init>(Lcom/miui/home/launcher/DragView;FF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 868
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-boolean v0, v7, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-nez v0, :cond_e

    .line 869
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 870
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/DragView;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-nez v0, :cond_e

    .line 872
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIsHideTitle()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    if-nez v0, :cond_e

    .line 873
    :cond_d
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    .line 874
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 875
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 876
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 877
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 878
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$5;

    invoke-direct {v1, v7}, Lcom/miui/home/launcher/DragView$5;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 887
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DragView$6;

    invoke-direct {v1, v7}, Lcom/miui/home/launcher/DragView$6;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 900
    :cond_e
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 901
    iget-object v0, v7, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calcTouchX(I)I
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private calcTouchY(I)I
    .locals 1

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private calcTranslationX(I)I
    .locals 1

    .line 272
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getOffsetX(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    return p1
.end method

.method private calcTranslationY(I)I
    .locals 1

    .line 276
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {p0}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getOffsetY(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    return p1
.end method

.method private createSpringAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLjava/util/function/Consumer;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;",
            "F",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    .line 560
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 561
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const p1, 0x3f666666    # 0.9f

    .line 562
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const p1, 0x3dcccccd    # 0.1f

    .line 563
    invoke-static {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 564
    new-instance p0, Lcom/miui/home/launcher/-$$Lambda$DragView$FhjA2sC3LYU0sH__cmGhDVzdyqo;

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/-$$Lambda$DragView$FhjA2sC3LYU0sH__cmGhDVzdyqo;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object v0
.end method

.method private doDragAnim(FFIIII)V
    .locals 10

    .line 237
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    move-object v3, p0

    move v5, p2

    invoke-direct {v0, p0, v1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 238
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    .line 239
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 240
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->getDragAnimResponse()F

    move-result v2

    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 241
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;

    move-object v2, v1

    move v4, p1

    move v6, p5

    move v7, p3

    move/from16 v8, p6

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/miui/home/launcher/-$$Lambda$DragView$TCZ_Iu7TvSjRl2yqszaPvwfgapY;-><init>(Lcom/miui/home/launcher/DragView;FFIIII)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 261
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 514
    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawDragView(Landroid/graphics/Canvas;)V

    .line 516
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private fadeOut()Z
    .locals 3

    .line 957
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getScaleX()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    .line 958
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 959
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 960
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    int-to-long v1, v1

    .line 961
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 962
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/DragView$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DragView$7;-><init>(Lcom/miui/home/launcher/DragView;)V

    .line 963
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method

.method private getBlurRoundRect(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/Rect;
    .locals 7

    .line 1088
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getIconContainer()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 1089
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    .line 1090
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding()I

    move-result v1

    .line 1091
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1092
    instance-of p1, p1, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    if-eqz p1, :cond_0

    .line 1093
    iget p1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getTop()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Rect;->top:I

    .line 1094
    iget p1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v1

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr p1, v1

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 1095
    iget p1, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getRight()I

    move-result v0

    sub-int/2addr p0, v0

    sub-int/2addr p1, p0

    iput p1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1097
    :cond_0
    iget p0, v2, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, v2, Landroid/graphics/Rect;->top:I

    :goto_0
    return-object v2
.end method

.method private getDragAnimResponse()F
    .locals 1

    .line 265
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    instance-of v0, p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;

    if-eqz v0, :cond_0

    .line 266
    check-cast p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;->getFoldThumbnailDragAnimResponse()F

    move-result p0

    return p0

    :cond_0
    const p0, 0x3dcccccd    # 0.1f

    return p0
.end method

.method private hideDragViewTitleInternal()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 1007
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    const/4 v0, 0x0

    .line 1008
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    .line 1009
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 1012
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 1013
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    .line 1015
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    .line 1016
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1017
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast p0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isNeedSoftWare()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->isDrawOutline:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->showDeleteTint:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 199
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTargetAnimateRunning()Z
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 906
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTitleAlphaAnimate:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3

    .line 907
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createSpringAnimation$3(Ljava/util/function/Consumer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    float-to-int p1, p2

    .line 565
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private move(Landroid/util/Property;I)V
    .locals 2

    .line 578
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, v0, :cond_0

    .line 579
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result v0

    .line 580
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    if-nez v1, :cond_2

    .line 581
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, v1, :cond_1

    int-to-float p1, v0

    .line 582
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setTranslationX(F)V

    .line 583
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->onMoveX(I)V

    goto :goto_2

    :cond_1
    int-to-float p1, v0

    .line 585
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setTranslationY(F)V

    .line 586
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->onMoveY(I)V

    goto :goto_2

    .line 589
    :cond_2
    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-ne p1, p2, :cond_3

    .line 590
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mXSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mYSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :goto_1
    int-to-float p1, v0

    .line 591
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_2
    return-void
.end method

.method private onDropAnimationFinished()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 686
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragObject;->onDropAnimationFinished(Lcom/miui/home/launcher/DragView;)V

    return-void
.end method

.method private removeSelf()V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private restoreHideDragViewTitleInternal()V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    .line 1022
    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    const/4 v1, 0x0

    .line 1023
    iput v1, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    .line 1024
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 1027
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 1028
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/DragView;->mOldDragTitleAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1032
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/launcher/DragView;->mDragViewOldVisibility:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setBlur(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 9

    .line 1054
    instance-of v0, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_3

    .line 1055
    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    .line 1056
    instance-of v0, p1, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1057
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I

    move-result v4

    .line 1058
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->getBlurRoundRect(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1059
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1063
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 1064
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    move-object v0, p0

    goto :goto_0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v0

    const/4 v2, 0x0

    .line 1067
    invoke-static {p0, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 1068
    invoke-static {p0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 1069
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 1070
    invoke-static {v0, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 1072
    :goto_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;IIIII)V

    .line 1073
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1074
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setPassWindowBlurEnable(Landroid/view/View;Z)V

    .line 1076
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070661

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 1077
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    const/16 p2, 0x6a

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    const p1, -0x4c89898a

    .line 1078
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    const p1, -0xeb6c00

    .line 1079
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    goto :goto_1

    :cond_2
    const p1, 0x66b4b4b4

    .line 1081
    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    const p1, -0xd10e00

    .line 1082
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static shouldDrawOutline(Landroid/view/View;)Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 204
    instance-of v0, p0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 205
    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->shouldDrawOutline(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldDrawOutline(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    .line 211
    instance-of v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldShowDeleteHint(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 219
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 220
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    return p0

    .line 222
    :cond_1
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x13

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private updateSurroundingViews(F)V
    .locals 5

    .line 335
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 338
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 339
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 340
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    sub-float v1, v3, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    move v0, v4

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_3

    .line 346
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    sub-float/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/ShortcutIcon;->updateCheckBoxAnimProgress(F)V

    move v0, v4

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    if-eqz v1, :cond_4

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 350
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/DragView$CountLabel;->updateAlpha(I)V

    move v0, v4

    :cond_4
    if-eqz v0, :cond_5

    .line 354
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public animateToTarget()Z
    .locals 5

    .line 934
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragObject;->onDropAnimationStart(Lcom/miui/home/launcher/DragView;)V

    .line 940
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 941
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->onDropAnimationFinished()V

    return v1

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 946
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    if-nez v0, :cond_3

    .line 947
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    goto :goto_1

    .line 949
    :cond_3
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$DragView$f8nKOEK2WHRz3sFPWZPUQWGngWw;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$DragView$f8nKOEK2WHRz3sFPWZPUQWGngWw;-><init>(Lcom/miui/home/launcher/DragView;)V

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/home/launcher/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 945
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->fadeOut()Z

    :goto_1
    return v1
.end method

.method public canShowShortcutMenu()Z
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->canShowShortcutMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearForceFadeOut()V
    .locals 1

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    return-object p0
.end method

.method public getDragInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method public getDragSource()Lcom/miui/home/launcher/DragSource;
    .locals 0

    .line 990
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragSource:Lcom/miui/home/launcher/DragSource;

    return-object p0
.end method

.method public getOutline()Landroid/graphics/Bitmap;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getOwner()Landroid/view/ViewGroup;
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getRegistrationX()I
    .locals 0

    .line 447
    iget p0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    return p0
.end method

.method public getRegistrationY()I
    .locals 0

    .line 451
    iget p0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    return p0
.end method

.method public hasDrawn()Z
    .locals 0

    .line 520
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    return p0
.end method

.method public initRegistrationOffset(IIII)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    .line 228
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    .line 230
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int/2addr p2, p4

    .line 231
    iput p2, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    :goto_0
    return-void
.end method

.method public isCanceledMode()Z
    .locals 0

    .line 645
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    return p0
.end method

.method isDropSucceeded()Z
    .locals 0

    .line 608
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    return p0
.end method

.method public isSameType(Landroid/view/View;)Z
    .locals 1

    .line 1048
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetAnimating()Z
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mTargetTranslationAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mTargetScaleAndAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    .line 912
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$animateToTarget$5$DragView()V
    .locals 1

    const/4 v0, 0x1

    .line 949
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    return-void
.end method

.method public synthetic lambda$doDragAnim$2$DragView(FFIIIILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    sub-float p7, p8, p1

    sub-float/2addr p2, p1

    div-float/2addr p7, p2

    .line 244
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz p1, :cond_0

    .line 245
    invoke-interface {p1, p7}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->updateBackgroundColor(F)V

    .line 248
    :cond_0
    invoke-virtual {p0, p8}, Lcom/miui/home/launcher/DragView;->setScaleY(F)V

    .line 249
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsAutoDrag:Z

    if-nez p1, :cond_1

    .line 250
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    invoke-static {p1}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getRotation(I)F

    move-result p1

    mul-float/2addr p1, p7

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setRotation(F)V

    .line 251
    iget p1, p0, Lcom/miui/home/launcher/DragView;->mMyIndex:I

    iget p2, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/DragView$DragViewPropertyProvider;->getAlpha(II)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, p7

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setAlpha(F)V

    .line 252
    invoke-direct {p0, p7}, Lcom/miui/home/launcher/DragView;->updateSurroundingViews(F)V

    .line 253
    iget-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    if-nez p1, :cond_1

    int-to-float p1, p3

    .line 254
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/DragView;->calcTranslationX(I)I

    move-result p2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p7

    add-float/2addr p1, p2

    int-to-float p2, p5

    .line 255
    invoke-direct {p0, p6}, Lcom/miui/home/launcher/DragView;->calcTranslationY(I)I

    move-result p3

    sub-int/2addr p3, p5

    int-to-float p3, p3

    mul-float/2addr p3, p7

    add-float/2addr p2, p3

    .line 256
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setTranslationX(F)V

    .line 257
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/DragView;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$DragView(Ljava/lang/Integer;)V
    .locals 0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcTouchX(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onMoveX(I)V

    return-void
.end method

.method public synthetic lambda$new$1$DragView(Ljava/lang/Integer;)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->calcTouchY(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onMoveY(I)V

    return-void
.end method

.method public synthetic lambda$remove$4$DragView()V
    .locals 0

    .line 661
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->removeSelf()V

    return-void
.end method

.method moveX(I)V
    .locals 1

    .line 570
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/DragView;->move(Landroid/util/Property;I)V

    return-void
.end method

.method moveY(I)V
    .locals 1

    .line 574
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/DragView;->move(Landroid/util/Property;I)V

    return-void
.end method

.method public needOutline()Z
    .locals 0

    .line 421
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1104
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1105
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/DragView;->setBlur(Landroid/view/View;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1112
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1113
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    .line 1114
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    if-eqz v0, :cond_0

    .line 1115
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mBgAnimController:Lcom/miui/home/launcher/anim/BackgroundAnimController;

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    .line 491
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->isDrawOutline:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    if-eqz v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 493
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 497
    iget-boolean v1, p0, Lcom/miui/home/launcher/DragView;->mIsMultiDrag:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mContent:Landroid/view/View;

    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_2

    .line 498
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 499
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getIsHideShadow()Z

    move-result v2

    .line 500
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 501
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->drawContent(Landroid/graphics/Canvas;)V

    .line 502
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ItemIcon;->setIsHideShadow(Z)V

    .line 503
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mCountLabel:Lcom/miui/home/launcher/DragView$CountLabel;

    if-eqz v0, :cond_3

    .line 504
    iget p0, p0, Lcom/miui/home/launcher/DragView;->mDragViewsCount:I

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/DragView$CountLabel;->draw(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->drawContent(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 482
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

    .line 536
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 537
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    if-eqz p0, :cond_0

    .line 538
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onPreDragViewMoveX(I)V

    :cond_0
    return-void
.end method

.method public onMoveY(I)V
    .locals 1

    const/4 v0, 0x1

    .line 543
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsMoved:Z

    .line 544
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    if-eqz p0, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->onPreDragViewMoveY(I)V

    :cond_0
    return-void
.end method

.method public onPreDragViewMoveX(I)V
    .locals 0

    .line 550
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->moveX(I)V

    return-void
.end method

.method public onPreDragViewMoveY(I)V
    .locals 0

    .line 554
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->moveY(I)V

    return-void
.end method

.method remove()V
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v1, :cond_0

    .line 650
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 653
    instance-of v1, v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    if-eqz v1, :cond_1

    .line 654
    check-cast v0, Lcom/miui/home/launcher/folder/IItemDragAnim;

    invoke-interface {v0}, Lcom/miui/home/launcher/folder/IItemDragAnim;->performPreViewItemShowAnim()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 656
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->needPostWhenDrop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DragView$WsczcW4budSAYwCCINafoznKT64;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$DragView$WsczcW4budSAYwCCINafoznKT64;-><init>(Lcom/miui/home/launcher/DragView;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 664
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->removeSelf()V

    :goto_1
    return-void
.end method

.method public resetFlagBigFolderAnimStyle()V
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->restoreHideDragViewTitleInternal()V

    :cond_0
    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    return-void
.end method

.method public resetView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1038
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    .line 1039
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1041
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    .line 1042
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method public setAnimateTarget(Landroid/view/View;)Z
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    .line 613
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    .line 614
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    .line 615
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 616
    check-cast p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 617
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    check-cast p1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    .line 619
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mAnimateTarget:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 620
    instance-of p1, v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz p1, :cond_1

    .line 621
    check-cast v0, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V

    .line 623
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mPrevAnimateTarget:Landroid/view/View;

    if-eqz p0, :cond_2

    .line 624
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public setCanceledMode()V
    .locals 1

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mCanceledMode:Z

    return-void
.end method

.method public setDragGroup(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragGroup:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public setDragVisualizeOffset(II)V
    .locals 1

    .line 998
    iget-object p0, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    .line 999
    aput p2, p0, p1

    return-void
.end method

.method public setDropAnimationStartDelay(I)V
    .locals 0

    .line 930
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mDropAnimationStartDelay:I

    return-void
.end method

.method setDropSucceed()V
    .locals 1

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mDropSucceeded:Z

    return-void
.end method

.method public setFadeoutAnimationMode()V
    .locals 1

    const/4 v0, 0x1

    .line 637
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFadeoutAnimation:Z

    return-void
.end method

.method public setFakeTargetMode()V
    .locals 1

    const/4 v0, 0x1

    .line 633
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mFakeTargetMode:Z

    return-void
.end method

.method public setFlagBigFolderAnimStyle(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mIsBigFolderAnimStyle:Z

    .line 464
    invoke-direct {p0}, Lcom/miui/home/launcher/DragView;->hideDragViewTitleInternal()V

    return-void
.end method

.method public setForceFadeOut()V
    .locals 1

    const/4 v0, 0x1

    .line 922
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mIsForceFadeOut:Z

    return-void
.end method

.method public setMinDropAnimationDuration(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mMinDropAnimationDuration:I

    return-void
.end method

.method public setNeedOutline(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragView;->mNeedOutline:Z

    return-void
.end method

.method public setNextDragView(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mNextDragView:Lcom/miui/home/launcher/DragView;

    return-void
.end method

.method public setOnAnimationEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOnAnimationEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnRemoveCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOnRemoveCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setOutline(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 429
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mOutline:Landroid/graphics/Bitmap;

    .line 431
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->showDeleteTint:Z

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-string p1, "#66FF0000"

    .line 433
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 434
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 435
    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x12c

    .line 436
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->setEnterFadeDuration(I)V

    .line 437
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTargetScale(F)V
    .locals 1

    .line 475
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iput p1, p0, Lcom/miui/home/launcher/DragView;->mTargetScale:F

    :cond_0
    return-void
.end method

.method public showWithAnim(FFIIII)V
    .locals 4

    .line 525
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setScaleX(F)V

    .line 526
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setScaleY(F)V

    int-to-float v0, p5

    .line 527
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setTranslationX(F)V

    int-to-float v0, p6

    .line 528
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setTranslationY(F)V

    .line 529
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mOwner:Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x33

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 532
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/DragView;->doDragAnim(FFIIII)V

    return-void
.end method

.method public updateAnimateTarget(Landroid/view/View;)V
    .locals 1

    .line 973
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 975
    iget-object p1, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 976
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    :cond_0
    return-void
.end method

.method public updateAnimateTarget([F)V
    .locals 0

    .line 983
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mTargetLoc:[F

    .line 984
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->isTargetAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 985
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DragView;->animateToTargetInner(Z)V

    :cond_0
    return-void
.end method
