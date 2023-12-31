.class public Lcom/miui/home/launcher/compat/LauncherCellCountCompatDeviceFold;
.super Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;
.source "LauncherCellCountCompatDeviceFold.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatDevice;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCellCountXDefFromDevice(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected getCellCountXMaxFromDevice(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected getCellCountXMinFromDevice(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected getCellCountYDefFromDevice(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method protected getCellCountYMaxFromDevice(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method protected getCellCountYMinFromDevice(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method protected getDefaultDensity()I
    .locals 0

    const/16 p0, 0x1b8

    return p0
.end method

.method protected shouldUseDeviceValue(Landroid/content/Context;I)Z
    .locals 0

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_0

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
