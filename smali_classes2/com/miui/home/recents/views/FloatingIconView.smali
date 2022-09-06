.class public Lcom/miui/home/recents/views/FloatingIconView;
.super Landroid/view/View;
.source "FloatingIconView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingIconView"

.field private static sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundBounds:Landroid/graphics/Rect;

.field private mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mBackgroundLayerBounds:Landroid/graphics/Rect;

.field private mClipPath:Landroid/graphics/Path;

.field private mCurRectF:Landroid/graphics/RectF;

.field private mCurTime:J

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFadeAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private mFloatAnimEnded:Z

.field private mFloatingIconViewScale:F

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundLayerBounds:Landroid/graphics/Rect;

.field private mForegroundLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdaptiveIcon:Z

.field private mIsOpening:Z

.field private mLastRectF:Landroid/graphics/RectF;

.field private mLastTime:J

.field mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mScaleMatrixForClipPath:Landroid/graphics/Matrix;

.field private mShortcutIconImageViewRect:Landroid/graphics/RectF;

.field private mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

.field private mStartSpringAnim:Z

.field private mStartedMamlAnimation:Z

.field private mTaskCornerRadius:F

.field private mTrueLeft:F

.field private mTrueTop:F

.field private mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 96
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 106
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    const-wide/16 v0, -0x1

    .line 108
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 109
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    .line 110
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    .line 111
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    .line 113
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 114
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    .line 116
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    .line 117
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    .line 465
    new-instance p1, Lcom/miui/home/recents/views/FloatingIconView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/FloatingIconView$1;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->maybeOnEnd()V

    return-void
.end method

