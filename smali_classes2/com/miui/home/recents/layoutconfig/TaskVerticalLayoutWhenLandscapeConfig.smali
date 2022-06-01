.class public Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;
.super Ljava/lang/Object;
.source "TaskVerticalLayoutWhenLandscapeConfig.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomRatio()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getTopRatio(ZI)F
    .locals 0

    .line 10
    sget-boolean p1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz p1, :cond_1

    .line 11
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p1, :cond_0

    const p1, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_0
    const p1, 0x3ea3d70a    # 0.32f

    :goto_0
    return p1

    .line 13
    :cond_1
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p1, :cond_2

    const p1, -0x435c28f6    # -0.02f

    return p1

    :cond_2
    const p1, 0x3e6147ae    # 0.22f

    return p1
.end method

.method public getVerticalGapFraction()F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method
