.class public Lmiuix/slidingwidget/widget/SlidingButtonHelper;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAnimChecked:Z

.field private mAnimCheckedTemp:Z

.field private mCornerRadius:I

.field private mExtraAlpha:F

.field private mHeight:I

.field private mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private mIsSliderEdgeReached:Z

.field private mLastX:I

.field private mMarginVertical:I

.field private mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskCheckedSlideBarAlpha:F

.field private mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskCheckedSlideBarAlphaTemp:F

.field private mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaskUnCheckedPressedSlideBarAlpha:F

.field private mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field private mMaxTranslateOffset:I

.field private mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOriginalTouchPointX:I

.field private mParamCached:Z

.field private mSlideBar:Landroid/graphics/drawable/StateListDrawable;

.field private mSliderHeight:I

.field private mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderMoved:Z

.field private mSliderOff:Landroid/graphics/drawable/Drawable;

.field private mSliderOffset:I

.field private mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderOffsetTemp:I

.field private mSliderOn:Landroid/graphics/drawable/Drawable;

.field private mSliderOnAlpha:I

.field private mSliderOnAlphaTemp:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderScale:F

.field private mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderShadow:Landroid/graphics/drawable/Drawable;

.field private mSliderShadowAlpha:F

.field private mSliderShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderStroke:Landroid/graphics/drawable/Drawable;

.field private mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mSliderWidth:I

.field private mSlidingBarColor:I

.field private mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mStrokeAlpha:F

.field private mStrokeAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Landroid/widget/CompoundButton;",
            ">;"
        }
    .end annotation
.end field

