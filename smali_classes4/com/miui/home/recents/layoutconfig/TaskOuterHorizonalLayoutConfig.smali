.class public Lcom/miui/home/recents/layoutconfig/TaskOuterHorizonalLayoutConfig;
.super Ljava/lang/Object;
.source "TaskOuterHorizonalLayoutConfig.java"

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

    const p0, 0x3c83126f    # 0.016f

    goto :goto_0

    :cond_0
    const p0, 0x3d1ba5e3    # 0.038f

    :goto_0
    return p0
.end method

.method public getLeftPaddingInWindowFraction(Z)F
    .locals 0

    const p0, 0x3e6353f8    # 0.222f

    return p0
.end method

.method public getRightPaddingInWindowFraction(Z)F
    .locals 0

    const p0, 0x3e6353f8    # 0.222f

    return p0
.end method

.method public getTaskViewCenterYInWindowFraction()F
    .locals 0

    const p0, 0x3f076c8b    # 0.529f

    return p0
.end method

.method public getTaskViewCenterYInWindowFractionForLandscape()F
    .locals 0

    const p0, 0x3ee7ef9e    # 0.453f

    return p0
.end method

.method public getTaskViewScale()F
    .locals 0

    const p0, 0x3f0e5604    # 0.556f

    return p0
.end method

.method public getTaskViewScaleForLandscape()F
    .locals 0

    const p0, 0x3f0e5604    # 0.556f

    return p0
.end method
