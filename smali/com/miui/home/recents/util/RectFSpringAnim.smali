.class public Lcom/miui/home/recents/util/RectFSpringAnim;
.super Ljava/lang/Object;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;,
        Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;,
        Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field public static final RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "Lcom/miui/home/recents/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mAlphaAnimEnded:Z

.field private mAlphaDamping:F

.field private mAlphaMinVisibleChange:F

.field private mAlphaStiffness:F

.field private mAlphaVelocity:F

.field private final mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimsStarted:Z

.field private mCenterXDamping:F

.field private mCenterXMinVisibleChange:F

.field private mCenterXStiffness:F

.field private mCenterYDamping:F

.field private mCenterYMinVisibleChange:F

.field private mCenterYStiffness:F

.field private mCurrentAlpha:F

.field private mCurrentCenterX:F

.field private mCurrentCenterY:F

.field private mCurrentRadius:F

.field private mCurrentRatio:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentWidth:F

.field private mDefaultRect:Landroid/graphics/RectF;

.field private mEndAlpha:F

.field private mEndRadius:F

.field private mLeftVelocity:F

.field private mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

.field private mMoveToTargetRectWhenAnimEnd:Z

.field private mNeedUpdateAllAnim:Z

.field private final mOnUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRect:Landroid/graphics/RectF;

.field private mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRadiusAnimEnded:Z

.field private mRadiusDamping:F

.field private mRadiusMinVisibleChange:F

.field private mRadiusStiffness:F

.field private mRadiusVelocity:F

.field private mRatioDamping:F

.field private mRatioMinVisibleChange:F

.field private mRatioStiffness:F

.field private mRatioVelocity:F

.field private mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectCenterXAnimEnded:Z

.field private mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectCenterYAnimEnded:Z

.field private final mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectRatioAnimEnded:Z

.field private mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectWidthAnimEnded:Z

.field private mRequestCancel:Z

.field private mRequestEnd:Z

.field private mStartAlpha:F

.field private mStartRadius:F

.field private mStartRect:Landroid/graphics/RectF;

.field private mTargetRect:Landroid/graphics/RectF;

.field private mTopVelocity:F

.field private mWidthDamping:F

.field private mWidthMinVisibleChange:F

.field private mWidthStiffness:F

.field private mWidthVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$1;

    const-string v1, "rectLeftSpring"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 67
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$2;

    const-string v1, "rectYSpring"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 86
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$3;

    const-string v1, "rectWidth"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 105
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$4;

    const-string v1, "rectRatio"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 124
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$5;

    const-string v1, "radius"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 143
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$6;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 4

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 217
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    .line 218
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 227
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    .line 228
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 230
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 231
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    const v1, 0x3f4ccccd    # 0.8f

    .line 258
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 259
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 260
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 261
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 262
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    const v1, 0x3f7d70a4    # 0.99f

    .line 263
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    const/high16 v1, 0x43480000    # 200.0f

    .line 265
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 266
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 267
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    const/high16 v3, 0x43c80000    # 400.0f

    .line 268
    iput v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 269
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 270
    iput v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 272
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 273
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 274
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const v1, 0x3c23d70a    # 0.01f

    .line 275
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 276
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusMinVisibleChange:F

    const v0, 0x3d4ccccd    # 0.05f

    .line 277
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaMinVisibleChange:F

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mNeedUpdateAllAnim:Z

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 288
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 289
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2

    :cond_1
    const-string p1, "RectFSpringAnim"

    .line 290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RectFSpringAnim: mTargetRect is error   mTargetRect="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 295
    :cond_2
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRadius(F)V

    .line 296
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    .line 297
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartAlpha(F)V

    .line 298
    iput p6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 300
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    .line 301
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 302
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 303
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 304
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 305
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 306
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p1, p3

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return p0
.end method

