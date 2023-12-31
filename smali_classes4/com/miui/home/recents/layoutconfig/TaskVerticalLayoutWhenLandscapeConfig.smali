.class public Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutWhenLandscapeConfig;
.super Ljava/lang/Object;
.source "TaskVerticalLayoutWhenLandscapeConfig.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    .line 11
    sget-boolean p0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz p0, :cond_1

    .line 12
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p0, :cond_0

    const p0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const p0, 0x3e947ae1    # 0.29f

    :goto_0
    return p0

    .line 14
    :cond_1
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p0, :cond_2

    .line 15
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result p0

    if-nez p0, :cond_2

    const p0, -0x435c28f6    # -0.02f

    return p0

    :cond_2
    const p0, 0x3e6147ae    # 0.22f

    return p0
.end method

.method public getVerticalGapFraction()F
    .locals 0

    const p0, 0x3f4ccccd    # 0.8f

    return p0
.end method
