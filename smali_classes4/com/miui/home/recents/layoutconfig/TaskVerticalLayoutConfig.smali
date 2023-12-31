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
    .locals 0

    const p0, 0x3ecccccd    # 0.4f

    return p0
.end method

.method public getTopRatio(ZI)F
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x3f19999a    # 0.6f

    return p0

    :cond_0
    const/4 p0, 0x2

    if-gt p2, p0, :cond_1

    const p0, 0x3f1eb852    # 0.62f

    return p0

    .line 15
    :cond_1
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p0, :cond_2

    const p0, 0x3ebf7cee    # 0.374f

    return p0

    :cond_2
    const p0, 0x3f0f5c29    # 0.56f

    return p0
.end method

.method public getVerticalGapFraction()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
