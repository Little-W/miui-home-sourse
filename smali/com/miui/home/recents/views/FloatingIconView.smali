.class public Lcom/miui/home/recents/views/FloatingIconView;
.super Landroid/view/View;
.source "FloatingIconView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/FloatingIconView$_lancet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingIconView"

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
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

.field private mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

.field private mShortcutIconImageViewRect:Landroid/graphics/RectF;

.field private mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

.field private mStartSpringAnim:Z

.field private mStartedMamlAnimation:Z

.field private mTaskCornerRadius:F

.field private mTrueLeft:F

.field private mTrueTop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 110
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 87
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 97
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    const-wide/16 v0, -0x1

    .line 99
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 100
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    .line 104
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 105
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    .line 107
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    .line 366
    new-instance p1, Lcom/miui/home/recents/views/FloatingIconView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/FloatingIconView$1;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->maybeOnEnd()V

    return-void
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private addAnimationEndListener()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method private createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 339
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 340
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 341
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
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

    .line 344
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 346
    :goto_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 475
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 477
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 478
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 479
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 480
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 481
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 482
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 484
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 486
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawForeground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 491
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 492
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 493
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v3, :cond_1

    .line 496
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->getCurrentOffsetX(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)F

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    .line 497
    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->getCurrentOffsetY(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;)F

    move-result v4

    iget v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    div-float/2addr v4, v5

    .line 496
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 499
    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 501
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 503
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 504
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 505
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 509
    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 511
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 512
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 513
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 515
    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private finish()V
    .locals 1

    .line 554
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->removeAnimationEndListener()V

    .line 558
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    return-void
.end method

