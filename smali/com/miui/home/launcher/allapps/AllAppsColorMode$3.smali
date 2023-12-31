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
    .locals 0

    const p0, 0x7f080202

    .line 70
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110491

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isLightMode(I)Z
    .locals 0

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->getInstance()Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->isDark()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    return p0
.end method
