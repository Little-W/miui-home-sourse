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
.field private final mAllAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mAlphaAnimEnded:Z

.field private mAlphaDamping:F

.field private final mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mAlphaStiffness:F

.field private mAnimAcreageSize:F

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

.field private final mDefaultRect:Landroid/graphics/RectF;

.field private mEndAlpha:F

.field private mEndRadius:F

.field private mIconTitle:Ljava/lang/CharSequence;

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

.field private final mPreviousRect:Landroid/graphics/RectF;

.field private mProgressCalculateType:I

.field private final mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRadiusAnimEnded:Z

.field private mRadiusDamping:F

.field private final mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mRadiusStiffness:F

.field private mRatioDamping:F

.field private mRatioMinVisibleChange:F

.field private mRatioStiffness:F

.field private mRatioVelocity:F

.field private final mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectCenterXAnimEnded:Z

.field private final mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectCenterYAnimEnded:Z

.field private final mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectRatioAnimEnded:Z

.field private final mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRectWidthAnimEnded:Z

.field private final mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mRequestCancel:Z

.field private mRequestEnd:Z

.field private mStartAlpha:F

.field private mStartRadius:F

.field private final mStartRect:Landroid/graphics/RectF;

.field private mTargetAcreageSize:F

.field private mTargetRect:Landroid/graphics/RectF;

.field private mTopVelocity:F

.field private mWidthDamping:F

.field private mWidthMinVisibleChange:F

.field private mWidthStiffness:F

.field private mWidthVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$1;

    const-string v1, "rectLeftSpring"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 73
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$2;

    const-string v1, "rectYSpring"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 92
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$3;

    const-string v1, "rectWidth"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 111
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$4;

    const-string v1, "rectRatio"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 130
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$5;

    const-string v1, "radius"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    .line 149
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$6;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 226
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 229
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    .line 230
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 239
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    .line 240
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 242
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 243
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 252
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 253
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 254
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 255
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 256
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 257
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    .line 259
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 260
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 261
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 262
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 263
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 264
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    const v1, 0x3f4ccccd    # 0.8f

    .line 276
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 277
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 278
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 279
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 280
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    const v1, 0x3f7d70a4    # 0.99f

    .line 281
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    const/high16 v1, 0x43480000    # 200.0f

    .line 283
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 284
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 285
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    const/high16 v2, 0x43c80000    # 400.0f

    .line 286
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 287
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 288
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 290
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 291
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 292
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const v0, 0x3a83126f    # 0.001f

    .line 293
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mNeedUpdateAllAnim:Z

    const/16 v0, 0x3e9

    .line 300
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 3

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 226
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 229
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    .line 230
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 239
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    .line 240
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 242
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 243
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 252
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 253
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 254
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 255
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 256
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 257
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    .line 259
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 260
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 261
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 262
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 263
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 264
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    const v1, 0x3f4ccccd    # 0.8f

    .line 276
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 277
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 278
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 279
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 280
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    const v1, 0x3f7d70a4    # 0.99f

    .line 281
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    const/high16 v1, 0x43480000    # 200.0f

    .line 283
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 284
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 285
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    const/high16 v2, 0x43c80000    # 400.0f

    .line 286
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 287
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 288
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 290
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 291
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 292
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const v0, 0x3a83126f    # 0.001f

    .line 293
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mNeedUpdateAllAnim:Z

    const/16 v0, 0x3e9

    .line 300
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    .line 307
    invoke-virtual/range {p0 .. p6}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return p0
.end method

