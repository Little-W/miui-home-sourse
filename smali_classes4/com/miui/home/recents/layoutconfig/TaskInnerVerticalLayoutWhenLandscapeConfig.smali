.class public Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutWhenLandscapeConfig;
.super Ljava/lang/Object;
.source "TaskInnerVerticalLayoutWhenLandscapeConfig.java"

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
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getTopRatio(ZI)F
    .locals 0

    const p0, 0x3f018937    # 0.506f

    return p0
.end method

.method public getVerticalGapFraction()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