.method private addAnimationEndListener()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method private createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 438
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 439
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 440
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 443
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 445
    :goto_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 572
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 573
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 575
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 576
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 577
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 578
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 579
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 580
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 582
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 584
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawForeground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 588
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 589
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 590
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 591
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 593
    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v3, :cond_1

    .line 594
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->getCurrentOffsetX(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)F

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    .line 595
    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->getCurrentOffsetY(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)F

    move-result v4

    iget v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    div-float/2addr v4, v5

    .line 594
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 597
    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 599
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 600
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 601
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 602
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 603
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 604
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 607
    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 608
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->drawForeground(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 609
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 610
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 611
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 612
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 615
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private finish()V
    .locals 4

    .line 658
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 659
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    .line 660
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 661
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish, visible icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    const/4 v1, 0x0

    .line 664
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 665
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 666
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 668
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->removeAnimationEndListener()V

    .line 672
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    return-void
.end method

.method public static getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 4

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 634
    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/recents/views/FloatingIconView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 635
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 636
    sget-object v2, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 638
    :cond_2
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {v0}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    .line 640
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V

    .line 643
    sget-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->setIcon()V

    .line 644
    sget-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    .line 646
    sget-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    sget-object p1, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$CJCjuMq8JSrLWiEO7EbG57jp940;->INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$CJCjuMq8JSrLWiEO7EbG57jp940;

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F
    .locals 4

    const/4 v0, 0x2

    .line 456
    new-array v0, v0, [F

    .line 457
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 459
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    .line 460
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x0

    .line 458
    invoke-virtual {p2, v3, v3, p0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 461
    aget p0, v0, v2

    aget p1, v0, v1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return v3
.end method

.method private static getOffsetForIconBounds(ZF)I
    .locals 2

    .line 561
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private getSafeAnimValue(F)F
    .locals 2

    .line 256
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const v0, 0x47c35000    # 100000.0f

    const v1, -0x383cb000    # -100000.0f

    .line 259
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V
    .locals 5

    .line 401
    iput-boolean p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    .line 402
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 403
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 404
    instance-of v0, p2, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    .line 407
    :cond_0
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 409
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->resetPendingBackAnim()V

    .line 414
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->prepareBackAnim()V

    .line 416
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-static {p1, p2, v0}, Lcom/miui/home/recents/views/FloatingIconView;->getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F

    .line 418
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/FloatingIconView;->layout(IIII)V

    .line 422
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->getOffsetForIconBounds(ZF)I

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    neg-int v2, v0

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v0

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p1, v0

    invoke-virtual {v1, v2, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isOpening="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsAdaptiveIcon="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", iconOffset="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setPivotX(F)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setPivotY(F)V

    return-void
.end method

.method private isAllAppsShowing()Z
    .locals 1

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDisableBackAnimOnK2()Z
    .locals 3

    .line 274
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    const-string v1, "venus"

    .line 275
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    const-string v1, "com.xiaomi.shop"

    .line 276
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 490
    instance-of p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p0, :cond_0

    .line 491
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getFloatingIconView$3()V
    .locals 2

    .line 647
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "run mEndRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 649
    iput-object v1, v0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    .line 650
    iput-boolean v1, v0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    .line 651
    invoke-direct {v0}, Lcom/miui/home/recents/views/FloatingIconView;->maybeOnEnd()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$notifyBackHome$1(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V
    .locals 3

    .line 355
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 363
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    .line 367
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 368
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 369
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 372
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$2(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 3

    .line 383
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd, try run mEndRunnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$prepareBackAnim$0(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 3

    .line 336
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 338
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 343
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 344
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim()V

    :cond_2
    return-void
.end method

.method private maybeOnEnd()V
    .locals 3

    .line 128
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "maybeOnEnd, don\'t finish, floating anim NOT end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "maybeOnEnd, don\'t finish, springLayer anim NOT end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationX(F)V

    .line 139
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationY(F)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finish()V

    return-void
.end method

.method private notifyBackHome(Ljava/lang/String;F)V
    .locals 2

    .line 354
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;-><init>(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onLauncherDestroy(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 735
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 737
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    .line 739
    sput-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method

.method private prepareBackAnim()V
    .locals 2

    .line 335
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$1Z9wxM8SHllVvDA2tBOOov0jfMs;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$1Z9wxM8SHllVvDA2tBOOov0jfMs;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private recycle()V
    .locals 4

    .line 676
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    .line 678
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 679
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationX(F)V

    .line 681
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 682
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleX(F)V

    .line 683
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleY(F)V

    .line 684
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setAlpha(F)V

    const/4 v1, 0x0

    .line 685
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 686
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    .line 687
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v2, 0x0

    .line 690
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 691
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 692
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 693
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 694
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    .line 695
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 696
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 697
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 699
    :cond_1
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 700
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 701
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 702
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    .line 703
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 704
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    .line 705
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    .line 706
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 707
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    .line 708
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 709
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    return-void
.end method

.method private removeAnimationEndListener()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->removeAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method private resetPendingBackAnim()V
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->resetPendingBackAnim()V

    :cond_0
    return-void
.end method

.method private setBackgroundDrawableBounds(F)V
    .locals 3

    .line 542
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 543
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 545
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 546
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 547
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 549
    :cond_0
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 551
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez p1, :cond_1

    .line 552
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 554
    :cond_1
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 556
    :goto_0
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBackgroundDrawableBounds  sTmpRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBackgroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 531
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private setForegroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 537
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private setIcon()V
    .locals 4

    .line 498
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 500
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 501
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    .line 502
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 503
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setForegroundLayerBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 506
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 507
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 508
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 511
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 512
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 514
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 515
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 519
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 522
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 525
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidate()V

    return-void
.end method

.method private updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V
    .locals 8

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 298
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v1

    .line 304
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isSupportThemeAdaptiveIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v3

    .line 307
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v0

    .line 308
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isIconClipPathDataARect()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataWidthPercent()F

    move-result p2

    sub-float p2, v2, p2

    int-to-float v1, v3

    mul-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    .line 310
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataHeightPercent()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v2, v0

    div-float v0, v2, v1

    move v1, p2

    move v2, v0

    goto :goto_1

    .line 311
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 312
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 313
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p2, p2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 314
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 315
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    int-to-float v1, v3

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 316
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    move v2, p2

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    sub-float v3, p2, v1

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p1, p1

    sub-float v4, p1, v2

    iget v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V
    .locals 6

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 283
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 284
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 285
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    iput-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 288
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 290
    :goto_0
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    .line 291
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private updateScale(Landroid/graphics/RectF;F)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    .line 167
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p2

    .line 168
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    .line 169
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleX(F)V

    .line 170
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleY(F)V

    return-void
.end method

.method private updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 157
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 160
    :goto_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 161
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationX(F)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationY(F)V

    return-void
.end method

.method private useBackAnim()Z
    .locals 1

    .line 263
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isDisableBackAnimOnK2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isAllAppsShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 567
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 568
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawForeground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public forceToEnd()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->cancel()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finish()V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 396
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 380
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 381
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v0, "onAnimationEnd, try run mEndRunnable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$4qdKPA3XVGlecYGVcidphdLqIP8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$4qdKPA3XVGlecYGVcidphdLqIP8;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 714
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 715
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 722
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 723
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFF)V
    .locals 4

    .line 188
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 193
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useCornerRadiusEstimate()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_3

    move p4, v1

    .line 196
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V

    .line 198
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 199
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    .line 200
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/FloatingIconView;->setAlpha(F)V

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 205
    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 207
    :cond_4
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->updateScale(Landroid/graphics/RectF;F)V

    .line 212
    iput p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 214
    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 215
    invoke-direct {p0, p2, p4}, Lcom/miui/home/recents/views/FloatingIconView;->updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V

    .line 216
    invoke-direct {p0, p4}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    .line 218
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result p2

    const/high16 p4, 0x3f000000    # 0.5f

    if-eqz p2, :cond_5

    cmpl-float p2, p3, p4

    if-lez p2, :cond_5

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    if-nez p2, :cond_5

    .line 219
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 220
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const-string p2, "back_home_start"

    .line 221
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    const-string p2, "back_home_finish"

    .line 222
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    .line 223
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 225
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim()V

    .line 229
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz p1, :cond_7

    .line 230
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->getSafeAnimValue(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 231
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->getSafeAnimValue(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    cmpl-float p1, p3, p4

    if-lez p1, :cond_6

    .line 232
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-nez p1, :cond_6

    .line 233
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    .line 234
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget-wide p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    iget-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    sub-long/2addr p2, v0

    long-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    .line 235
    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p4

    iget-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    sub-long/2addr v0, v2

    long-to-float p4, v0

    div-float/2addr p3, p4

    mul-float/2addr p3, p2

    .line 236
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->getSafeAnimValue(F)F

    move-result p1

    .line 237
    invoke-direct {p0, p3}, Lcom/miui/home/recents/views/FloatingIconView;->getSafeAnimValue(F)F

    move-result p2

    .line 238
    sget-object p3, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTrueLeft="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "   mTrueTop="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "   vx="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "   vy="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    iget p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    iget v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    invoke-virtual {p3, p4, v0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->onStart(FFFF)V

    .line 243
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->addAnimationEndListener()V

    .line 246
    :cond_6
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-eqz p1, :cond_7

    .line 247
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    iget p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    iget p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->onUpdate(FF)V

    .line 251
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidate()V

    .line 252
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidateOutline()V

    return-void
.end method

.method public useCornerRadiusEstimate()Z
    .locals 1

    .line 485
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    invoke-static {v0}, Lcom/miui/home/launcher/PathDataIconUtil;->useCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