.method static synthetic access$1202(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->needUpdateCurrentAnim(Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    return p0
.end method

.method static synthetic access$602(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    return p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/util/RectFSpringAnim;F)F
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 52
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

    .line 523
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private endDirectly()V
    .locals 2

    .line 727
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 728
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    .line 729
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

    .line 730
    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->end(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAcreageProgress()F
    .locals 3

    .line 893
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimAcreageSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimAcreageSize:F

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method private getInitVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "*>;)F"
        }
    .end annotation

    .line 459
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_0

    .line 460
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    return p1

    .line 461
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_1

    .line 462
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    return p1

    .line 463
    :cond_1
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_2

    .line 464
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    return p1

    .line 465
    :cond_2
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_3

    .line 466
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getModifyResponse(F)F
    .locals 1

    .line 554
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseSmoothAnimationEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    .line 555
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v0

    mul-float/2addr p1, v0

    return p1
.end method

.method private getProgress()F
    .locals 2

    .line 882
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 883
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getWidthProgress()F

    move-result v0

    return v0

    .line 885
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getAcreageProgress()F

    move-result v0

    return v0
.end method

.method private getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
            "*>;)F"
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->getVelocity()F

    move-result v0

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->getVelocity()F

    move-result p1

    return p1

    .line 454
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getInitVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result p1

    return p1
.end method

.method private getWidthProgress()F
    .locals 3

    .line 901
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

    .line 902
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

    .line 572
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->modifyStartRectAccordingVelocity()V

    .line 574
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    .line 575
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    .line 576
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimAcreageSize:F

    .line 578
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 579
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 580
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 581
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 582
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 583
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 584
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 585
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 586
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$gymaTrdTb20H6jExWmno5qjsSPI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$gymaTrdTb20H6jExWmno5qjsSPI;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 587
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 592
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 593
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 595
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 596
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 597
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 598
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 599
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 600
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fTET6p6UExhO8J7A9fnkEke3tA4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fTET6p6UExhO8J7A9fnkEke3tA4;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 601
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 606
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 607
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 608
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 609
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 610
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 611
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 612
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 613
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 614
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$KMz_BT1H9T14SFrj73bWrU9uods;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$KMz_BT1H9T14SFrj73bWrU9uods;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 615
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/4 v0, 0x0

    .line 620
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 621
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 628
    :goto_0
    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 629
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 630
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 631
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 632
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 633
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 634
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$mn0yr_5ZSsnwQbQYD7bN9wVxHMA;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$mn0yr_5ZSsnwQbQYD7bN9wVxHMA;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 635
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 640
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadius:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 641
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 642
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 643
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 644
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 645
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 646
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 647
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$jA7RwvNg9TwlAqIrjMe3c-WNfXg;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$jA7RwvNg9TwlAqIrjMe3c-WNfXg;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 648
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 653
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 654
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 655
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 656
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 657
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 658
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    const v2, 0x3d4ccccd    # 0.05f

    .line 659
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 660
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fw74GGU1CgfU-vCKsSGqpQJHnr4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$fw74GGU1CgfU-vCKsSGqpQJHnr4;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 661
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 666
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 667
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAllAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAllProperty()V

    const/4 v0, 0x1

    .line 675
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 676
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    .line 677
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 680
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private initAllProperty()V
    .locals 1

    .line 685
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 686
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 687
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 688
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 689
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->init()V

    .line 690
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

    .line 588
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnimEnded:Z

    .line 589
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$1(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 602
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnimEnded:Z

    .line 603
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$2(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 616
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnimEnded:Z

    .line 617
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$3(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 636
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnimEnded:Z

    .line 637
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$4(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 649
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnimEnded:Z

    .line 650
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public static synthetic lambda$initAllAnimations$5(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    .line 662
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnimEnded:Z

    .line 663
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

    .line 762
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    return-void
.end method

.method private maybeOnEnd()V
    .locals 3

    .line 924
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

    .line 926
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 927
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

    .line 928
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 930
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

    .line 931
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private modifyStartRectAccordingVelocity()V
    .locals 8

    .line 559
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v0, v1, v0

    .line 562
    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 563
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    div-float/2addr v5, v1

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 564
    iget-object v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    div-float/2addr v6, v1

    mul-float/2addr v6, v0

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 565
    iget-object v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 566
    :cond_0
    iget-object v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

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

    .line 567
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

    .line 740
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mNeedUpdateAllAnim:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 746
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

    .line 748
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

    .line 860
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 866
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 867
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 868
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 869
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 871
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

    .line 872
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgress()F

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

    .line 704
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAllAnimations()V

    .line 705
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnimDirectly()V

    goto :goto_0

    .line 708
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

    .line 713
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

    .line 714
    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->start(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateEndRectFDirectly(Landroid/graphics/RectF;)V
    .locals 4

    .line 767
    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 768
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 769
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 770
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 772
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v3, p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 775
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 776
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    .line 778
    :cond_1
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 781
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 782
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_2

    .line 784
    :cond_2
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 787
    :goto_2
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 788
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_3

    .line 790
    :cond_3
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 793
    :goto_3
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 794
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_4

    .line 796
    :cond_4
    iput v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 799
    :goto_4
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 800
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate()V

    :cond_5
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 835
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 836
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    .line 837
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelDirectly()V

    goto :goto_0

    .line 840
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

    .line 845
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

    .line 846
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 848
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

    .line 849
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public copyCurrentAnimState()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 8

    .line 423
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 424
    invoke-virtual {v7, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 425
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 426
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 427
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 428
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 429
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 430
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 431
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 432
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 433
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 434
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 435
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 436
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 437
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    iput v0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-object v7
.end method

.method public end()V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->endDirectly()V

    goto :goto_0

    .line 722
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

    .line 909
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

    .line 910
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

    .line 813
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return v0
.end method

.method public getCurrentRadius()F
    .locals 1

    .line 809
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    return v0
.end method

.method public getCurrentRectF()Landroid/graphics/RectF;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPreviousRect()Landroid/graphics/RectF;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getProgressCalculateType()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return v0
.end method

.method public getStartRect()Landroid/graphics/RectF;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public initCloseToHomeAnimParam()V
    .locals 6

    .line 502
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    const v2, 0x3f7d70a4    # 0.99f

    if-eqz v0, :cond_0

    .line 503
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 504
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 505
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 506
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 507
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 508
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    goto :goto_0

    .line 510
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3ed70a3d    # 0.42f

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {p0, v0, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 511
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p0, v0, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 512
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v5, 0x3f666666    # 0.9f

    invoke-virtual {p0, v0, v5, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 513
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 514
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {p0, v0, v4, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 515
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    :goto_0
    return-void
.end method

.method public isClosedToTarget(F)Z
    .locals 2

    .line 854
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

    .line 855
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

    .line 856
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

    .line 920
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    return v0
.end method

.method public isRequestEnd()Z
    .locals 1

    .line 916
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 830
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

    .line 831
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

.method public isSameIconTitle(Lcom/miui/home/launcher/ShortcutIcon;)Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isStart()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    return v0
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 2

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 315
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    :cond_1
    const-string p1, "RectFSpringAnim"

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFSpringAnim: mTargetRect is error   mTargetRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 320
    :cond_2
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRadius(F)V

    .line 321
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    .line 322
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartAlpha(F)V

    .line 323
    iput p6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 325
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    float-to-double p3, p1

    const-wide/high16 p5, 0x4000000000000000L    # 2.0

    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    .line 326
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    float-to-double p5, p1

    div-double/2addr p5, p3

    double-to-float p1, p5

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 327
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    float-to-double p5, p1

    div-double/2addr p5, p3

    double-to-float p1, p5

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 328
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    float-to-double p5, p1

    div-double/2addr p5, p3

    double-to-float p1, p5

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 329
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    float-to-double p5, p1

    div-double/2addr p5, p3

    double-to-float p1, p5

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 330
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    float-to-double p5, p1

    div-double/2addr p5, p3

    double-to-float p1, p5

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 331
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    float-to-double p5, p1

    div-double/2addr p5, p3

    double-to-float p1, p5

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 333
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 334
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 335
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 336
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 338
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 339
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 340
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 341
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 343
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 344
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 345
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 346
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 347
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 348
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 351
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 352
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    .line 353
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXAnimEnded:Z

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYAnimEnded:Z

    .line 355
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthAnimEnded:Z

    .line 356
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioAnimEnded:Z

    .line 357
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusAnimEnded:Z

    .line 358
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaAnimEnded:Z

    const p2, 0x3f4ccccd    # 0.8f

    .line 360
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 361
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 362
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 363
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 364
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    const p2, 0x3f7d70a4    # 0.99f

    .line 365
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 367
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 368
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 369
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const p2, 0x3a83126f    # 0.001f

    .line 370
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    const/4 p2, 0x1

    .line 371
    iput-boolean p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    .line 372
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mNeedUpdateAllAnim:Z

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconTitle:Ljava/lang/CharSequence;

    .line 374
    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    const/16 p1, 0x3e9

    .line 375
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-void
.end method

.method public setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "*>;FF)V"
        }
    .end annotation

    .line 479
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getModifyResponse(F)F

    move-result p3

    .line 480
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_0

    .line 481
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 482
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    goto :goto_0

    .line 483
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_1

    .line 484
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 485
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    goto :goto_0

    .line 486
    :cond_1
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_2

    .line 487
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 488
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    goto :goto_0

    .line 489
    :cond_2
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_3

    .line 490
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 491
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    goto :goto_0

    .line 492
    :cond_3
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_4

    .line 493
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 494
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    goto :goto_0

    .line 495
    :cond_4
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    if-ne p1, v0, :cond_5

    .line 496
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 497
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    :cond_5
    :goto_0
    return-void
.end method

.method public setIconTitle(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconTitle:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public setMinimumVisibleChange(FFFF)V
    .locals 0

    .line 547
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 548
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 549
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 550
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    return-void
.end method

.method public setMoveToTargetRectWhenAnimEnd(Z)V
    .locals 0

    .line 822
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    return-void
.end method

.method public setProgressCalculateType(I)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-void
.end method

.method public setStartAlpha(F)V
    .locals 0

    .line 411
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    return-void
.end method

.method public setStartRadius(F)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadius:F

    return-void
.end method

.method public setStartRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 397
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 398
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

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectFSpringAnim: mStartRect is error   mStartRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public setVelocity(FFFF)V
    .locals 0

    .line 472
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 473
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 474
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 475
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    return-void
.end method

.method public setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 443
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 444
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 445
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 446
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-direct {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    :cond_0
    return-void
.end method

.method public startInGestureThread()V
    .locals 1

    .line 694
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 695
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public startInMainThread()V
    .locals 1

    .line 699
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 700
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public updateEndRectF(Landroid/graphics/RectF;)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$5Dy5RGu-wBCaaBw0exUraL27NII;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$5Dy5RGu-wBCaaBw0exUraL27NII;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
