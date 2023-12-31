.class public Lcom/miui/home/recents/util/RectFSpringAnim;
.super Ljava/lang/Object;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;,
        Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;,
        Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;,
        Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    }
.end annotation


# instance fields
.field private DEFAULT_ALPHA_STIFFNESS:F

.field private DEFAULT_CENTER_X_STIFFNESS:F

.field private DEFAULT_CENTER_Y_STIFFNESS:F

.field private DEFAULT_RADIUS_STIFFNESS:F

.field private DEFAULT_RATIO_STIFFNESS:F

.field private DEFAULT_WIDTH_STIFFNESS:F

.field private final mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mAlphaDamping:F

.field private final mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mAlphaStiffness:F

.field private mAlphaVelocity:F

.field private mAlreadyModifyStartRect:Z

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

.field private mCancelFinishAppToHome:Z

.field private final mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mCenterXDamping:F

.field private mCenterXMinVisibleChange:F

.field private mCenterXStiffness:F

.field private final mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

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

.field private final mFirstEndRect:Landroid/graphics/RectF;

.field private mIconXSpan:I

.field private mIconYSpan:I

.field private mIsCopyNextState:Z

.field private mIsFromRecent:Z

.field private mIsNeedUpdateTask:Z

.field private mIsOpenAnim:Z

.field private mIsSplitLaunchAnimation:Z

.field private mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

.field private mLeftVelocity:F

.field private mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

.field private mMinWidth:F

.field private mMoveToTargetRectWhenAnimEnd:Z

.field private final mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

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

.field private final mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mRadiusDamping:F

.field private final mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mRadiusStiffness:F

.field private mRadiusVelocity:F

.field private final mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mRatioDamping:F

.field private mRatioMinVisibleChange:F

.field private mRatioStiffness:F

.field private mRatioVelocity:F

.field private final mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

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

.field private final mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private volatile mRequestCancel:Z

.field private volatile mRequestEnd:Z

.field private mSkipCallExecuteFinish:Z

.field private mStartAlpha:F

.field private mStartRadius:F

.field private final mStartRect:Landroid/graphics/RectF;

.field private mTargetAcreageSize:F

.field private mTargetRect:Landroid/graphics/RectF;

.field private mTopVelocity:F

.field private final mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

.field private mWidthDamping:F

.field private mWidthMinVisibleChange:F

.field private mWidthStiffness:F