.field private mTapThreshold:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTranslateDist:[F

.field private mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field private mView:Landroid/widget/CompoundButton;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 34
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 4

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 78
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    const-string v2, "SliderOffset"

    invoke-direct {v1, p0, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    const/4 v2, 0x0

    .line 124
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    const v3, 0x3dcccccd    # 0.1f

    .line 125
    iput v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlpha:F

    .line 126
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 127
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    .line 132
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    const/4 v3, -0x1

    .line 133
    iput v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 134
    iput v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 135
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 136
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 138
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$2;

    const-string v3, "SliderScale"

    invoke-direct {v0, p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$2;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 151
    new-instance v0, Lmiuix/slidingwidget/widget/-$$Lambda$SlidingButtonHelper$ghp6DeaizEaJp08eI69vcSyB-yE;

    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/-$$Lambda$SlidingButtonHelper$ghp6DeaizEaJp08eI69vcSyB-yE;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 156
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;

    const-string v3, "SliderShadowAlpha"

    invoke-direct {v0, p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 170
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;

    const-string v3, "StrokeAlpha"

    invoke-direct {v0, p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 183
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;

    const-string v3, "MaskCheckedSlideBarAlpha"

    invoke-direct {v0, p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 196
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$6;

    const-string v3, "MaskUnCheckedSlideBarAlpha"

    invoke-direct {v0, p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$6;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    .line 212
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    const/4 v0, 0x2

    .line 214
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 218
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 219
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 220
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 221
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    return p0
.end method

.method static synthetic access$002(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .locals 0

    .line 31
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    return p1
.end method

.method static synthetic access$100(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    return p0
.end method

.method static synthetic access$102(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .locals 0

    .line 31
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    return p1
.end method

.method static synthetic access$200(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlpha:F

    return p0
.end method

.method static synthetic access$202(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .locals 0

    .line 31
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlpha:F

    return p1
.end method

.method static synthetic access$300(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return p0
.end method

.method static synthetic access$302(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .locals 0

    .line 31
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    return p1
.end method

.method static synthetic access$400(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    return p0
.end method

.method static synthetic access$402(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F
    .locals 0

    .line 31
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    return p1
.end method

.method static synthetic access$502(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    return p1
.end method

.method static synthetic access$600(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    return p0
.end method

.method static synthetic access$700(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    return p0
.end method

.method private actualTranslateDist(Landroid/view/View;Landroid/view/MotionEvent;)[F
    .locals 8

    .line 660
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 661
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v1, 0x2

    .line 662
    new-array v2, v1, [I

    .line 663
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 665
    aget v4, v2, v3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x1

    .line 666
    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v2, v7

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 668
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v7, p2, p1

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 670
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 671
    invoke-static {p1, v7}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 672
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    int-to-float v2, v0

    mul-float/2addr p2, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 675
    new-array v0, v1, [F

    aput p2, v0, v3

    aput p1, v0, v5

    return-object v0
.end method

.method private animateToState(Z)V
    .locals 2

    .line 830
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 831
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 832
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->startCheckedChangeAnimInternal(Z)V

    .line 833
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_0
    if-eqz p1, :cond_1

    .line 835
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 836
    :goto_0
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;

    invoke-direct {v1, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V

    invoke-direct {p0, p1, v0, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method private animateToState(ZILjava/lang/Runnable;)V
    .locals 3

    .line 779
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 782
    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 785
    :cond_1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/animation/property/FloatProperty;

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 786
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x4476bd71

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 787
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p2

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 788
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 789
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$7;

    invoke-direct {v0, p0, p3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$7;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lmiuix/animation/physics/SpringAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 795
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    if-eqz p1, :cond_3

    .line 797
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 798
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 800
    :cond_2
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 801
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    goto :goto_0

    .line 804
    :cond_3
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 805
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 807
    :cond_4
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 808
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    :cond_5
    :goto_0
    return-void
.end method

.method private animateToggle()V
    .locals 2

    .line 825
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 826
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method private createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 865
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable;-><init>()V

    .line 866
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getLayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setLayerType(I)V

    .line 867
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable;->setCornerRadius(F)V

    .line 868
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-direct {p1, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 852
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 853
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 854
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method private initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 860
    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 861
    iput-object p3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic lambda$new$0(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    .line 153
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method private moveSlider(I)V
    .locals 2

    .line 760
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int p1, p1

    .line 763
    :cond_0
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 764
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-ge p1, v0, :cond_1

    .line 765
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    goto :goto_0

    .line 766
    :cond_1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-le p1, v0, :cond_2

    .line 767
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 770
    :cond_2
    :goto_0
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    .line 771
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    if-nez v0, :cond_5

    .line 772
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 774
    :cond_5
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 775
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderOffset(I)V

    return-void
.end method

.method private onDrawSlideBar(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 741
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    if-lez v1, :cond_0

    .line 743
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 744
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 746
    :cond_0
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    if-lez v1, :cond_1

    .line 748
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 749
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    :cond_1
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    if-lez p2, :cond_2

    .line 753
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 754
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private onDrawSliderShadow(Landroid/graphics/Canvas;II)V
    .locals 6

    .line 438
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 445
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 446
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 449
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 451
    :goto_0
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, v1, 0x2

    sub-int v4, p2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v5, p3, v2

    add-int/2addr p2, v1

    add-int/2addr p3, v2

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 455
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 456
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private onDrawSliderStroke(Landroid/graphics/Canvas;IIIIF)V
    .locals 3

    .line 419
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p6

    float-to-int p6, v1

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 420
    iget-object p6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p6, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 421
    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private onPressedInner()V
    .locals 1

    .line 679
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 682
    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 685
    :cond_1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 688
    :cond_2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 689
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 692
    :cond_3
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 693
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 695
    :cond_4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 696
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_5
    return-void
.end method

.method private onUnPressedInner()V
    .locals 1

    .line 702
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 705
    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 708
    :cond_1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 711
    :cond_2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 712
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 714
    :cond_3
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 717
    :cond_4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 718
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 719
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 721
    :cond_5
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 722
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 724
    :cond_6
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 725
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_7
    return-void
.end method

.method private popSavedParams()V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    if-eqz v0, :cond_0

    .line 375
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 376
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 377
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 378
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    const/4 v0, -0x1

    .line 380
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 381
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 382
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    :cond_0
    return-void
.end method

.method private saveCurrentParams()V
    .locals 1

    .line 366
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 367
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 368
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 369
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    return-void
.end method

.method private scaleCanvasEnd(Landroid/graphics/Canvas;)V
    .locals 0

    .line 731
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private scaleCanvasStart(Landroid/graphics/Canvas;II)V
    .locals 1

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 737
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method private setCheckedInner(Z)V
    .locals 1

    .line 396
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 400
    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 402
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 406
    :cond_1
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-nez v0, :cond_3

    .line 407
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 410
    :cond_2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 412
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    :cond_3
    return-void
.end method

.method private startCheckedChangeAnimInternal(Z)V
    .locals 1

    .line 387
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 388
    :cond_0
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_0
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 389
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 391
    :cond_3
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->popSavedParams()V

    .line 392
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setCheckedInner(Z)V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 434
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 237
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 233
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    return v0
.end method

.method public getSlideBar()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 245
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public getSliderOffset()I
    .locals 1

    .line 321
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    return v0
.end method

.method public getSliderOn()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 241
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public initAnim()V
    .locals 9

    .line 460
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v3, 0x3fce147b    # 1.61f

    invoke-direct {v0, v1, v2, v3}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 461
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 462
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 463
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    const v3, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 464
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 466
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 467
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 468
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 469
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 470
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 472
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v2, v3, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 473
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 474
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 475
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 476
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 478
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v7}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 479
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 480
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 481
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 482
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 484
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiuix/animation/property/FloatProperty;

    const v8, 0x3e19999a    # 0.15f

    invoke-direct {v0, v4, v5, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 485
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 486
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 487
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 488
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 490
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiuix/animation/property/FloatProperty;

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v5, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 491
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 492
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 493
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 494
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 496
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 497
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v4, 0x43db51ec

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 498
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 499
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 500
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 502
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v4, v5, v7}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 503
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 504
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 505
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 506
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 509
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    const v6, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v4, v5, v6}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 511
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 512
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 513
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 514
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 516
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    iget-object v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, v4, v5, v7}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 518
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 519
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 520
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 521
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method

.method public initDrawable()V
    .locals 2

    .line 425
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$drawable;->miuix_appcompat_sliding_btn_slider_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 426
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$drawable;->miuix_appcompat_sliding_btn_slider_stroke_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    .line 250
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_mask_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    .line 252
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setDrawingCacheEnabled(Z)V

    .line 253
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    .line 255
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_sliderOn:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 256
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_sliderOff:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 257
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v2, Lmiuix/slidingwidget/R$styleable;->SlidingButton_android_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "#FF0D84FF"

    .line 258
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 259
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 260
    sget v0, Lmiuix/slidingwidget/R$color;->miuix_appcompat_sliding_button_bar_on_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 262
    :cond_0
    sget p1, Lmiuix/slidingwidget/R$styleable;->SlidingButton_slidingBarColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    .line 264
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_frame_vertical_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 265
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 266
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 267
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 269
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 270
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    .line 271
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    .line 272
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 273
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 275
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 276
    sget v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 277
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 278
    sget v1, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 279
    sget v1, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 280
    sget v2, Lmiuix/slidingwidget/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 284
    iget v2, p1, Landroid/util/TypedValue;->type:I

    iget v3, v0, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Landroid/util/TypedValue;->data:I

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_1

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-ne p1, v0, :cond_1

    move-object p2, v1

    :cond_1
    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    .line 293
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    .line 294
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 296
    :cond_2
    invoke-direct {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 297
    invoke-direct {p0, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 299
    invoke-direct {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 300
    invoke-direct {p0, p1, v0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskedSlideBar()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 308
    :cond_3
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 310
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 311
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderOffset(I)V

    .line 314
    :cond_4
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/slidingwidget/R$dimen;->miuix_appcompat_sliding_button_slider_max_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 552
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public notifyCheckedChangeListener()V
    .locals 3

    .line 818
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 820
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-interface {v1, v2, v0}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 525
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    :goto_0
    int-to-float v0, v0

    .line 526
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v9, v1, v2

    .line 528
    invoke-direct {p0, p1, v9}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDrawSlideBar(Landroid/graphics/Canvas;F)V

    .line 531
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_1
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    add-int v5, v2, v3

    if-eqz v1, :cond_2

    .line 533
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_2
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    add-int/2addr v1, v2

    :goto_2
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    aget v3, v2, v4

    float-to-int v3, v3

    add-int v7, v1, v3

    .line 534
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v2, v2

    add-int v6, v1, v2

    add-int v8, v6, v3

    add-int v1, v7, v5

    .line 536
    div-int/lit8 v1, v1, 0x2

    add-int v2, v8, v6

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDrawSliderShadow(Landroid/graphics/Canvas;II)V

    .line 537
    invoke-direct {p0, p1, v1, v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->scaleCanvasStart(Landroid/graphics/Canvas;II)V

    .line 538
    iget-boolean v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 540
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 541
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 543
    :cond_3
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 544
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 545
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    move-object v3, p0

    move-object v4, p1

    .line 547
    invoke-direct/range {v3 .. v9}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDrawSliderStroke(Landroid/graphics/Canvas;IIIIF)V

    .line 548
    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->scaleCanvasEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 647
    :pswitch_0
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 648
    aput v1, p1, v0

    .line 649
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 650
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 652
    :cond_0
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    goto :goto_0

    .line 637
    :pswitch_1
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 638
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 640
    :cond_1
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    goto :goto_0

    .line 643
    :cond_2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-direct {p0, v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->actualTranslateDist(Landroid/view/View;Landroid/view/MotionEvent;)[F

    move-result-object p1

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 644
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 566
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 567
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v3}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    :goto_0
    if-eqz v3, :cond_1

    .line 569
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_1
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    add-int/2addr v3, v5

    .line 570
    :goto_1
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 622
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz p1, :cond_3

    .line 623
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 624
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 626
    :cond_3
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 627
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 628
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto/16 :goto_7

    .line 589
    :pswitch_1
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz p1, :cond_b

    .line 590
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    sub-int p1, v1, p1

    invoke-direct {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->moveSlider(I)V

    .line 591
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 592
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    if-lt p1, v0, :cond_b

    .line 593
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 594
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_7

    .line 600
    :pswitch_2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 601
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 602
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    if-eqz v0, :cond_6

    .line 603
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    if-nez v0, :cond_4

    .line 604
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToggle()V

    goto :goto_4

    .line 606
    :cond_4
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    div-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v6

    :goto_3
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 607
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    invoke-direct {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 608
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 609
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_4

    .line 613
    :cond_6
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToggle()V

    .line 615
    :cond_7
    :goto_4
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 616
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 617
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_7

    .line 574
    :pswitch_3
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 575
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 576
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 577
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onPressedInner()V

    .line 578
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    if-le p1, v0, :cond_9

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    if-lt p1, v0, :cond_8

    goto :goto_5

    :cond_8
    move v3, v6

    :cond_9
    :goto_5
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    goto :goto_6

    .line 581
    :cond_a
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 583
    :goto_6
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 584
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    .line 585
    iput-boolean v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    :cond_b
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlpha(F)V
    .locals 0

    .line 430
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 348
    invoke-direct {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->saveCurrentParams()V

    .line 349
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    if-eqz p1, :cond_0

    .line 350
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionStart:I

    :goto_0
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 351
    :goto_1
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 352
    :goto_2
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 353
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 354
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 356
    :cond_3
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 357
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 359
    :cond_4
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 360
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->cancel()V

    .line 362
    :cond_5
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setLayerType(I)V
    .locals 2

    .line 874
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable;

    if-eqz v1, :cond_0

    .line 875
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable;->setLayerType(I)V

    .line 877
    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable;

    if-eqz v1, :cond_1

    .line 878
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable;->setLayerType(I)V

    .line 880
    :cond_1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable;

    if-eqz v1, :cond_2

    .line 881
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable;->setLayerType(I)V

    :cond_2
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setParentClipChildren()V
    .locals 2

    .line 845
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 847
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public setSliderDrawState()V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getSliderOn()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getSliderOn()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 228
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getSlideBar()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0

    .line 328
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 329
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 558
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
