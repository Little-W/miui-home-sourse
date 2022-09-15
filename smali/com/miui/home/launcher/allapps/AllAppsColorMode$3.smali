.class final enum Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;
.super Lcom/miui/home/launcher/allapps/AllAppsColorMode;
.source "AllAppsColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;-><init>(Ljava/lang/String;ILcom/miui/home/launcher/allapps/AllAppsColorMode$1;)V

    return-void
.end method


# virtual methods
.method public getPreviewBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x7f0801e2

    .line 75
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11046a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLightMode(I)Z
    .locals 1

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    return p1

    .line 63
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->getInstance()Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->isDark()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    :goto_2
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    return p1
.end method