.method static synthetic access$1202(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->needUpdateCurrentAnim(Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    return p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method private calculateStiffFromResponse(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 p1, 0x43480000    # 200.0f

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 410
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private endDirectly()V
    .locals 2

    .line 610
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    .line 612
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 613
    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->end(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getInitVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F
    .locals 1

    .line 364
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_0

    .line 365
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    return p1

    .line 366
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_1

    .line 367
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    return p1

    .line 368
    :cond_1
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_2

    .line 369
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    return p1

    .line 370
    :cond_2
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_3

    .line 371
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getModifyResponse(F)F
    .locals 1

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseSmoothAnimationEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    .line 442
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v0

    mul-float/2addr p1, v0

    return p1
.end method

.method private getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F
    .locals 2

    .line 356
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->getVelocity()F

    move-result v0

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->getVelocity()F

    move-result p1

    return p1

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getInitVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result p1

    return p1
.end method

.method private getWidthProgress()F
    .locals 3

    .line 766
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 767
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method private initAllAnimations()V
    .locals 3

    .line 459
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->modifyStartRectAccordingVelocity()V

    .line 461
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 462
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 463
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 465
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 466
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 464
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 467
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 468
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 469
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$gymaTrdTb20H6jExWmno5qjsSPI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$gymaTrdTb20H6jExWmno5qjsSPI;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 470
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 475
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 476
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 477
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 479
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 480
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 478
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 481
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 482
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 483
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fTET6p6UExhO8J7A9fnkEke3tA4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fTET6p6UExhO8J7A9fnkEke3tA4;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 484
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 489
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 490
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 491
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 493
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 494
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 492
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 495
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 496
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 497
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$KMz_BT1H9T14SFrj73bWrU9uods;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$KMz_BT1H9T14SFrj73bWrU9uods;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 498
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    .line 503
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 504
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 511
    :cond_1
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 513
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 514
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 512
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 515
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 516
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 517
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$mn0yr_5ZSsnwQbQYD7bN9wVxHMA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$mn0yr_5ZSsnwQbQYD7bN9wVxHMA;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 518
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 523
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadius:F

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 524
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 526
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 527
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 525
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 528
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusMinVisibleChange:F

    .line 529
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusVelocity:F

    .line 530
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$jA7RwvNg9TwlAqIrjMe3c-WNfXg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$jA7RwvNg9TwlAqIrjMe3c-WNfXg;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 531
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 536
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 537
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 539
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 540
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 538
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 541
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaMinVisibleChange:F

    .line 542
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    .line 543
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fw74GGU1CgfU-vCKsSGqpQJHnr4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fw74GGU1CgfU-vCKsSGqpQJHnr4;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 544
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 549
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 550
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAllProperty()V

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 559
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    .line 560
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 563
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initAllProperty()V
    .locals 1

    .line 568
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 569
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 570
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 571
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 572
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 573
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    return-void
.end method

.method public static synthetic lambda$E7Qv66HWn2vGfCebZ6q5DdFYyS0(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnimDirectly()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$0(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 471
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnimEnded:Z

    .line 472
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$1(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 485
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnimEnded:Z

    .line 486
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$2(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 499
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnimEnded:Z

    .line 500
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$3(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnimEnded:Z

    .line 520
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$4(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 532
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnimEnded:Z

    .line 533
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$5(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 545
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnimEnded:Z

    .line 546
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$rkMu9d_b7IMRELtBYgSbVVi6Iqk(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->endDirectly()V

    return-void
.end method

.method public static synthetic lambda$updateEndRectF$6(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;)V
    .locals 0

    .line 645
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    return-void
.end method

.method private maybeOnEnd()V
    .locals 3

    .line 797
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnimEnded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnimEnded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnimEnded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnimEnded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnimEnded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnimEnded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 799
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 800
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    .line 801
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 804
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private modifyStartRectAccordingVelocity()V
    .locals 8

    .line 446
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 447
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v0, v1, v0

    .line 449
    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 450
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    div-float/2addr v5, v1

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 451
    iget-object v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    div-float/2addr v6, v1

    mul-float/2addr v6, v0

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 452
    iget-object v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 453
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    div-float/2addr v7, v1

    mul-float/2addr v7, v0

    div-float/2addr v7, v4

    add-float v0, v6, v7

    .line 454
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    add-float v4, v2, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-void
.end method

.method private needUpdateCurrentAnim(Landroidx/dynamicanimation/animation/SpringAnimation;)Z
    .locals 5

    .line 623
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mNeedUpdateAllAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 629
    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_3

    .line 631
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    if-ne v3, p1, :cond_2

    return v1

    :cond_4
    return v1
.end method

.method private onUpdate()V
    .locals 6

    .line 743
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 749
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 750
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 751
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 752
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 754
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;

    .line 755
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getWidthProgress()F

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;FFF)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private startAllAnim()V
    .locals 2

    .line 587
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAllAnimations()V

    .line 588
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnimDirectly()V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$E7Qv66HWn2vGfCebZ6q5DdFYyS0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$E7Qv66HWn2vGfCebZ6q5DdFYyS0;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private startAllAnimDirectly()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 597
    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->start(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateEndRectFDirectly(Landroid/graphics/RectF;)V
    .locals 4

    .line 650
    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 651
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 652
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 653
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 655
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 656
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v3, p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 658
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 659
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    .line 661
    :cond_1
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 664
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 665
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_2

    .line 667
    :cond_2
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 670
    :goto_2
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 671
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_3

    .line 673
    :cond_3
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 676
    :goto_3
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 677
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_4

    .line 679
    :cond_4
    iput v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 682
    :goto_4
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 683
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate()V

    :cond_5
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 719
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    .line 720
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelDirectly()V

    goto :goto_0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$iEzCU77Nm4Mme3cfZb4_7S16aIc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$iEzCU77Nm4Mme3cfZb4_7S16aIc;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public cancelDirectly()V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    .line 729
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 732
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public copyCurrentAnimState()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 8

    .line 329
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 330
    invoke-virtual {v7, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 331
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 332
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 333
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 334
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 335
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 336
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 337
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 338
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 339
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 340
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 341
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 342
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    return-object v7
.end method

.method public end()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->endDirectly()V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$rkMu9d_b7IMRELtBYgSbVVi6Iqk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$rkMu9d_b7IMRELtBYgSbVVi6Iqk;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getCenterXProgress()F
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 775
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 696
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return v0
.end method

.method public getCurrentRadius()F
    .locals 1

    .line 692
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    return v0
.end method

.method public getCurrentRectF()Landroid/graphics/RectF;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDimAlphaByCurrentWidth(F)F
    .locals 3

    .line 700
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 701
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    .line 700
    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/home/recents/DimLayer;->getDimAlphaByRectProgress(FFF)F

    move-result p1

    return p1
.end method

.method public getPreviousRect()Landroid/graphics/RectF;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public isClosedToTarget(F)Z
    .locals 2

    .line 737
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    mul-float/2addr v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 738
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    mul-float/2addr v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 739
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    mul-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRequestCancel()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    return v0
.end method

.method public isRequestEnd()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 714
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStart()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    return v0
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V
    .locals 1

    .line 384
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getModifyResponse(F)F

    move-result p3

    .line 385
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_0

    .line 386
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 387
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    goto :goto_0

    .line 388
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_1

    .line 389
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 390
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    goto :goto_0

    .line 391
    :cond_1
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_2

    .line 392
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 393
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    goto :goto_0

    .line 394
    :cond_2
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_3

    .line 395
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 396
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    goto :goto_0

    .line 397
    :cond_3
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_4

    .line 398
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 399
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    goto :goto_0

    .line 400
    :cond_4
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_5

    .line 401
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 402
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    :cond_5
    :goto_0
    return-void
.end method

.method public setMinimumVisibleChange(FFFF)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 435
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 436
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 437
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    return-void
.end method

.method public setMoveToTargetRectWhenAnimEnd(Z)V
    .locals 0

    .line 705
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    return-void
.end method

.method public setStartAlpha(F)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    return-void
.end method

.method public setStartRadius(F)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadius:F

    return-void
.end method

.method public setStartRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 310
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 311
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 312
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    :cond_0
    const-string p1, "RectFSpringAnim"

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFSpringAnim: mStartRect is error   mStartRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    :cond_1
    return-void
.end method

.method public setVelocity(FFFF)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 378
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 379
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 380
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    return-void
.end method

.method public setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 348
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 349
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 350
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 351
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    :cond_0
    return-void
.end method

.method public startInGestureThread()V
    .locals 1

    .line 577
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 578
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public startInMainThread()V
    .locals 1

    .line 582
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 583
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public updateEndRectF(Landroid/graphics/RectF;)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$5Dy5RGu-wBCaaBw0exUraL27NII;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$5Dy5RGu-wBCaaBw0exUraL27NII;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
