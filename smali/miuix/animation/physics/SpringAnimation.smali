.class public final Lmiuix/animation/physics/SpringAnimation;
.super Lmiuix/animation/physics/DynamicAnimation;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/physics/DynamicAnimation<",
        "Lmiuix/animation/physics/SpringAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lmiuix/animation/physics/SpringForce;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 66
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lmiuix/animation/property/FloatProperty<",
            "TK;>;F)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Lmiuix/animation/physics/DynamicAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 66
    iput p1, p0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    .line 112
    new-instance p1, Lmiuix/animation/physics/SpringForce;

    invoke-direct {p1, p3}, Lmiuix/animation/physics/SpringForce;-><init>(F)V

    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-void
.end method

.method private sanityCheck()V
    .locals 4

    .line 202
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v0

    float-to-double v0, v0

    .line 207
    iget v2, p0, Lmiuix/animation/physics/SpringAnimation;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 210
    iget v2, p0, Lmiuix/animation/physics/SpringAnimation;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSpring()Lmiuix/animation/physics/SpringForce;
    .locals 1

    .line 121
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .locals 1

    .line 267
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/physics/SpringForce;->isAtEquilibrium(FF)Z

    move-result p1

    return p1
.end method

.method public setSpring(Lmiuix/animation/physics/SpringForce;)Lmiuix/animation/physics/SpringAnimation;
    .locals 0

    .line 133
    iput-object p1, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    return-object p0
.end method

.method setValueThreshold(F)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 139
    invoke-direct {p0}, Lmiuix/animation/physics/SpringAnimation;->sanityCheck()V

    .line 140
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->getValueThreshold()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/physics/SpringForce;->setValueThreshold(D)V

    .line 141
    invoke-super {p0}, Lmiuix/animation/physics/DynamicAnimation;->start()V

    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 20

    move-object/from16 v0, p0

    .line 220
    iget-boolean v1, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    .line 221
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    .line 222
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v6, v1}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 223
    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 225
    :cond_0
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    .line 226
    iput v4, v0, Lmiuix/animation/physics/SpringAnimation;->mVelocity:F

    .line 227
    iput-boolean v3, v0, Lmiuix/animation/physics/SpringAnimation;->mEndRequested:Z

    return v2

    .line 231
    :cond_1
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 235
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    float-to-double v7, v1

    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mVelocity:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    .line 236
    iget-object v6, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v7, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    invoke-virtual {v6, v7}, Lmiuix/animation/physics/SpringForce;->setFinalPosition(F)Lmiuix/animation/physics/SpringForce;

    .line 237
    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mPendingPosition:F

    .line 239
    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    float-to-double v14, v5

    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    .line 240
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    .line 241
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lmiuix/animation/physics/SpringAnimation;->mVelocity:F

    goto :goto_0

    .line 244
    :cond_2
    iget-object v13, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    float-to-double v14, v1

    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mVelocity:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Lmiuix/animation/physics/SpringForce;->updateValues(DDJ)Lmiuix/animation/physics/DynamicAnimation$MassState;

    move-result-object v1

    .line 245
    iget v5, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mValue:F

    iput v5, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    .line 246
    iget v1, v1, Lmiuix/animation/physics/DynamicAnimation$MassState;->mVelocity:F

    iput v1, v0, Lmiuix/animation/physics/SpringAnimation;->mVelocity:F

    .line 249
    :goto_0
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    iget v5, v0, Lmiuix/animation/physics/SpringAnimation;->mMinValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    .line 250
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    iget v5, v0, Lmiuix/animation/physics/SpringAnimation;->mMaxValue:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    .line 252
    iget v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    iget v5, v0, Lmiuix/animation/physics/SpringAnimation;->mVelocity:F

    invoke-virtual {v0, v1, v5}, Lmiuix/animation/physics/SpringAnimation;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    iget-object v1, v0, Lmiuix/animation/physics/SpringAnimation;->mSpring:Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    move-result v1

    iput v1, v0, Lmiuix/animation/physics/SpringAnimation;->mValue:F

    .line 254
    iput v4, v0, Lmiuix/animation/physics/SpringAnimation;->mVelocity:F

    return v2

    :cond_3
    return v3
.end method
