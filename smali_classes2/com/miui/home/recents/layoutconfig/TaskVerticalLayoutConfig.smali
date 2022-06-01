.class public Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutConfig;
.super Ljava/lang/Object;
.source "TaskVerticalLayoutConfig.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomRatio()F
    .locals 1

    const v0, 0x3ecccccd    # 0.4f

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

    return p1

    .line 15
    :cond_1
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p1, :cond_2

    const p1, 0x3ebf7cee    # 0.374f

    return p1

    :cond_2
    const p1, 0x3f0ccccd    # 0.55f

    return p1
.end method

.method public getVerticalGapFraction()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