.field private mWidthVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    .line 64
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    .line 89
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    .line 98
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 99
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 100
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 101
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 103
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 104
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "centerX"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 105
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "centerY"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 106
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Width"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 107
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Ratio"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 108
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Radius"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 109
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Alpha"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 111
    new-instance v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    invoke-direct {v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    const v1, 0x3f4ccccd    # 0.8f

    .line 123
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 124
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 125
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 126
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 127
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    const v1, 0x3f7d70a4    # 0.99f

    .line 128
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    const/high16 v1, 0x43480000    # 200.0f

    .line 130
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_X_STIFFNESS:F

    .line 131
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_Y_STIFFNESS:F

    .line 132
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_WIDTH_STIFFNESS:F

    const/high16 v2, 0x43c80000    # 400.0f

    .line 133
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RATIO_STIFFNESS:F

    .line 134
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RADIUS_STIFFNESS:F

    .line 135
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_ALPHA_STIFFNESS:F

    .line 136
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_X_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 137
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_Y_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 138
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_WIDTH_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 139
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RATIO_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 140
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RADIUS_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 141
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_ALPHA_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    const v1, 0x3dcccccd    # 0.1f

    .line 143
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 144
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 145
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const v1, 0x3a83126f    # 0.001f

    .line 146
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 147
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/16 v0, 0x3e9

    .line 151
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    .line 157
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 4

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    .line 64
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    .line 89
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    .line 98
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 99
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 100
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 101
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 103
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 104
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "centerX"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 105
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "centerY"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 106
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Width"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 107
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Ratio"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 108
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Radius"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 109
    new-instance v1, Lcom/miui/home/recents/anim/SpringBundle;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    const-string v3, "Alpha"

    invoke-direct {v1, v3, v2}, Lcom/miui/home/recents/anim/SpringBundle;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    .line 111
    new-instance v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    invoke-direct {v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    const v1, 0x3f4ccccd    # 0.8f

    .line 123
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 124
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 125
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 126
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 127
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    const v1, 0x3f7d70a4    # 0.99f

    .line 128
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    const/high16 v1, 0x43480000    # 200.0f

    .line 130
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_X_STIFFNESS:F

    .line 131
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_Y_STIFFNESS:F

    .line 132
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_WIDTH_STIFFNESS:F

    const/high16 v2, 0x43c80000    # 400.0f

    .line 133
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RATIO_STIFFNESS:F

    .line 134
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RADIUS_STIFFNESS:F

    .line 135
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_ALPHA_STIFFNESS:F

    .line 136
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_X_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 137
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_Y_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 138
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_WIDTH_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 139
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RATIO_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 140
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RADIUS_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 141
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_ALPHA_STIFFNESS:F

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    const v1, 0x3dcccccd    # 0.1f

    .line 143
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 144
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 145
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const v1, 0x3a83126f    # 0.001f

    .line 146
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 147
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/16 v0, 0x3e9

    .line 151
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    .line 179
    invoke-virtual/range {p0 .. p6}, Lcom/miui/home/recents/util/RectFSpringAnim;->reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 180
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->init()V

    return-void
.end method

.method private calculateStiffFromResponse(F)F
    .locals 2

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/high16 p1, 0x43480000    # 200.0f

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double p0, p1

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    .line 692
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private copyCurrentAnimState(Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 8

    .line 366
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 367
    invoke-virtual {v7, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 368
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 369
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 370
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 371
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 372
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 373
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 374
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 375
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 376
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 377
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 378
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 379
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    iput p1, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 380
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    iput p0, v7, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-object v7
.end method

.method private endDirectly()V
    .locals 4

    .line 870
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 871
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    .line 872
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "RectFSpringAnim"

    const-string v3, "endDirectly mRequestEnd end"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->setEndRequested(Z)V

    :cond_0
    return-void
.end method

.method private static getAcreageProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 2

    .line 1058
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr v0, p2

    .line 1059
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p2, p1

    sub-float p1, v0, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez p2, :cond_0

    .line 1061
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr p2, p0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, p1

    sub-float/2addr v1, p0

    :cond_0
    return v1
.end method

.method private getInitVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;)F
    .locals 1

    .line 430
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_0

    .line 431
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    return p0

    .line 432
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_1

    .line 433
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    return p0

    .line 434
    :cond_1
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_2

    .line 435
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    return p0

    .line 436
    :cond_2
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_3

    .line 437
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    return p0

    .line 438
    :cond_3
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_4

    .line 439
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusVelocity:F

    return p0

    .line 440
    :cond_4
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_5

    .line 441
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private getModifyResponse(F)F
    .locals 0

    .line 740
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method private getProgress()F
    .locals 2

    .line 1039
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getWidthProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F

    move-result p0

    return p0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getAcreageProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method private getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;Lcom/miui/home/recents/anim/SpringBundle;)F
    .locals 3

    .line 415
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    const-string v1, "RectFSpringAnim"

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getPropertyVelocity()F

    move-result p2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyVelocity new, value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/anim/SpringBundle;->getVelocity()F

    move-result p2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyVelocity old, value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/high16 v0, 0x4f000000

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    return p2

    .line 425
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getInitVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;)F

    move-result p0

    return p0
.end method

.method public static getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F
    .locals 1

    const/16 v0, 0x3e9

    if-ne p3, v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getWidthProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F

    move-result p0

    return p0

    .line 1049
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getAcreageProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method private static getWidthProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F
    .locals 5

    .line 1068
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    .line 1069
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v1, p0, v0

    .line 1070
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, p2, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    cmpl-float v2, p2, p0

    if-lez v2, :cond_1

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v3

    goto :goto_2

    :cond_1
    cmpg-float v2, p2, v0

    if-gez v2, :cond_2

    cmpg-float v2, p2, p0

    if-gez v2, :cond_2

    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_2
    cmpl-float p0, v1, v3

    if-eqz p0, :cond_3

    .line 1077
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v4

    :goto_2
    cmpl-float p1, p0, v4

    if-lez p1, :cond_4

    move p0, v4

    :cond_4
    cmpg-float p1, p0, v3

    if-gez p1, :cond_5

    move p0, v3

    :cond_5
    return p0
.end method

.method private init()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 186
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 187
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 188
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 189
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addSpringBundle(Lcom/miui/home/recents/anim/SpringBundle;)V

    .line 190
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$PYcjexbp8DxjCG_sw8zoIx7_Hfo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$PYcjexbp8DxjCG_sw8zoIx7_Hfo;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addUpdateListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationUpdateListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    .line 199
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$62XYQO9gz6raJ-D8Mw6-7b5BC_I;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$62XYQO9gz6raJ-D8Mw6-7b5BC_I;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->addEndListener(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$OnAnimationEndListener;)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    return-void
.end method

.method private initAllAnimations()V
    .locals 3

    .line 757
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->modifyStartRectAccordingVelocity()V

    .line 759
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    .line 760
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    .line 761
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimAcreageSize:F

    .line 763
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 764
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 766
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 767
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 768
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 769
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 770
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    .line 772
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 773
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 774
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 775
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 776
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 777
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 778
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 779
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    .line 781
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 782
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 783
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 784
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 785
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 786
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 787
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    .line 788
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    const/4 v0, 0x0

    .line 790
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 791
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 799
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 800
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 801
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    .line 802
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 803
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    .line 805
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadius:F

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 806
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 807
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 808
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 809
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 810
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusVelocity:F

    .line 811
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    .line 813
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 814
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 815
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    .line 816
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 817
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    const v1, 0x3d4ccccd    # 0.05f

    .line 818
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    .line 819
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;

    .line 821
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAllProperty()V

    const/4 v0, 0x1

    .line 823
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 824
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

    .line 825
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 827
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

    .line 828
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initAllProperty()V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->init()V

    .line 834
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->init()V

    .line 835
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->init()V

    .line 836
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->init()V

    .line 837
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/SpringBundle;->init()V

    .line 838
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->init()V

    return-void
.end method

.method public static synthetic lambda$Avx_4DcJK_CcBzc1n-Momz6JMPo(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->start()V

    return-void
.end method

.method public static synthetic lambda$rkMu9d_b7IMRELtBYgSbVVi6Iqk(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->endDirectly()V

    return-void
.end method

.method private modifyStartRectAccordingVelocity()V
    .locals 8

    .line 744
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isAlreadyModifyStartRect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 745
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

    .line 747
    iget-object v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 748
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    div-float/2addr v5, v1

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 749
    iget-object v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    div-float/2addr v6, v1

    mul-float/2addr v6, v0

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 750
    iget-object v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 751
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

    .line 752
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    add-float v1, v2, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    invoke-virtual {p0, v2, v3, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-void
.end method

.method private onUpdate()V
    .locals 8

    .line 1021
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1027
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    iget v6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    iget v7, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateRect(Landroid/graphics/RectF;FFFF)V

    .line 1028
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

    .line 1029
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
    :goto_1
    return-void
.end method

.method private resetAnimValue(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 220
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const-string v0, "RectFSpringAnim"

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RectFSpringAnim: mTargetRect is error   mTargetRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 225
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTargetRect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRadius(F)V

    .line 228
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    .line 229
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartAlpha(F)V

    .line 230
    iput p6, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndAlpha:F

    return-void
.end method

.method private setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V
    .locals 1

    .line 463
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getModifyResponse(F)F

    move-result p3

    .line 464
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_0

    .line 465
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 466
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    goto :goto_0

    .line 467
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_1

    .line 468
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 469
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    goto :goto_0

    .line 470
    :cond_1
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_2

    .line 471
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 472
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    goto :goto_0

    .line 473
    :cond_2
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_3

    .line 474
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 475
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    goto :goto_0

    .line 476
    :cond_3
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_4

    .line 477
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    .line 478
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    goto :goto_0

    .line 479
    :cond_4
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    if-ne p1, v0, :cond_5

    .line 480
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    .line 481
    invoke-direct {p0, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->calculateStiffFromResponse(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    :cond_5
    :goto_0
    return-void
.end method

.method private startAllAnim()V
    .locals 2

    .line 853
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->initAllAnimations()V

    .line 854
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->start()V

    goto :goto_0

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$Avx_4DcJK_CcBzc1n-Momz6JMPo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$Avx_4DcJK_CcBzc1n-Momz6JMPo;-><init>(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateAllAnimEndDirectly(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 7

    .line 894
    new-instance v1, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 895
    iget v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mEndRadius:F

    .line 896
    invoke-virtual {p0, p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 897
    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->resetAnimValue(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 898
    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p5

    mul-float/2addr p3, p5

    .line 899
    iget-object p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p5

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr p5, v0

    iput p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    .line 900
    iget p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetAcreageSize:F

    sub-float/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimAcreageSize:F

    .line 902
    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    .line 903
    iget-object p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result p5

    .line 904
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAllAnimEndDirectly, centerX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", centerY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", rectF = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", radius = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", alpha = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RectFSpringAnim"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 915
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 917
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 919
    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p3, p5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 920
    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 921
    iget-object p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 922
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 923
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    .line 925
    :cond_1
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 926
    iput p5, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 927
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 928
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 929
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 930
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 931
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate()V

    :goto_1
    return-void
.end method

.method private updateEndRectFDirectly(Landroid/graphics/RectF;)V
    .locals 5

    .line 936
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 937
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 938
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 939
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEndRectFDirectly, centerX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", centerY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", rectF = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RectFSpringAnim"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 948
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v3, p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 950
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 951
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 952
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 953
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 954
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    .line 956
    :cond_1
    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 957
    iput v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 958
    iput v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 959
    iput v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 960
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate()V

    :goto_1
    return-void
.end method

.method private updateRect(Landroid/graphics/RectF;FFFF)V
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    div-float v0, p4, p0

    sub-float/2addr p2, v0

    .line 385
    iput p2, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p5, p4

    div-float p0, p5, p0

    sub-float/2addr p3, p0

    .line 386
    iput p3, p1, Landroid/graphics/RectF;->top:F

    .line 387
    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, p4

    iput p0, p1, Landroid/graphics/RectF;->right:F

    .line 388
    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, p5

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 994
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 995
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 996
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    .line 997
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelDirectly()V

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$iEzCU77Nm4Mme3cfZb4_7S16aIc;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$iEzCU77Nm4Mme3cfZb4_7S16aIc;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelDirectly()V
    .locals 3

    .line 1006
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

    .line 1007
    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1009
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

    .line 1010
    invoke-interface {v1, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public clearAnimatorListener()V
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public clearOnUpdateListener()V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearRectFSpringAnimListener()V
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public copyCurrentAnimNextState()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 11

    .line 331
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    :goto_0
    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v0

    float-to-long v1, v1

    .line 337
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v6

    .line 338
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v7

    .line 339
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v8

    .line 340
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v9

    .line 341
    iget-object v3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v3

    .line 342
    iget-object v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {v4, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->getNextValue(J)F

    move-result v10

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy, get next value , centerX"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", centerY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", width"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", ratio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", radius"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", alpha"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", refreshRate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", time"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RectFSpringAnim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v4, p0

    move-object v5, v0

    .line 354
    invoke-direct/range {v4 .. v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateRect(Landroid/graphics/RectF;FFFF)V

    const/4 v1, 0x1

    .line 355
    iput-boolean v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    .line 356
    invoke-direct {p0, v0, v3, v10}, Lcom/miui/home/recents/util/RectFSpringAnim;->copyCurrentAnimState(Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    .line 357
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAlreadyModifyStartRect(Z)V

    return-object p0
.end method

.method public copyCurrentAnimState()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    iget v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->copyCurrentAnimState(Landroid/graphics/RectF;FF)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method public end()V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->endDirectly()V

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$rkMu9d_b7IMRELtBYgSbVVi6Iqk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$rkMu9d_b7IMRELtBYgSbVVi6Iqk;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getCenterXProgress()F
    .locals 2

    .line 1090
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

    .line 1091
    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getCurrentAlpha()F
    .locals 0

    .line 973
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    return p0
.end method

.method public getCurrentRadius()F
    .locals 0

    .line 969
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    return p0
.end method

.method public getCurrentRectF()Landroid/graphics/RectF;
    .locals 0

    .line 965
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getFirstTargetRect()Landroid/graphics/RectF;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mFirstEndRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    return-object p0
.end method

.method public getPreviousRect()Landroid/graphics/RectF;
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getProgressCalculateType()I
    .locals 0

    .line 327
    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return p0
.end method

.method public getStartRect()Landroid/graphics/RectF;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getTargetRect()Landroid/graphics/RectF;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public isAlreadyModifyStartRect()Z
    .locals 0

    .line 161
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlreadyModifyStartRect:Z

    return p0
.end method

.method public isCancelFinishAppToHome()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelFinishAppToHome:Z

    return p0
.end method

.method public isClosedToTarget(F)Z
    .locals 2

    .line 1015
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

    .line 1016
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

    .line 1017
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    mul-float/2addr p1, p0

    cmpg-float p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFromRecent()Z
    .locals 0

    .line 1121
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsFromRecent:Z

    return p0
.end method

.method public isNeedUpdateTask()Z
    .locals 0

    .line 1113
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsNeedUpdateTask:Z

    return p0
.end method

.method public isOpenAnim()Z
    .locals 0

    .line 1109
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsOpenAnim:Z

    return p0
.end method

.method public isRequestCancel()Z
    .locals 0

    .line 1101
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    return p0
.end method

.method public isRequestEnd()Z
    .locals 0

    .line 1097
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    return p0
.end method

.method public isRunning()Z
    .locals 1

    .line 990
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMultiSpringDynamicAnimation:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSkipCallExecuteFinish()Z
    .locals 0

    .line 493
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mSkipCallExecuteFinish:Z

    return p0
.end method

.method public isSplitLaunchAnimation()Z
    .locals 0

    .line 501
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsSplitLaunchAnimation:Z

    return p0
.end method

.method public isStart()Z
    .locals 0

    .line 986
    iget-boolean p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    return p0
.end method

.method public synthetic lambda$init$0$RectFSpringAnim(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 192
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 193
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMinWidth:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 194
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 195
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 196
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    .line 197
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->onUpdate()V

    return-void
.end method

.method public synthetic lambda$init$1$RectFSpringAnim(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;Z)V
    .locals 1

    const-string p1, "RectFSpringAnim"

    const-string p2, "MultiSpringDynamicAnimation on end"

    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 202
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    .line 203
    invoke-interface {p2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    .line 206
    invoke-interface {p2, p0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic lambda$updateAllAnimValues$3$RectFSpringAnim(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 0

    .line 889
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAllAnimEndDirectly(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    return-void
.end method

.method public synthetic lambda$updateEndRectF$2$RectFSpringAnim(Landroid/graphics/RectF;)V
    .locals 0

    .line 881
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectFSpringAnimListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V
    .locals 0

    .line 235
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/recents/util/RectFSpringAnim;->resetAnimValue(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 237
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    .line 238
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_X_STIFFNESS:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    .line 239
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_CENTER_Y_STIFFNESS:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    .line 240
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_WIDTH_STIFFNESS:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    .line 241
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RATIO_STIFFNESS:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    .line 242
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_RADIUS_STIFFNESS:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    .line 243
    iget p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->DEFAULT_ALPHA_STIFFNESS:F

    float-to-double p3, p3

    div-double/2addr p3, p1

    double-to-float p1, p3

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    const/4 p1, 0x0

    .line 245
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 246
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 247
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 248
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 249
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusVelocity:F

    .line 250
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    .line 252
    iget-object p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mPreviousRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 253
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearOnUpdateListener()V

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearAnimatorListener()V

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearRectFSpringAnimListener()V

    .line 257
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterX:F

    .line 258
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentCenterY:F

    .line 259
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentWidth:F

    .line 260
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRatio:F

    .line 261
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRadius:F

    .line 262
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentAlpha:F

    const/4 p1, 0x0

    .line 264
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAnimsStarted:Z

    .line 265
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestCancel:Z

    .line 266
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRequestEnd:Z

    const p1, 0x3f4ccccd    # 0.8f

    .line 268
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    .line 269
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    .line 270
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    .line 271
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    .line 272
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    const p1, 0x3f7d70a4    # 0.99f

    .line 273
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    const p1, 0x3dcccccd    # 0.1f

    .line 275
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXMinVisibleChange:F

    .line 276
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYMinVisibleChange:F

    .line 277
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthMinVisibleChange:F

    const p1, 0x3a83126f    # 0.001f

    .line 278
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioMinVisibleChange:F

    const/4 p1, 0x1

    .line 279
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    .line 280
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    .line 281
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    const/16 p1, 0x3e9

    .line 283
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-void
.end method

.method public setAlreadyModifyStartRect(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlreadyModifyStartRect:Z

    return-void
.end method

.method public setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 11

    .line 548
    iput-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLastAminType:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimParamByType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RectFSpringAnim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$1;->$SwitchMap$com$miui$home$recents$util$RectFSpringAnim$AnimType:[I

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3ea147ae    # 0.315f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3ecf5c29    # 0.405f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    const v8, 0x3f666666    # 0.9f

    const v9, 0x3e3851ec    # 0.18f

    const v10, 0x3f7d70a4    # 0.99f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 680
    :pswitch_0
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 681
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 682
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 683
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 674
    :pswitch_1
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 675
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 676
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 677
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 666
    :pswitch_2
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3ec18937    # 0.378f

    invoke-direct {p0, p1, v7, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 667
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v7, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 668
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 669
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v1, 0x3eaa7efa    # 0.333f

    invoke-direct {p0, p1, v7, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 670
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 671
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 627
    :pswitch_3
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 628
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 629
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 630
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 631
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 632
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 633
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 634
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 637
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v1, 0x3f6147ae    # 0.88f

    const v3, 0x3eeb851f    # 0.46f

    invoke-direct {p0, p1, v1, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 638
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v1, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 639
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {p0, p1, v1, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 640
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 641
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 642
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 649
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 650
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3f7ae148    # 0.98f

    const v2, 0x3ea3d70a    # 0.32f

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 651
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 652
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3eae147b    # 0.34f

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 653
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p0, p1, v7, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 654
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 655
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3eae147b    # 0.34f

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 657
    :cond_2
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v3, 0x3ec28f5c    # 0.38f

    invoke-direct {p0, p1, v7, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 658
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v7, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 659
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v3, 0x3ed70a3d    # 0.42f

    invoke-direct {p0, p1, v8, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 660
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v7, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 661
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 662
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 619
    :pswitch_4
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 620
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 621
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 622
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v1, 0x3f7851ec    # 0.97f

    invoke-direct {p0, p1, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 623
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 624
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 611
    :pswitch_5
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3e8a3d71    # 0.27f

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 612
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 613
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3eb851ec    # 0.36f

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 614
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 566
    :pswitch_6
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 567
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 568
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 569
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 570
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 571
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3e666666    # 0.225f

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 572
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3e0a3d71    # 0.135f

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 573
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result p1

    const v0, 0x3ea8f5c3    # 0.33f

    if-eqz p1, :cond_6

    .line 574
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result p1

    .line 575
    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    and-int/2addr p1, v1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 578
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p0, p1, v6, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 579
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 580
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 581
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 582
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 583
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto/16 :goto_1

    .line 587
    :cond_5
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 588
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 589
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 590
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 591
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 592
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v6, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto :goto_1

    .line 594
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result p1

    const v2, 0x3e851eb8    # 0.26f

    if-eqz p1, :cond_7

    .line 595
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 596
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 597
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 598
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3e6147ae    # 0.22f

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 599
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 600
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto :goto_1

    .line 602
    :cond_7
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 603
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 604
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 605
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const v0, 0x3e9eb852    # 0.31f

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 606
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, p1, v10, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 607
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v10, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    goto :goto_1

    .line 558
    :pswitch_7
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 559
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 560
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 561
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 562
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    .line 563
    sget-object p1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-direct {p0, p1, v8, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;FF)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCancelFinishAppToHome(Z)V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCancelFinishAppToHome = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RectFSpringAnim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCancelFinishAppToHome:Z

    return-void
.end method

.method public setIconSpan(II)V
    .locals 0

    .line 735
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconXSpan:I

    .line 736
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIconYSpan:I

    return-void
.end method

.method public setIsFromRecent(Z)V
    .locals 0

    .line 1125
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsFromRecent:Z

    return-void
.end method

.method public setIsOpenAnim(Z)V
    .locals 0

    .line 1129
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsOpenAnim:Z

    return-void
.end method

.method public setIsSplitLaunchAnimation(Z)V
    .locals 0

    .line 497
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsSplitLaunchAnimation:Z

    return-void
.end method

.method public setMiniWidth(F)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMinWidth:F

    return-void
.end method

.method public setMoveToTargetRectWhenAnimEnd(Z)V
    .locals 0

    .line 982
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mMoveToTargetRectWhenAnimEnd:Z

    return-void
.end method

.method public setNeedUpdateTask(Z)V
    .locals 0

    .line 1117
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsNeedUpdateTask:Z

    return-void
.end method

.method public setProgressCalculateType(I)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mProgressCalculateType:I

    return-void
.end method

.method public setSkipCallExecuteFinish(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mSkipCallExecuteFinish:Z

    return-void
.end method

.method public setStartAlpha(F)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartAlpha:F

    return-void
.end method

.method public setStartRadius(F)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRadius:F

    return-void
.end method

.method public setStartRect(Landroid/graphics/RectF;)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RectFSpringAnim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 305
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 306
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

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RectFSpringAnim: mStartRect is error   mStartRect="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mDefaultRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public setVelocity(FFFF)V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVelocity leftVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", topVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", widthVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ratioVelocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RectFSpringAnim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 452
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 453
    iput p3, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 454
    iput p4, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    return-void
.end method

.method public setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 393
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    iget-object v1, p1, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;Lcom/miui/home/recents/anim/SpringBundle;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    .line 394
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    iget-object v1, p1, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;Lcom/miui/home/recents/anim/SpringBundle;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    .line 395
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    iget-object v1, p1, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;Lcom/miui/home/recents/anim/SpringBundle;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    .line 396
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    iget-object v1, p1, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;Lcom/miui/home/recents/anim/SpringBundle;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    .line 397
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    iget-object v1, p1, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;Lcom/miui/home/recents/anim/SpringBundle;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusVelocity:F

    .line 399
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    iget-object v1, p1, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaBundle:Lcom/miui/home/recents/anim/SpringBundle;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPropertyVelocity(Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;Lcom/miui/home/recents/anim/SpringBundle;)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    .line 401
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVelocity, mLeftVelocity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLeftVelocity:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mTopVelocity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mTopVelocity:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mWidthVelocity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthVelocity:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mRatioVelocity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioVelocity:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mIsCopyNextState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mIsCopyNextState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mRadiusVelocity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusVelocity:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mAlphaVelocity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaVelocity:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RectFSpringAnim"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public startInGestureThread()V
    .locals 2

    const-string v0, "RectFSpringAnim"

    const-string v1, "startInGestureThread"

    .line 842
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 844
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public startInMainThread()V
    .locals 1

    .line 848
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iput-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    .line 849
    invoke-direct {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startAllAnim()V

    return-void
.end method

.method public updateAllAnimValues(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V
    .locals 9

    .line 886
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v8, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$2vlslA0pjlsYbtCu0J4uSJBKu20;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    invoke-virtual {v0, v8}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 887
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAllAnimEndDirectly(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    :goto_1
    return-void
.end method

.method public updateEndRectF(Landroid/graphics/RectF;)V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mLooperExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$TsMVj98-ZViraUN9snuWHG3K8Ig;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/util/-$$Lambda$RectFSpringAnim$TsMVj98-ZViraUN9snuWHG3K8Ig;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 879
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectFDirectly(Landroid/graphics/RectF;)V

    :goto_1
    return-void
.end method

.method public updateSpringData()V
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterXForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXDamping:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterXStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1134
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectCenterYForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYDamping:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mCenterYStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1135
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectWidthForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthDamping:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mWidthStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1136
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRectRatioForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioDamping:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRatioStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1137
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusDamping:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mRadiusStiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1138
    iget-object v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaForce:Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaDamping:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/util/RectFSpringAnim;->mAlphaStiffness:F

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method
