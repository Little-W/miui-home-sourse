.class public Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;
.super Ljava/lang/Object;
.source "TaskVerticalLayoutWhenLandscapeConfig.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomRatio()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getPaddingRatio()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopRatio(ZI)F
    .locals 0

    const p1, 0x3e6147ae    # 0.22f

    return p1
.end method

.method public getVerticalGapFraction()F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method