.method public static getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 533
    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/recents/views/FloatingIconView;-><init>(Landroid/content/Context;)V

    .line 534
    invoke-direct {v1}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    .line 536
    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)V

    .line 539
    invoke-direct {v1}, Lcom/miui/home/recents/views/FloatingIconView;->setIcon()V

    const/4 p1, 0x0

    .line 540
    invoke-virtual {v1, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    .line 542
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 543
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 545
    new-instance p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$8zigMk0PrGU4MRkGC-DHA9TCCpo;

    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$8zigMk0PrGU4MRkGC-DHA9TCCpo;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    iput-object p0, v1, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/RectF;)F
    .locals 4

    const/4 v0, 0x2

    .line 357
    new-array v0, v0, [F

    .line 358
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 360
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    .line 361
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x0

    .line 359
    invoke-virtual {p2, v3, v3, p0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 362
    aget p0, v0, v2

    aget p1, v0, v1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return v3
.end method

.method private static getOffsetForIconBounds(ZF)I
    .locals 2

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 464
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

.method private init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)V
    .locals 3

    .line 312
    iput-boolean p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    .line 313
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 314
    iput-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    .line 315
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 316
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lcom/miui/home/recents/views/FloatingIconView;->isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 317
    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    if-nez p2, :cond_0

    .line 318
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->prepareBackAnim()V

    .line 323
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-static {p1, p2, p3}, Lcom/miui/home/recents/views/FloatingIconView;->getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/RectF;)F

    .line 325
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p2

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->layout(IIII)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/miui/home/recents/views/FloatingIconView;->getOffsetForIconBounds(ZF)I

    move-result p2

    .line 332
    iget-object p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    neg-int v0, p2

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, p2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p1, p2

    invoke-virtual {p3, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x0

    .line 334
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setPivotX(F)V

    .line 335
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setPivotY(F)V

    return-void
.end method

.method public static isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 386
    instance-of p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p0, :cond_0

    .line 387
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

.method static synthetic lambda$getFloatingIconView$2(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 1

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    .line 548
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$notifyBackHome$1(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V
    .locals 3

    .line 274
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    .line 282
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 287
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$prepareBackAnim$0(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 2

    .line 258
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 263
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    .line 265
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim()V

    :cond_2
    return-void
.end method

.method private maybeOnEnd()V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 128
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

    .line 129
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationX(F)V

    .line 130
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationY(F)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finish()V

    return-void
.end method

.method private notifyBackHome(Ljava/lang/String;F)V
    .locals 2

    .line 273
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$nNx77CoKxlepF9TXWEqLlmz27Tk;-><init>(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private prepareBackAnim()V
    .locals 2

    .line 257
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$1Z9wxM8SHllVvDA2tBOOov0jfMs;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$1Z9wxM8SHllVvDA2tBOOov0jfMs;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private recycle()V
    .locals 5

    .line 562
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "recycle"

    invoke-static {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    .line 564
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 565
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationX(F)V

    .line 567
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 568
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleX(F)V

    .line 569
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleY(F)V

    .line 570
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setAlpha(F)V

    const/4 v2, 0x0

    .line 571
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 572
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 573
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 575
    :cond_0
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v3, :cond_1

    .line 576
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 577
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 578
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/LauncherIconImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v1, 0x0

    .line 581
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 582
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 583
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 584
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 585
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    .line 586
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 587
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 588
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 590
    :cond_2
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 591
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 592
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 593
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    .line 594
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 595
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    .line 596
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    .line 597
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 598
    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    return-void
.end method

.method private removeAnimationEndListener()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_0

    .line 381
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->removeAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 436
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 437
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 438
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 439
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 427
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    .line 428
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 429
    invoke-static {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->scaleRect(Landroid/graphics/Rect;F)V

    .line 430
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method

.method private setBackgroundDrawableBounds(F)V
    .locals 3

    .line 444
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 445
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 447
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 448
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 449
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 451
    :cond_0
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 453
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez p1, :cond_1

    .line 454
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 456
    :cond_1
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 458
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

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/FloatingIconView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBackgroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 414
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private setForegroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 420
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private setIcon()V
    .locals 4

    .line 394
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 396
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 397
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    .line 398
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 399
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setForegroundLayerBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 402
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 403
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 404
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 405
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 408
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    .line 409
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidate()V

    return-void
.end method

.method private updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V
    .locals 9

    .line 247
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 248
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    .line 250
    :goto_0
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 251
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    sub-float v4, p2, v3

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p1, p1

    sub-float v5, p1, v3

    iget v7, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v3

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V
    .locals 6

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 234
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 235
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 236
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    iput-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 239
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 241
    :goto_0
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    .line 242
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private updateScale(Landroid/graphics/RectF;F)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    .line 158
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p2

    .line 159
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    .line 161
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleX(F)V

    .line 162
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleY(F)V

    return-void
.end method

.method private updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
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

    .line 148
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 151
    :goto_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 152
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationX(F)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationY(F)V

    return-void
.end method

.method private useBackAnim()Z
    .locals 1

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

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

    .line 469
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawForeground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public forceToEnd()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->cancel()V

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finish()V

    return-void
.end method

.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 295
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 296
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 297
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    const/4 p1, 0x0

    .line 303
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 603
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 604
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 611
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 612
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
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

    .line 619
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFF)V
    .locals 4

    .line 172
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move p4, v1

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V

    .line 180
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 181
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    .line 182
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/FloatingIconView;->setAlpha(F)V

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 187
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 188
    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 191
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->updateScale(Landroid/graphics/RectF;F)V

    .line 194
    iput p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 196
    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 197
    invoke-direct {p0, p4}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    .line 198
    invoke-direct {p0, p2, p4}, Lcom/miui/home/recents/views/FloatingIconView;->updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V

    .line 200
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result p2

    const/high16 p4, 0x3f000000    # 0.5f

    if-eqz p2, :cond_3

    cmpl-float p2, p3, p4

    if-lez p2, :cond_3

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    if-nez p2, :cond_3

    .line 201
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 202
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

    .line 203
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    const-string p2, "back_home_finish"

    .line 204
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    .line 205
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_3

    .line 206
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim()V

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    if-eqz p1, :cond_5

    cmpl-float p1, p3, p4

    if-lez p1, :cond_4

    .line 211
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-nez p1, :cond_4

    .line 212
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    .line 213
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

    .line 214
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

    .line 215
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    iget p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    iget v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    invoke-virtual {p2, p4, v0, p1, p3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->onStart(FFFF)V

    .line 216
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->addAnimationEndListener()V

    .line 219
    :cond_4
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-eqz p1, :cond_5

    .line 220
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mSpringLayerFloatingController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;

    iget p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    iget p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerFloatingController;->onUpdate(FF)V

    .line 224
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidate()V

    .line 225
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidateOutline()V

    return-void
.end method
