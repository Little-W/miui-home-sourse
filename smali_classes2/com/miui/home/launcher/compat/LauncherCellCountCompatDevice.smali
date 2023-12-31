.class public abstract Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;
.super Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;
.source "LauncherCellCountCompatDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCellCountXDef(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001d

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountXDefFromDevice(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXDef(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected abstract getCellCountXDefFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountXMax(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b0020

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountXMaxFromDevice(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMax(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected abstract getCellCountXMaxFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountXMin(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b0021

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountXMinFromDevice(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 18
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMin(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected abstract getCellCountXMinFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountYDef(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b0022

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountYDefFromDevice(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYDef(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected abstract getCellCountYDefFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountYMax(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b0023

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountYMaxFromDevice(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMax(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected abstract getCellCountYMaxFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountYMin(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b0024

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountYMinFromDevice(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMin(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected abstract getCellCountYMinFromDevice(Landroid/content/Context;)I
.end method

.method protected abstract getDefaultDensity()I
.end method

.method protected shouldUseDeviceValue(Landroid/content/Context;I)Z
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getDefaultDensity()I

    move-result p0

    if-ne p1, p0, :cond_0

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getThemeValues()Lmiui/content/res/ThemeValues;

    move-result-object p0

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
