.class public Lcom/miui/home/recents/GestureBackArrowView;
.super Landroid/view/View;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mArrow:Landroid/graphics/Bitmap;

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private mArrowDstRect:Landroid/graphics/Rect;

.field private mArrowFeedBackDone:Z

.field private mArrowHeight:I

.field private mArrowPaint:Landroid/graphics/Paint;

.field private mArrowShown:Z

.field private mArrowWidth:I

.field private mBackDstRect:Landroid/graphics/Rect;

.field private mBackHeight:I

.field private mBackWidth:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurArrowAlpha:I

.field private mCurrentY:F

.field private mDisplayWidth:I

.field private mExpectBackHeight:F

.field private mIconHeight:I

.field private mIconNeedDraw:Z

.field private mIconScale:F

.field private mIconWidth:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastIconAnimator:Landroid/animation/ValueAnimator;

.field private mLeftBackground:Landroid/graphics/Bitmap;

.field private mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mOffsetX:F

.field private mPosition:I

.field private mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

.field private mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mRightBackground:Landroid/graphics/Bitmap;

.field private mScale:F

.field private mStartX:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 46
    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 47
    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    .line 65
    sget-object p2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    .line 78
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 p2, 0x0

    .line 232
    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    .line 101
    iget-object p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const-string p3, "keyguard"

    .line 103
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    iput-object p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    iput p5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    .line 109
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 110
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 112
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    .line 113
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 114
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadResources()V

    .line 119
    iget p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackHeight:I

    .line 126
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackHeight:I

    .line 122
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    .line 132
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    .line 133
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/miui/home/recents/GestureBackArrowView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/graphics/Paint;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/home/recents/GestureBackArrowView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurArrowAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/home/recents/GestureBackArrowView;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/GestureBackArrowView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mOffsetX:F

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/GestureBackArrowView;)Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/GestureBackArrowView;F)F
    .locals 0

    .line 29
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    return p1
.end method

