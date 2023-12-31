.class public Lcom/miui/home/recents/util/PhysicalScroller;
.super Ljava/lang/Object;
.source "PhysicalScroller.java"


# static fields
.field private static final TENSION:D


# instance fields
.field private mCurrentPosition:D

.field private mCurrentVelocity:D

.field private mEndPosition:D

.field private mFriction:D

.field private mIsFinish:Z

.field private mLastTime:J

.field private mMaxEndPosition:D

.field private mMinEndPosition:D

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x402f6a7a217a99d6L    # 15.707963033882077

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/miui/home/recents/util/PhysicalScroller;->TENSION:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDistance(DDD)D
    .locals 0

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    mul-double/2addr p1, p5

    const-wide p3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public static getEndPosition(DD)D
    .locals 8

    .line 77
    invoke-static {}, Lcom/miui/home/recents/util/PhysicalScroller;->getMinVisibleVelocity()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/util/PhysicalScroller;->getEndPosition(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndPosition(DDDD)D
    .locals 4

    .line 152
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    mul-double v0, p2, p4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    neg-double p4, p4

    :cond_1
    sub-double/2addr p2, p4

    const-wide p4, 0x4010cccccccccccdL    # 4.2

    mul-double/2addr p6, p4

    div-double/2addr p2, p6

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static getEndVelocity(DDD)D
    .locals 2

    const-wide v0, -0x3fef333333333333L    # -4.2

    mul-double/2addr p2, v0

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 94
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p4, v0

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static getFriction(DDD)D
    .locals 8

    .line 167
    invoke-static {}, Lcom/miui/home/recents/util/PhysicalScroller;->getMinVisibleVelocity()D

    move-result-wide v6

    move-wide v0, p2

    move-wide v2, p4

    move-wide v4, p0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/util/PhysicalScroller;->getFriction(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getFriction(DDDD)D
    .locals 7

    .line 172
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v0, v0, v2

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    mul-double v3, p6, p4

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    neg-double p6, p6

    :cond_1
    sub-double/2addr p2, p0

    mul-double p0, p4, p2

    cmpg-double p0, p0, v5

    if-gtz p0, :cond_2

    return-wide v1

    :cond_2
    sub-double/2addr p4, p6

    const-wide p0, 0x4010cccccccccccdL    # 4.2

    mul-double/2addr p2, p0

    div-double/2addr p4, p2

    return-wide p4
.end method

.method private static getMinVisibleVelocity()D
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    return-wide v0
.end method

.method private getStateName()Ljava/lang/String;
    .locals 1

    .line 68
    iget p0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "fling"

    return-object p0

    :cond_0
    const-string p0, "spring"

    return-object p0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 21

    move-object/from16 v7, p0

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/util/PhysicalScroller;->isFinish()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    .line 107
    iget-wide v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mLastTime:J

    sub-long v8, v2, v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 108
    iput-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mLastTime:J

    .line 110
    iget v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_6

    .line 111
    iget-wide v13, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    .line 112
    iget-wide v11, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mFriction:D

    long-to-double v5, v4

    move-wide v9, v13

    move-wide v15, v13

    move-wide v13, v5

    invoke-static/range {v9 .. v14}, Lcom/miui/home/recents/util/PhysicalScroller;->getEndVelocity(DDD)D

    move-result-wide v9

    iput-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    .line 113
    iget-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {}, Lcom/miui/home/recents/util/PhysicalScroller;->getMinVisibleVelocity()D

    move-result-wide v11

    cmpg-double v0, v9, v11

    if-ltz v0, :cond_5

    iget-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v11, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v0, v9, v2

    if-gez v0, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    iget-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v3, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/PhysicalScroller;->getDistance(DDD)D

    move-result-wide v0

    add-double/2addr v9, v0

    iput-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 120
    iget-wide v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mMaxEndPosition:D

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    :cond_2
    const/4 v0, 0x2

    .line 121
    iput v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    .line 122
    iget-wide v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mMaxEndPosition:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    :goto_0
    iput-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    :cond_4
    return v8

    .line 114
    :cond_5
    :goto_1
    iget-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    iput-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 115
    iput-boolean v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return v1

    .line 126
    :cond_6
    iget-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v11, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    cmpl-double v0, v9, v11

    if-nez v0, :cond_7

    .line 127
    iput-boolean v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return v1

    .line 131
    :cond_7
    iget-wide v13, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    neg-double v1, v13

    const-wide v17, 0x403f6a7a217a99d6L    # 31.415926067764154

    mul-double v1, v1, v17

    .line 132
    sget-wide v17, Lcom/miui/home/recents/util/PhysicalScroller;->TENSION:D

    sub-double v19, v11, v9

    mul-double v17, v17, v19

    add-double v1, v1, v17

    long-to-double v3, v4

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double v17, v3, v5

    mul-double v1, v1, v17

    add-double/2addr v13, v1

    .line 135
    iput-wide v13, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    .line 136
    iget-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    mul-double/2addr v1, v3

    div-double/2addr v1, v5

    add-double/2addr v9, v1

    iput-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 137
    iget-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    sub-double/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_8

    .line 138
    iget-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    iput-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 139
    iput-boolean v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x0

    .line 143
    iget-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v3, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_9

    move v0, v8

    :cond_9
    iput-boolean v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    .line 144
    iget-boolean v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    xor-int/2addr v0, v8

    return v0
.end method

.method public getPosition()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    return-wide v0
.end method

.method public isFinish()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return p0
.end method

.method public startAnim(DDDDD)V
    .locals 13

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v1, p9

    .line 45
    iput-wide v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mMaxEndPosition:D

    move-wide/from16 v1, p7

    .line 46
    iput-wide v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    move-wide/from16 v1, p3

    move-wide v3, p1

    move-wide/from16 v5, p5

    .line 47
    invoke-static/range {v1 .. v6}, Lcom/miui/home/recents/util/PhysicalScroller;->getFriction(DDD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mFriction:D

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    .line 49
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mLastTime:J

    .line 50
    iput-wide v7, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 51
    iput-wide v9, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    .line 52
    iput-wide v11, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    .line 54
    iget-wide v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mFriction:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 55
    iput v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 57
    iput v1, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    .line 59
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnim, startPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", endPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", vel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", minEndPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", maxEndPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/miui/home/recents/util/PhysicalScroller;->mMaxEndPosition:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {p0}, Lcom/miui/home/recents/util/PhysicalScroller;->getStateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HorizontalRecentsScroller"

    .line 59
    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return-void
.end method
