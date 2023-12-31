.class public Lcom/miui/home/recents/views/FloatingIconView;
.super Landroid/view/View;
.source "FloatingIconView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# static fields
.field private static sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private static sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static sUseForegroundClipPathPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public TAG:Ljava/lang/String;

.field private isNeedRecycle:Z

.field private isNeedResetShortcutIcon:Z

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

.field private mBitmapEraser:Landroid/graphics/Paint;

.field private mCachedBitmap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClipPath:Landroid/graphics/Path;

.field private mCurRectF:Landroid/graphics/RectF;

.field private mCurTime:J

.field private mCurrentProgress:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field public mEndRunnable:Ljava/lang/Runnable;

.field private mFadeAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mFinalDrawableBounds:Landroid/graphics/Rect;

.field private final mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

.field private mFloatAnimEnded:Z

.field private mFloatingIconViewScale:F

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundClipPath:Landroid/graphics/Path;

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

.field private mHeightDiffBetweenImageAndImageView:I

.field private mIsAdaptiveIcon:Z

.field private mIsBigIcon:Z

.field private mIsFoldLargeScreenLandscape:Z

.field private mIsOpening:Z

.field private mIsUseForegroundClipPath:Z

.field private mIsVerticalClip:Z

.field private mIsVerticalShape:Z

.field private mLastRectF:Landroid/graphics/RectF;

.field private mLastTime:J

.field mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOriginalBackgroundBounds:Landroid/graphics/Rect;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mRealBackgroundBounds:Landroid/graphics/Rect;

.field private mScaleMatrixForClipPath:Landroid/graphics/Matrix;

.field private mScreenRectF:Landroid/graphics/RectF;

.field private mShortcutIconImageViewRect:Landroid/graphics/RectF;

.field private mStartSpringAnim:Z

.field private mStartedMamlAnimation:Z

.field private mTaskCornerRadius:F

.field private mTransformBounds:Landroid/graphics/Rect;

.field private mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/drawable/VectorDrawable;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTrueLeft:F

.field private mTrueTop:F

.field private mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

.field private mWidthDiffBetweenImageAndImageView:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sUseForegroundClipPathPkgs:Ljava/util/ArrayList;

    .line 145
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sUseForegroundClipPathPkgs:Ljava/util/ArrayList;

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 175
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    const-class p1, Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 97
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsFoldLargeScreenLandscape:Z

    .line 98
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    .line 99
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurrentProgress:F

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    .line 140
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    .line 141
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    .line 142
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsUseForegroundClipPath:Z

    const-wide/16 v0, -0x1

    .line 148
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 149
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    .line 151
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScreenRectF:Landroid/graphics/RectF;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBackgroundBounds:Landroid/graphics/Rect;

    .line 161
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    .line 164
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedResetShortcutIcon:Z

    .line 172
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    .line 579
    new-instance p1, Lcom/miui/home/recents/views/FloatingIconView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/views/FloatingIconView$1;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOnAnimationEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 176
    iput-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->maybeOnEnd()V

    return-void
.end method

