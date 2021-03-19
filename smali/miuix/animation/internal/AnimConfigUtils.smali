.class Lmiuix/animation/internal/AnimConfigUtils;
.super Ljava/lang/Object;
.source "AnimConfigUtils.java"


# direct methods
.method static getDelay(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    if-eqz p1, :cond_0

    iget-wide p0, p1, Lmiuix/animation/base/AnimSpecialConfig;->delay:J

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static getEase(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 2

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    sget-object v1, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eq v0, v1, :cond_0

    .line 14
    iget-object p0, p1, Lmiuix/animation/base/AnimSpecialConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :goto_0
    if-nez p0, :cond_1

    .line 18
    sget-object p0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :cond_1
    return-object p0
.end method

.method static getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F
    .locals 2

    if-eqz p1, :cond_0

    .line 30
    iget v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->fromSpeed:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 31
    iget p0, p1, Lmiuix/animation/base/AnimSpecialConfig;->fromSpeed:F

    return p0

    .line 33
    :cond_0
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    return p0
.end method

.method static getTintMode(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)I
    .locals 0

    .line 26
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    if-eqz p1, :cond_0

    iget p1, p1, Lmiuix/animation/base/AnimSpecialConfig;->tintMode:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