.method static synthetic access$902(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    return p1
.end method

.method private changeScale(FFIZ)V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 304
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    .line 305
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/miui/home/recents/GestureBackArrowView$3;

    invoke-direct {p3, p0, p4, p1}, Lcom/miui/home/recents/GestureBackArrowView$3;-><init>(Lcom/miui/home/recents/GestureBackArrowView;ZF)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 319
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 321
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 324
    :cond_1
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    .line 325
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 326
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/GestureBackArrowView$4;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/GestureBackArrowView$4;-><init>(Lcom/miui/home/recents/GestureBackArrowView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 336
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method private loadResources()V
    .locals 8

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080116

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 142
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 143
    invoke-virtual {v6, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x43340000    # 180.0f

    .line 144
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 145
    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 145
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    .line 150
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconHeight:I

    .line 152
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080115

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowHeight:I

    .line 155
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    return-void
.end method

.method private skipChangeScaleOnAcitonMove()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private startArrowAnimating(ZI)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    const/4 v1, 0x2

    .line 248
    new-array v1, v1, [I

    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurArrowAlpha:I

    aput v2, v1, v0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :cond_1
    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 249
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->isSupportEffectGestureBackLinear()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 252
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/GestureBackArrowView$1;-><init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/GestureBackArrowView$2;-><init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object v0
.end method

.method public isArrowFeedBackDone()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return v0
.end method

.method onActionDown(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 352
    iput p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    .line 353
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    goto :goto_0

    .line 355
    :cond_0
    iget p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackHeight:I

    int-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 p3, 0x41a00000    # 20.0f

    sub-float/2addr p1, p3

    .line 356
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    .line 358
    :goto_0
    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    .line 359
    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    .line 361
    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    return-void
.end method

.method onActionMove(F)V
    .locals 1

    .line 365
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mOffsetX:F

    .line 366
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->skipChangeScaleOnAcitonMove()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-static {p1}, Lcom/miui/home/recents/GesturesBackController;->convertOffset(F)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    .line 369
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->invalidate()V

    return-void
.end method

.method onActionUp(FLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 387
    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    .line 388
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/4 p1, 0x2

    .line 389
    new-array p1, p1, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 390
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 391
    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$5;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/GestureBackArrowView$5;-><init>(Lcom/miui/home/recents/GestureBackArrowView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_3

    .line 404
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    :cond_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 407
    sget-object p1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadResources()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 170
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    .line 178
    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    int-to-float v2, v1

    iget v3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    mul-float/2addr v2, v3

    .line 179
    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v4, :pswitch_data_0

    move v1, v5

    move v2, v1

    move v3, v2

    move v4, v3

    move v7, v4

    move v8, v7

    goto/16 :goto_2

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    .line 191
    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mDisplayWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    sub-int v1, v4, v1

    float-to-int v7, v3

    sub-int v7, v4, v7

    .line 193
    iget v8, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    int-to-float v9, v8

    iget v10, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v2

    div-float/2addr v9, v6

    add-float/2addr v9, v3

    float-to-int v9, v9

    sub-int v9, v4, v9

    int-to-float v8, v8

    mul-float/2addr v8, v10

    sub-float v8, v2, v8

    div-float/2addr v8, v6

    add-float/2addr v8, v3

    float-to-int v8, v8

    sub-int v8, v4, v8

    .line 195
    iget v11, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v12, v11

    mul-float/2addr v12, v10

    cmpg-float v12, v2, v12

    if-gez v12, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v11, v11

    mul-float/2addr v11, v10

    add-float/2addr v2, v11

    div-float/2addr v2, v6

    :goto_0
    add-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v2, v4, v2

    int-to-float v3, v2

    .line 197
    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v4, v4

    iget v10, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v7

    move v7, v8

    move v8, v9

    goto :goto_2

    .line 181
    :pswitch_1
    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    float-to-int v3, v1

    add-float v4, v2, v1

    float-to-int v4, v4

    .line 183
    iget v7, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    int-to-float v8, v7

    iget v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v9

    sub-float v8, v2, v8

    div-float/2addr v8, v6

    add-float/2addr v8, v1

    float-to-int v8, v8

    int-to-float v7, v7

    mul-float/2addr v7, v9

    add-float/2addr v7, v2

    div-float/2addr v7, v6

    add-float/2addr v7, v1

    float-to-int v7, v7

    .line 185
    iget v10, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v11, v10

    mul-float/2addr v11, v9

    cmpg-float v11, v2, v11

    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v10, v10

    mul-float/2addr v10, v9

    add-float/2addr v2, v10

    div-float/2addr v2, v6

    :goto_1
    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v1

    .line 187
    iget v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    sub-float/2addr v2, v9

    float-to-int v2, v2

    move v13, v3

    move v3, v1

    move v1, v13

    .line 203
    :goto_2
    iget-object v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v11, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    div-float v12, v11, v6

    sub-float v12, v10, v12

    float-to-int v12, v12

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v1, v12, v4, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v9, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_2

    goto :goto_3

    .line 213
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x32

    .line 214
    invoke-direct {p0, v5, v0}, Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V

    .line 215
    iput-boolean v5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    goto :goto_4

    .line 208
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    const/16 v1, 0x64

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V

    .line 211
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    .line 219
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    float-to-double v0, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v4

    if-lez v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_5

    .line 221
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowHeight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    sub-float v3, v1, v3

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v8, v3, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_6

    .line 225
    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconHeight:I

    int-to-float v5, v4

    iget v7, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    sub-float v5, v1, v5

    float-to-int v5, v5

    int-to-float v4, v4

    mul-float/2addr v4, v7

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v2, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 3

    const/4 v0, 0x0

    .line 411
    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 412
    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->onActionDown(FFF)V

    .line 413
    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    .line 414
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->invalidate()V

    return-void
.end method

.method public setArrowFeedBackDone(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return-void
.end method

.method setDisplayWidth(I)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mDisplayWidth:I

    return-void
.end method

.method setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V
    .locals 4

    .line 278
    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_2

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    .line 285
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq p1, v0, :cond_5

    .line 286
    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    const/16 v2, 0xc8

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_3

    .line 287
    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const v1, 0x3f95c28f    # 1.17f

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V

    .line 288
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_4

    .line 290
    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V

    .line 292
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    :cond_5
    return-void
.end method
