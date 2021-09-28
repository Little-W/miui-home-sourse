.class Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static DECELERATION_RATE:F

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:D

.field private mCurrentPosition:D

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:D

.field private mFinished:Z

.field private mFlingFriction:F

.field private mLastStep:Z

.field private mOriginStart:D

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringOperator:Lmiuix/animation/physics/SpringOperator;

.field private mSpringParams:[D

.field private mStart:D

.field private mStartTime:J

.field private mState:I

.field private mVelocity:D


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 623
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    .line 631
    new-array v1, v0, [F

    sput-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 632
    new-array v0, v0, [F

    sput-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_4

    int-to-float v3, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 659
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_2

    .line 663
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    move v3, v4

    :goto_2
    sub-float v6, v3, v2

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 671
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    .line 675
    sget-object v3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const v7, 0x3e333333    # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_1
    move v2, v6

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 677
    :cond_4
    sget-object v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 685
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    .line 688
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return-void
.end method

.method static synthetic access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z
    .locals 0

    .line 573
    iget-boolean p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-wide v0
.end method

.method static synthetic access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-wide v0
.end method

.method static synthetic access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-wide v0
.end method

.method static synthetic access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-wide v0
.end method

.method static synthetic access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    .line 573
    iget p0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    .line 573
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method private adjustDuration(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 712
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 717
    sget-object p2, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    .line 718
    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    .line 720
    iget p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    .line 886
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float p3, p3

    mul-float/2addr p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 889
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 890
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    .line 891
    iget p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 892
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 891
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 893
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double p2, p2

    .line 894
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 895
    iget p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    int-to-double p1, p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    return-void
.end method

.method private static getDeceleration(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    .line 868
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .line 872
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 873
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 874
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    .line 879
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 880
    sget p1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 881
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private onEdgeReached()V
    .locals 7

    .line 941
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v2, v0

    double-to-float v0, v0

    mul-float/2addr v2, v0

    .line 942
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    .line 943
    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 945
    iget v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    neg-float v0, v3

    mul-float/2addr v0, v2

    int-to-float v2, v4

    mul-float/2addr v2, v1

    div-float/2addr v0, v2

    .line 947
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    int-to-float v0, v4

    :cond_0
    float-to-int v1, v0

    .line 951
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v1, 0x2

    .line 952
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 953
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iget-wide v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    float-to-int v0, v0

    int-to-double v3, v0

    add-double/2addr v1, v3

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 954
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    mul-double/2addr v2, v0

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    double-to-int v0, v2

    neg-int v0, v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 10

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    const-string p1, "OverScroller"

    const-string p2, "startAfterEdge called from a valid position"

    .line 906
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le p1, p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    move v3, p3

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    sub-int v4, p1, v3

    mul-int v5, v4, p4

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 916
    invoke-direct {p0, p1, v3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 918
    :cond_4
    invoke-direct {p0, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 919
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    if-eqz v2, :cond_5

    move v7, p2

    goto :goto_3

    :cond_5
    move v7, p1

    :goto_3
    if-eqz v2, :cond_6

    move v8, p1

    goto :goto_4

    :cond_6
    move v8, p3

    .line 920
    :goto_4
    iget v9, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 922
    :cond_7
    invoke-direct {p0, p1, v3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 899
    :goto_0
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 900
    invoke-direct {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 901
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .locals 2

    const/4 p3, 0x0

    .line 819
    iput-boolean p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 p3, 0x1

    .line 820
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    int-to-double v0, p1

    .line 821
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    int-to-double v0, p2

    .line 822
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    sub-int/2addr p1, p2

    .line 824
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    int-to-double p2, p2

    .line 826
    iput-wide p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 827
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    mul-double/2addr p1, v0

    .line 828
    iget p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method computeScrollOffset()Z
    .locals 20

    move-object/from16 v0, p0

    .line 751
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 754
    :cond_0
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 755
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 756
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return v3

    .line 759
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 760
    iget-wide v6, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v6, v4, v6

    long-to-float v1, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    const-wide v8, 0x3f90624de0000000L    # 0.01600000075995922

    .line 761
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v1, v6, v10

    if-nez v1, :cond_2

    move-wide v6, v8

    .line 763
    :cond_2
    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 764
    iget-object v10, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    iget-wide v11, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    aget-wide v13, v1, v2

    aget-wide v15, v1, v3

    const/4 v1, 0x2

    new-array v1, v1, [D

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    aput-wide v4, v1, v2

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    aput-wide v4, v1, v3

    move-wide/from16 v17, v6

    move-object/from16 v19, v1

    invoke-virtual/range {v10 .. v19}, Lmiuix/animation/physics/SpringOperator;->updateVelocity(DDDD[D)D

    move-result-wide v1

    .line 765
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    iput-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 766
    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 767
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    invoke-virtual {v0, v1, v2, v4, v5}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->isAtEquilibrium(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 768
    iput-boolean v3, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    goto :goto_0

    .line 770
    :cond_3
    iget-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    iput-wide v1, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    :goto_0
    return v3

    :cond_4
    :goto_1
    return v2
.end method

.method continueWhenFinished()Z
    .locals 6

    .line 958
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 975
    :pswitch_0
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 976
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    double-to-int v0, v2

    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int v2, v2

    invoke-direct {p0, v0, v2, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :pswitch_1
    return v1

    .line 961
    :pswitch_2
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    .line 963
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 965
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 966
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-int v0, v0

    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 967
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 968
    invoke-direct {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    :cond_0
    return v1

    .line 982
    :goto_0
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method finish()V
    .locals 2

    .line 780
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    const/4 v0, 0x1

    .line 784
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .locals 4

    .line 832
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 p5, 0x0

    .line 833
    iput-boolean p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v0, p2

    .line 834
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 835
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 836
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double v0, p1

    .line 837
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    if-gt p1, p4, :cond_4

    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    .line 848
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput p5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 849
    invoke-direct {p0, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    :cond_1
    int-to-float p2, p2

    .line 852
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 853
    iget p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    int-to-double p1, p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 856
    iget-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    int-to-double v0, p3

    cmpg-double p5, p1, v0

    if-gez p5, :cond_2

    .line 857
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int p5, v2

    double-to-int p1, p1

    invoke-direct {p0, p5, p1, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 858
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 861
    :cond_2
    iget-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    int-to-double v0, p4

    cmpl-double p3, p1, v0

    if-lez p3, :cond_3

    .line 862
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int p3, v2

    double-to-int p1, p1

    invoke-direct {p0, p3, p1, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 863
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    :cond_3
    return-void

    .line 840
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method final getCurrVelocity()F
    .locals 2

    .line 1068
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-float v0, v0

    return v0
.end method

.method final getCurrentPosition()I
    .locals 2

    .line 1060
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    double-to-int v0, v0

    return v0
.end method

.method final getFinal()I
    .locals 2

    .line 1084
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    double-to-int v0, v0

    return v0
.end method

.method final getStart()I
    .locals 2

    .line 1076
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    double-to-int v0, v0

    return v0
.end method

.method final getState()I
    .locals 1

    .line 1100
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method isAtEquilibrium(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    .line 776
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final isFinished()Z
    .locals 1

    .line 1052
    iget-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 2

    .line 929
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 930
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 931
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 934
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    double-to-int p3, v0

    invoke-direct {p0, p1, p2, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_0
    return-void
.end method

.method final setCurrVelocity(F)V
    .locals 2

    float-to-double v0, p1

    .line 1072
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    return-void
.end method

.method final setCurrentPosition(I)V
    .locals 2

    int-to-double v0, p1

    .line 1064
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method

.method final setDuration(I)V
    .locals 0

    .line 1096
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method final setFinal(I)V
    .locals 2

    int-to-double v0, p1

    .line 1088
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    return-void
.end method

.method setFinalPosition(I)V
    .locals 2

    int-to-double v0, p1

    .line 788
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    const/4 p1, 0x0

    .line 789
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method final setFinished(Z)V
    .locals 0

    .line 1056
    iput-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method final setStart(I)V
    .locals 2

    int-to-double v0, p1

    .line 1080
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    return-void
.end method

.method final setStartTime(J)V
    .locals 0

    .line 1112
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-void
.end method

.method final setState(I)V
    .locals 0

    .line 1104
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    return-void
.end method

.method springback(III)Z
    .locals 3

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v1, p1

    .line 802
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    const-wide/16 v1, 0x0

    .line 803
    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    .line 805
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/4 v1, 0x0

    .line 806
    iput v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_0

    .line 809
    invoke-direct {p0, p1, p2, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    .line 811
    invoke-direct {p0, p1, p3, v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 814
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method startScroll(III)V
    .locals 2

    const/4 v0, 0x0

    .line 725
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    int-to-double v0, p1

    .line 727
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 728
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 730
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 731
    iput p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 734
    iput p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    const-wide/16 p1, 0x0

    .line 735
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    return-void
.end method

.method startScrollByFling(FII)V
    .locals 2

    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 740
    iput-boolean v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mLastStep:Z

    float-to-double v0, p1

    .line 741
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOriginStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 742
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 743
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    int-to-double p1, p3

    .line 744
    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iput-wide p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 745
    new-instance p1, Lmiuix/animation/physics/SpringOperator;

    invoke-direct {p1}, Lmiuix/animation/physics/SpringOperator;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    const/4 p1, 0x2

    .line 746
    new-array p2, p1, [D

    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    .line 747
    iget-object p2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringOperator:Lmiuix/animation/physics/SpringOperator;

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iget-object p3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSpringParams:[D

    invoke-virtual {p2, p1, p3}, Lmiuix/animation/physics/SpringOperator;->getParameters([F[D)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method update()Z
    .locals 9

    .line 992
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 993
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 997
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v0, :cond_0

    move v3, v4

    :cond_0
    return v3

    .line 999
    :cond_1
    iget v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_2

    return v3

    :cond_2
    const-wide/16 v5, 0x0

    .line 1004
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v8, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    long-to-float v0, v0

    div-float/2addr v0, v7

    .line 1026
    iget-wide v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v5, v3, v0

    float-to-double v5, v5

    add-double/2addr v5, v1

    iput-wide v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    float-to-double v5, v0

    mul-double/2addr v1, v5

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v8

    float-to-double v5, v3

    add-double/2addr v5, v1

    goto :goto_0

    :pswitch_1
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    .line 1034
    iget-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mVelocity:D

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 1035
    iget v3, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v3

    mul-float/2addr v5, v2

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v1

    mul-float/2addr v8, v0

    mul-float/2addr v8, v1

    sub-float/2addr v6, v8

    mul-float/2addr v5, v6

    float-to-double v5, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v2, v0

    float-to-double v0, v2

    .line 1036
    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    goto :goto_0

    :pswitch_2
    long-to-float v0, v0

    .line 1006
    iget v1, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-ge v2, v6, :cond_3

    int-to-float v3, v2

    div-float/2addr v3, v1

    add-int/lit8 v5, v2, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 1013
    sget-object v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v1, v2

    .line 1014
    aget v1, v1, v5

    sub-float/2addr v1, v2

    sub-float/2addr v6, v3

    div-float v5, v1, v6

    sub-float/2addr v0, v3

    mul-float/2addr v0, v5

    add-float v3, v2, v0

    .line 1019
    :cond_3
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v1, v0

    mul-float/2addr v3, v1

    float-to-double v1, v3

    int-to-float v0, v0

    mul-float/2addr v5, v0

    .line 1020
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v0, v0

    div-float/2addr v5, v0

    mul-float/2addr v5, v7

    float-to-double v5, v5

    iput-wide v5, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    move-wide v5, v1

    .line 1041
    :goto_0
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 6

    .line 695
    iget-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    float-to-double v2, p1

    iget-wide v4, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    return-void
.end method
