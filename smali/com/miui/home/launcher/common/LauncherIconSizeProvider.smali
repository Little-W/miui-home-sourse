.class public Lcom/miui/home/launcher/common/LauncherIconSizeProvider;
.super Lcom/miui/home/launcher/common/ScaleIconSizeProvider;
.source "LauncherIconSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/LauncherIconSizeProvider$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/LauncherIconSizeProvider$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;
    .locals 1

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider$Holder;->access$100()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->setScale(F)V

    return-void
.end method

.method public getHotSeatHeightScaleWithoutSearchBar()F
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v0

    return v0
.end method

.method public getHotSeatMarginScale()F
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v0

    return v0
.end method

.method public getSearchBarMarginScale()F
    .locals 3

    .line 19
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v0

    return v0
.end method