.method private createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 548
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 549
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 550
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 553
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 555
    :goto_0
    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object p0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 761
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 762
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 764
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 765
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 766
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v4, p0

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 767
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 768
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 769
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-nez v1, :cond_2

    .line 770
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 772
    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    if-eqz v1, :cond_4

    .line 773
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 777
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v2

    if-nez v2, :cond_5

    .line 778
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurrentProgress:F

    mul-float/2addr v1, v2

    .line 782
    :cond_5
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 783
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 784
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 785
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v2, v4

    .line 786
    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 787
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    neg-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    div-float/2addr v1, v5

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 790
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 792
    :cond_6
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawForeground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 796
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 797
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 798
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 799
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 801
    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsUseForegroundClipPath:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 803
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 805
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_2

    .line 806
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    move-object v2, v3

    .line 812
    :cond_2
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 813
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 814
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 819
    :cond_3
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 820
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->drawForeground(Landroid/graphics/Canvas;Landroid/graphics/Path;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 821
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 822
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 823
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 824
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 827
    :cond_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private finish()V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 878
    instance-of v0, v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimTarget;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimStatusStartedForStatusBar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 882
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    sget-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_END:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 883
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->waitFinishFloatingIconView(Lcom/miui/home/recents/views/FloatingIconView;)V

    goto :goto_1

    .line 879
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finishImmediately()V

    :cond_2
    :goto_1
    return-void
.end method

.method private getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 4

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 844
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    :goto_0
    if-eqz v0, :cond_2

    .line 846
    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_4

    .line 847
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 848
    new-instance v1, Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_3

    const-string v3, "FloatingIconViewOpening"

    goto :goto_1

    :cond_3
    const-string v3, "FloatingIconViewClosing"

    :goto_1
    invoke-direct {v1, v2, v3}, Lcom/miui/home/recents/views/FloatingIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    .line 850
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v0, v1

    .line 852
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    .line 854
    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V

    .line 857
    invoke-direct {v0}, Lcom/miui/home/recents/views/FloatingIconView;->setIcon()V

    if-eqz p2, :cond_5

    .line 859
    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    goto :goto_2

    .line 861
    :cond_5
    sput-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 863
    :goto_2
    new-instance p0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$sF-kOKbmC8wd1MW7ZGb0YBgsKBs;

    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$sF-kOKbmC8wd1MW7ZGb0YBgsKBs;-><init>(Z)V

    iput-object p0, v0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    return-object v0

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIconTransparentEdge()I
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_0

    .line 382
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 236
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_0

    .line 239
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F
    .locals 4

    .line 566
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->isLauncherView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 568
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v2, p0, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 570
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    .line 571
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 569
    invoke-virtual {p2, v1, v1, p0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 572
    aget p0, v0, v3

    aget p1, v0, v2

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 574
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :goto_0
    return v1
.end method

.method private static getOffsetForIconBounds(ZF)I
    .locals 2

    .line 690
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 691
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

.method private getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 220
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 1017
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1019
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 1020
    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1021
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 1022
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0

    .line 1024
    :cond_0
    instance-of v0, p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz v0, :cond_1

    .line 1025
    check-cast p0, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V
    .locals 6

    .line 499
    iput-boolean p3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    .line 500
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsFoldLargeScreenLandscape:Z

    .line 501
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 502
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScreenRectF:Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 503
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 504
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->isverticalShape()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    .line 507
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->isVerticalClip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    .line 509
    :cond_1
    instance-of v0, p2, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_2

    .line 510
    new-instance v0, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    .line 512
    :cond_2
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->isBigIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    .line 514
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-eqz v0, :cond_3

    .line 515
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidthDiffBetweenImageAndImageView:I

    .line 516
    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mHeightDiffBetweenImageAndImageView:I

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 520
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->resetPendingBackAnim()V

    .line 521
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->prepareBackAnim()V

    .line 523
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-static {p1, p2, v0}, Lcom/miui/home/recents/views/FloatingIconView;->getLocationBoundsForView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)F

    .line 525
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->createLayoutParams(Landroid/graphics/RectF;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v2, v4

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/miui/home/recents/views/FloatingIconView;->layout(IIII)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->getOffsetForIconBounds(ZF)I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    neg-int v2, v0

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p1, v0

    invoke-virtual {v1, v2, v2, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 533
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 534
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

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

    const-string p2, ", isBigIcon="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isVerticalShape="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isVerticalClip="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setPivotX(F)V

    .line 544
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setPivotY(F)V

    return-void
.end method

.method private isAllAppsShowing()Z
    .locals 0

    .line 350
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 351
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDisableBackAnimOnK2()Z
    .locals 2

    .line 356
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    .line 357
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "venus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.shop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 595
    instance-of p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p0, :cond_0

    .line 596
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getFloatingIconView$4(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 864
    sget-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "run mEndRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 867
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 868
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    .line 869
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->maybeOnEnd()V

    :cond_1
    return-void
.end method

.method private maybeOnEnd()V
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    if-nez v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v0, "maybeOnEnd, don\'t finish, floating anim NOT end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    const/4 v2, 0x0

    .line 186
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationX(F)V

    .line 187
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setTranslationY(F)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finish()V

    return-void
.end method

.method private notifyBackHome(Ljava/lang/String;F)V
    .locals 2

    .line 451
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$BVJr0Zqserit_X_RDr-7vdPTXyw;-><init>(Lcom/miui/home/recents/views/FloatingIconView;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onLauncherDestroy(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 1004
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1006
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1008
    :cond_0
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1010
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x0

    .line 1012
    sput-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 1013
    sput-object p0, Lcom/miui/home/recents/views/FloatingIconView;->sClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method

.method private prepareBackAnim()V
    .locals 2

    .line 433
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$aj3jv4VRcvcxkwiRZcdMufSD0qM;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$aj3jv4VRcvcxkwiRZcdMufSD0qM;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeAnimationEndListener()V
    .locals 0

    return-void
.end method

.method private resetPendingBackAnim()V
    .locals 1

    .line 424
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->resetPendingBackAnim()V

    :cond_0
    return-void
.end method

.method private setBackgroundDrawableBounds(F)V
    .locals 3

    .line 667
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 668
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 670
    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 671
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 672
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 674
    :cond_0
    sget-object v1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 676
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez p1, :cond_2

    .line 677
    iget-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-eqz p1, :cond_1

    .line 678
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidthDiffBetweenImageAndImageView:I

    iget v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mHeightDiffBetweenImageAndImageView:I

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 680
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 682
    :cond_2
    sget-object p1, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 685
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBackgroundDrawableBounds  sTmpRect="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/home/recents/views/FloatingIconView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBackgroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 656
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private setForegroundLayerBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 662
    iput-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayerBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private setIcon()V
    .locals 5

    .line 603
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 607
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 608
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 609
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/home/recents/views/FloatingIconView;->vectorDrawableToBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 612
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    .line 613
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 614
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 615
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 616
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_2

    .line 617
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/views/FloatingIconView;->vectorDrawableToBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 621
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundLayerBounds(Landroid/graphics/Rect;)V

    .line 622
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setForegroundLayerBounds(Landroid/graphics/Rect;)V

    .line 623
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 624
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_9

    .line 625
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/miui/home/recents/views/FloatingIconView;->sUseForegroundClipPathPkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsUseForegroundClipPath:Z

    goto :goto_2

    .line 629
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    if-eqz v0, :cond_6

    .line 630
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 631
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 632
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;->setUpForegroundDrawPaint(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 634
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 635
    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 636
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 638
    :cond_7
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 639
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    .line 642
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 643
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 647
    :cond_8
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 650
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    .line 651
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidate()V

    return-void
.end method

.method private updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V
    .locals 9

    .line 389
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 390
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 393
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    .line 394
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getIconTransparentEdge()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    mul-float v2, v1, p2

    :cond_0
    move p2, v2

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isSupportThemeAdaptiveIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 401
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v1

    .line 402
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v0

    .line 403
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->isIconClipPathDataARect()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataWidthPercent()F

    move-result p2

    sub-float p2, v3, p2

    int-to-float v1, v1

    mul-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    .line 405
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathDataHeightPercent()F

    move-result p2

    sub-float/2addr v3, p2

    int-to-float p2, v0

    mul-float/2addr v3, p2

    div-float p2, v3, v1

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 407
    iget-object p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->getPathFromPathDataForClipIcon()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 408
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p2, p2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 409
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 410
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 411
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScaleMatrixForClipPath:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void

    :cond_2
    :goto_0
    move v8, p2

    move p2, v2

    .line 415
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float v3, v1, p2

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float v4, v1, v8

    iget v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, p2

    move v2, v8

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 418
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float v3, v1, p2

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p1, p1

    sub-float v4, p1, v8

    iget v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, p2

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V
    .locals 6

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 365
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 366
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 367
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    iput-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 370
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 372
    :goto_0
    iput-wide v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurTime:J

    .line 373
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 374
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScreenRectF:Landroid/graphics/RectF;

    const/16 v2, 0x3e9

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurrentProgress:F

    return-void
.end method

.method private updateScale(Landroid/graphics/RectF;F)V
    .locals 1

    .line 211
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    .line 212
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, p2

    .line 213
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    .line 214
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleX(F)V

    .line 215
    iget p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleY(F)V

    return-void
.end method

.method private updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 202
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 205
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 206
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationX(F)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationY(F)V

    return-void
.end method

.method private useBackAnim()Z
    .locals 1

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsOpening:Z

    if-nez v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isDisableBackAnimOnK2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->isAllAppsShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private vectorDrawableToBitmapDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    .line 695
    instance-of v0, p1, Landroid/graphics/drawable/VectorDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 701
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 702
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v0, :cond_7

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 707
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    :cond_2
    move-object v4, v1

    .line 710
    :goto_0
    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_5

    .line 711
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    goto :goto_0

    .line 717
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v0, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 718
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 719
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBitmapEraser:Landroid/graphics/Paint;

    if-nez v1, :cond_4

    .line 720
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBitmapEraser:Landroid/graphics/Paint;

    .line 721
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBitmapEraser:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 724
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBitmapEraser:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 725
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v5, "Reuse Bitmap"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v4, :cond_6

    .line 733
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 734
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 735
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v5, "Create new Bitmap"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 740
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 742
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transform VectorDrawable to BitmapDrawable, width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bounds: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 745
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1

    :cond_7
    :goto_1
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "drawBackground"

    .line 752
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 754
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawForeground,layer size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 756
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->drawForeground(Landroid/graphics/Canvas;)V

    .line 757
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public finishImmediately()V
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish isNeedRecycle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->resetShortcutIcon()V

    .line 892
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->recycle()V

    .line 894
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->removeAnimationEndListener()V

    return-void
.end method

.method public forceToEnd()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finish()V

    return-void
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 0

    .line 1032
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$notifyBackHome$2$FloatingIconView(Ljava/lang/String;F)V
    .locals 3

    .line 452
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getLayerAdaptiveIconDrawable()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 459
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 460
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->updateBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Ljava/lang/String;F)V

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    .line 464
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 465
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 466
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 469
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$onAnimationEnd$3$FloatingIconView()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd, try run mEndRunnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 482
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$prepareBackAnim$1$FloatingIconView()V
    .locals 2

    .line 434
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v1, :cond_1

    .line 440
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->changeToFancyDrawable()V

    goto :goto_0

    .line 441
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 442
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    .line 443
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 445
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$recycle$5$FloatingIconView(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .line 931
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 932
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recycle Bitmap to cache, Cache size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$update$0$FloatingIconView()V
    .locals 2

    .line 322
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    sget-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_CANCEL:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 495
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 477
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 478
    iget-object p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v0, "onAnimationEnd, try run mEndRunnable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$CelDUumfHm0sAPU3U2DDCSrDWQo;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$CelDUumfHm0sAPU3U2DDCSrDWQo;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 973
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 974
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 981
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 982
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
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

    .line 989
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    return-void
.end method

.method public recycle()V
    .locals 6

    .line 898
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    const-string v1, "recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 900
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    :cond_0
    const/16 v0, 0x8

    .line 902
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    const-wide/16 v2, -0x1

    .line 903
    iput-wide v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mLastTime:J

    .line 904
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 905
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 906
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsUseForegroundClipPath:Z

    const/4 v2, 0x0

    .line 907
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationX(F)V

    .line 908
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/FloatingIconView;->setTranslationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 909
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleX(F)V

    .line 910
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setScaleY(F)V

    .line 911
    invoke-virtual {p0, v3}, Lcom/miui/home/recents/views/FloatingIconView;->setAlpha(F)V

    const/4 v3, 0x1

    .line 912
    iput-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedResetShortcutIcon:Z

    .line 913
    iput-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    .line 914
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    .line 915
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 917
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mRealBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 920
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    .line 921
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 922
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 923
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 924
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 925
    iget-object v4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 926
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recycle Bitmap to cache, Cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCachedBitmap:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedBackgroundLayerDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 929
    :cond_2
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mForegroundLayers:Ljava/util/List;

    .line 930
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    new-instance v4, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$0Ii6IYcWMN5eMAUai_eNC7DDGeE;

    invoke-direct {v4, p0}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$0Ii6IYcWMN5eMAUai_eNC7DDGeE;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 934
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTransformedForegroundLayerDrawablesMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 935
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 936
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mCurrentProgress:F

    .line 937
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mScreenRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 938
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFinalDrawableBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 939
    iget-object v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 940
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 942
    :cond_3
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    .line 943
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFadeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 944
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 945
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    .line 946
    iput v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 947
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatAnimEnded:Z

    .line 948
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartSpringAnim:Z

    .line 949
    iput-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 950
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 951
    iput-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mWidgetTypeTargetAnimHelper:Lcom/miui/home/launcher/anim/util/WidgetTypeFloatingIconAnimHelper;

    return-void
.end method

.method public resetShortcutIcon()V
    .locals 5

    .line 955
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetShortcutIcon iconImageView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isNeedResetShortcutIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedResetShortcutIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 957
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedResetShortcutIcon:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 960
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    .line 961
    iget-object v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetShortcutIcon, visible icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    .line 962
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 963
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 964
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 965
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 966
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 967
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNeedRecycle(Z)V
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedRecycle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedRecycle:Z

    return-void
.end method

.method public setNeedResetShortcutIcon(Z)V
    .locals 3

    .line 998
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNeedResetShortcutIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FloatingIconView;->isNeedResetShortcutIcon:Z

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 247
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFZ)V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFZ)V
    .locals 8

    .line 257
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/FloatingIconView;->mShortcutIconImageViewRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v4

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 263
    invoke-static {p1, v3}, Lcom/miui/home/recents/util/RectUtil;->zoomInPixel(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 265
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsFoldLargeScreenLandscape:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    if-eqz v1, :cond_4

    .line 268
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x40a00000    # 5.0f

    sub-float/2addr v1, v5

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 271
    :cond_4
    iget-boolean v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 272
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 274
    iget-boolean v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalShape:Z

    if-eqz v6, :cond_5

    .line 275
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->isCrop()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    goto :goto_0

    .line 276
    :cond_5
    iget-boolean v6, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsVerticalClip:Z

    if-eqz v6, :cond_7

    .line 277
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->isCrop()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 283
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useCornerRadiusEstimate()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    if-eqz v1, :cond_8

    :cond_7
    move p4, v5

    .line 286
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/FloatingIconView;->updateCurrentTimeAndPosition(Landroid/graphics/RectF;)V

    .line 288
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueLeft:F

    .line 289
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTrueTop:F

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_9

    move p2, v4

    goto :goto_1

    :cond_9
    const p2, 0x3a83126f    # 0.001f

    .line 291
    :goto_1
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/FloatingIconView;->setAlpha(F)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p2, v5

    if-lez p2, :cond_b

    .line 296
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p2, p2

    mul-float/2addr p2, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr p2, v1

    cmpl-float v1, p2, v5

    if-lez v1, :cond_a

    .line 297
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v4

    div-float/2addr v1, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    .line 298
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_a
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    float-to-double v6, p2

    .line 300
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 303
    :cond_b
    :goto_2
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->updateTranslation(Landroid/graphics/RectF;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/FloatingIconView;->updateScale(Landroid/graphics/RectF;F)V

    const v1, 0x3cc49ba6    # 0.024f

    .line 308
    iget v2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mFloatingIconViewScale:F

    sub-float/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    mul-float/2addr p4, v2

    iput p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mTaskCornerRadius:F

    .line 310
    iget-boolean p4, p0, Lcom/miui/home/recents/views/FloatingIconView;->mIsBigIcon:Z

    if-eqz p4, :cond_c

    iget p4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_3

    :cond_c
    iget p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_3
    int-to-float p4, p4

    div-float/2addr p4, p2

    .line 311
    invoke-direct {p0, v0, p4}, Lcom/miui/home/recents/views/FloatingIconView;->updateClipPath(Landroid/widget/FrameLayout$LayoutParams;F)V

    .line 312
    invoke-direct {p0, p4}, Lcom/miui/home/recents/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    if-nez p5, :cond_d

    .line 314
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->useBackAnim()Z

    move-result p2

    if-eqz p2, :cond_d

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, p3, p2

    if-lez p2, :cond_d

    iget-boolean p2, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    if-nez p2, :cond_d

    .line 315
    iput-boolean v3, p0, Lcom/miui/home/recents/views/FloatingIconView;->mStartedMamlAnimation:Z

    .line 316
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

    .line 317
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    const-string p2, "back_home_finish"

    .line 318
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/FloatingIconView;->notifyBackHome(Ljava/lang/String;F)V

    .line 319
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 321
    new-instance p2, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$Lr1yQtPyAKc6Du8q_R0yEZXQl0I;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/-$$Lambda$FloatingIconView$Lr1yQtPyAKc6Du8q_R0yEZXQl0I;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    .line 329
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->postResetBackAnim(Ljava/lang/Runnable;)V

    .line 333
    :cond_d
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidate()V

    .line 334
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->invalidateOutline()V

    return-void
.end method

.method public useCornerRadiusEstimate()Z
    .locals 0

    .line 590
    invoke-direct {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 591
    invoke-static {p0}, Lcom/miui/home/launcher/PathDataIconUtil;->useCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
