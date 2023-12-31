.class public Lcom/miui/home/recents/anim/SpringBundle;
.super Ljava/lang/Object;
.source "SpringBundle.java"


# instance fields
.field public mCurrentTime:J

.field public mCurrentValue:F

.field private final mKey:Ljava/lang/String;

.field public mLastTime:J

.field public mLastValue:F

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field private mPendingPosition:F

.field private final mSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field mValue:F

.field mVelocity:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/SpringForce;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 18
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    .line 21
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    .line 23
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMaxValue:F

    .line 24
    iget v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMinValue:F

    const-wide/16 v0, -0x1

    .line 146
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    .line 147
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 148
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    .line 149
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    .line 27
    iput-object p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mKey:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method private isAtEquilibrium(FF)Z
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->isAtEquilibrium(Landroidx/dynamicanimation/animation/SpringForce;FF)Z

    move-result p0

    return p0
.end method

.method private setValue(F)V
    .locals 4

    .line 44
    iget-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    .line 46
    iget-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    .line 48
    :cond_0
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    .line 49
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getNextValue(J)F
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v1

    float-to-double v1, v1

    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    float-to-double v3, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    return p0
.end method

.method public getPropertyVelocity()F
    .locals 5

    .line 159
    iget-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 160
    iget v4, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    sub-float/2addr v4, p0

    sub-long/2addr v2, v0

    long-to-float p0, v2

    div-float/2addr v4, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v4, p0

    return v4

    :cond_0
    const/high16 p0, 0x4f000000

    return p0
.end method

.method public getSpringForce()Landroidx/dynamicanimation/animation/SpringForce;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object p0
.end method

.method public getValue()F
    .locals 0

    .line 40
    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    return p0
.end method

.method public getValueThreshold()F
    .locals 1

    .line 140
    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getVelocity()F
    .locals 0

    .line 136
    iget p0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    return p0
.end method

.method public init()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 152
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastTime:J

    .line 153
    iput-wide v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentTime:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 154
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mLastValue:F

    .line 155
    iput v0, p0, Lcom/miui/home/recents/anim/SpringBundle;->mCurrentValue:F

    return-void
.end method

.method public setMinimumVisibleChange(F)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 125
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    .line 126
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/SpringBundle;->setValueThreshold(F)V

    return-object p0

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStartValue(F)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 0

    .line 117
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mValue:F

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/miui/home/recents/anim/SpringBundle;
    .locals 0

    .line 131
    iput p1, p0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    return-object p0
.end method

.method public setValueThreshold(F)V
    .locals 0

    return-void
.end method

.method public updateValueAndVelocity(JZ)Z
    .locals 17

    move-object/from16 v0, p0

    .line 68
    iget v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 74
    iget-object v3, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v1

    float-to-double v4, v1

    iget v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    float-to-double v6, v1

    const-wide/16 v8, 0x2

    div-long v15, p1, v8

    move-wide v8, v15

    invoke-static/range {v3 .. v9}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object v1

    .line 75
    iget-object v3, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v4, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 76
    iput v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mPendingPosition:F

    .line 80
    iget-object v10, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget v2, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    float-to-double v11, v2

    iget v1, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mVelocity:F

    float-to-double v13, v1

    invoke-static/range {v10 .. v16}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object v1

    .line 81
    iget v2, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    .line 82
    iget v1, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    goto :goto_0

    .line 87
    :cond_0
    iget-object v10, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/SpringBundle;->getValue()F

    move-result v1

    float-to-double v11, v1

    iget v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    float-to-double v13, v1

    move-wide/from16 v15, p1

    invoke-static/range {v10 .. v16}, Lcom/miui/home/launcher/animate/SpringAnimationReflectUtils;->updateValues(Landroidx/dynamicanimation/animation/SpringForce;DDJ)Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;

    move-result-object v1

    .line 88
    iget v2, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mValue:F

    .line 89
    iget v1, v1, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    .line 92
    :goto_0
    iget v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mMinValue:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 93
    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mMaxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 94
    iget v2, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/anim/SpringBundle;->isAtEquilibrium(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setValue(F)V

    const/4 v1, 0x0

    .line 96
    iput v1, v0, Lcom/miui/home/recents/anim/SpringBundle;->mVelocity:F

    const/4 v0, 0x1

    return v0

    .line 99
    :cond_1
    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/SpringBundle;->setValue(F)V

    return p3
.end method
