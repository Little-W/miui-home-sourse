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
    .locals 0

    const p0, 0x3f051eb8    # 0.52f

    return p0
.end method

.method public getTaskViewCenterYInWindowFractionForLandscape()F
    .locals 0

    const p0, 0x3ee66666    # 0.45f

    return p0
.end method

.method public getTaskViewScale()F
    .locals 0

    const p0, 0x3f0b4396    # 0.544f

    return p0
.end method

.method public getTaskViewScaleForLandscape()F
    .locals 0

    const p0, 0x3ef5c28f    # 0.48f

    return p0
.end method
