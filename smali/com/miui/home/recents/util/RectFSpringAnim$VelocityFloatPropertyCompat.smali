.class Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VelocityFloatPropertyCompat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RectFSpringAnim:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "TRectFSpringAnim;>;"
    }
.end annotation


# instance fields
.field public mCurrentTime:J

.field public mCurrentValue:F

.field public mLastTime:J

.field public mLastValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 160
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 154
    iput-wide v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mLastTime:J

    .line 155
    iput-wide v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentTime:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 156
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mLastValue:F

    .line 157
    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentValue:F

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRectFSpringAnim;)F"
        }
    .end annotation

    .line 165
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentValue:F

    return p1
.end method

.method public getVelocity()F
    .locals 6

    .line 182
    iget-wide v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mLastTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentTime:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 183
    iget v4, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentValue:F

    iget v5, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mLastValue:F

    sub-float/2addr v4, v5

    sub-long/2addr v2, v0

    long-to-float v0, v2

    div-float/2addr v4, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v0

    return v4

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRectFSpringAnim;F)V"
        }
    .end annotation

    .line 170
    iget-wide v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentTime:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 171
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentValue:F

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentTime:J

    goto :goto_0

    .line 174
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentValue:F

    iput p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mLastValue:F

    .line 175
    iput-wide v0, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mLastTime:J

    .line 176
    iput p2, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentValue:F

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->mCurrentTime:J

    :goto_0
    return-void
.end method
