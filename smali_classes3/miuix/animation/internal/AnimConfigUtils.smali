.class public Lmiuix/animation/internal/AnimConfigUtils;
.super Ljava/lang/Object;
.source "AnimConfigUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSpeed(FF)F
    .locals 2

    float-to-double v0, p0

    .line 40
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    float-to-double v0, p1

    .line 42
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    .line 45
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static getDelay(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)J
    .locals 2

    .line 25
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

    .line 16
    iget-object v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    sget-object v1, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eq v0, v1, :cond_0

    .line 17
    iget-object p0, p1, Lmiuix/animation/base/AnimSpecialConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :goto_0
    if-nez p0, :cond_1

    .line 21
    sget-object p0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :cond_1
    return-object p0
.end method

.method static getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F
    .locals 2

    if-eqz p1, :cond_0

    .line 33
    iget v0, p1, Lmiuix/animation/base/AnimSpecialConfig;->fromSpeed:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget p0, p1, Lmiuix/animation/base/AnimSpecialConfig;->fromSpeed:F

    return p0

    .line 36
    :cond_0
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    return p0
.end method

.method static getTintMode(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)I
    .locals 0

    .line 29
    iget p0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    if-eqz p1, :cond_0

    iget p1, p1, Lmiuix/animation/base/AnimSpecialConfig;->tintMode:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
