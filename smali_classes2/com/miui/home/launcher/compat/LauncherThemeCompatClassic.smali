.class public Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;
.super Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;
.source "LauncherThemeCompatClassic.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getFolderPreviewHeight()I
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getFolderPreviewHeight()I

    move-result v0

    const v1, 0x7f0701b7

    .line 34
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x40133333    # 2.3f

    .line 35
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getFolderPreviewItemPadding()I
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getFolderPreviewItemPadding()I

    move-result v0

    const v1, 0x7f0701b8

    .line 43
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    .line 44
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getFolderPreviewWidth()I
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getFolderPreviewWidth()I

    move-result v0

    const v1, 0x7f0701b9

    .line 25
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x40133333    # 2.3f

    .line 26
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public getTitleMarginTop()I
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompatBorderless;->getTitleMarginTop()I

    move-result v0

    const v1, 0x7f070206

    .line 16
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/compat/LauncherThemeCompatClassic;->isThemeOverride(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    .line 17
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method
