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

.method private shouldUseDeviceValue(Landroid/content/Context;I)Z
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getDefaultDensity()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getThemeValues()Lmiui/content/res/ThemeValues;

    move-result-object p1

    iget-object p1, p1, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getCellCountXDef(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001a

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountXDefFromDevice(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXDef(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method protected abstract getCellCountXDefFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountXMax(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001b

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountXMaxFromDevice(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMax(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method protected abstract getCellCountXMaxFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountXMin(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001c

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountXMinFromDevice(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 18
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountXMin(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method protected abstract getCellCountXMinFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountYDef(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001d

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountYDefFromDevice(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYDef(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method protected abstract getCellCountYDefFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountYMax(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001e

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountYMaxFromDevice(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMax(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method protected abstract getCellCountYMaxFromDevice(Landroid/content/Context;)I
.end method

.method public final getCellCountYMin(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001f

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->shouldUseDeviceValue(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;->getCellCountYMinFromDevice(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;->getCellCountYMin(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method protected abstract getCellCountYMinFromDevice(Landroid/content/Context;)I
.end method

.method protected abstract getDefaultDensity()I
.end method
