.class public Lcom/miui/home/recents/layoutconfig/TaskHorizonalLayoutConfig;
.super Ljava/lang/Object;
.source "TaskHorizonalLayoutConfig.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal$IHorizontalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHorizontalGapInWindowFraction(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x3c449ba6    # 0.012f

    goto :goto_0

    :cond_0
    const p0, 0x3cd4fdf4    # 0.026f

    :goto_0
    return p0
.end method

.method public getLeftPaddingInWindowFraction(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x3e851eb8    # 0.26f

    goto :goto_0

    :cond_0
    const p0, 0x3e6978d5    # 0.228f

    :goto_0
    return p0
.end method

.method public getRightPaddingInWindowFraction(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x3e851eb8    # 0.26f

    goto :goto_0

    :cond_0
    const p0, 0x3e6978d5    # 0.228f

    :goto_0
    return p0
.end method

.method public getTaskViewCenterYInWindowFraction()F
    .locals 1

    const-string v0, "task_bottom_margin"

    const/4 p0, 0x3

    invoke-static {v0, p0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    const/4 p0, 0x0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_3

    const/4 p0, 0x4

    if-eq v0, p0, :cond_4

    const/4 p0, 0x5

    if-eq v0, p0, :cond_5

    const/4 p0, 0x6

    if-eq v0, p0, :cond_6

    const/4 p0, 0x7

    if-eq v0, p0, :cond_7

    :cond_0
    const v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const v0, 0x3f07ae14    # 0.53f

    goto :goto_0

    :cond_2
    const v0, 0x3f051eb8    # 0.52f

    goto :goto_0

    :cond_3
    const v0, 0x3f028f5c    # 0.51f

    goto :goto_0

    :cond_4
    const v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_5
    const v0, 0x3efae148    # 0.49f

    goto :goto_0

    :cond_6
    const v0, 0x3ef5c28f    # 0.48f

    goto :goto_0

    :cond_7
    const v0, 0x3ef0a3d7    # 0.47f

    goto :goto_0

    :goto_0
    return v0
.end method

.method public getTaskViewCenterYInWindowFractionForLandscape()F
    .locals 0

    const p0, 0x3ee66666    # 0.45f

    return p0
.end method

.method public getTaskViewScale()F
    .locals 3

    const-string/jumbo v2, "ios_recent"

    invoke-static {v2}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const v0, 0x3f0b4396    # 0.544f

    goto :goto_0

    :cond_0
    const v0, 0x3f180000    # 0.59375f

    const v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getTaskViewScaleForLandscape()F
    .locals 3

    const-string/jumbo v2, "ios_recent"

    invoke-static {v2}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const v0, 0x3ef5c28f    # 0.48f

    goto :goto_0

    :cond_0
    const v0, 0x3f100000    # 0.5625f

    const v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method
