.class public Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;
.super Ljava/lang/Object;
.source "TaskVerticalLayoutConfig.java"

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

    const v0, 0x3ecccccd    # 0.4f

    return v0
.end method

.method public getPaddingRatio()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopRatio(ZI)F
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x3f19999a    # 0.6f

    return p1

    :cond_0
    const/4 p1, 0x2

    if-gt p2, p1, :cond_1

    const p1, 0x3f1eb852    # 0.62f

    goto :goto_0

    :cond_1
    const p1, 0x3f0ccccd    # 0.55f

    :goto_0
    return p1
.end method

.method public getVerticalGapFraction()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
