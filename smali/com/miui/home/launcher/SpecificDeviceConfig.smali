.class public Lcom/miui/home/launcher/SpecificDeviceConfig;
.super Ljava/lang/Object;
.source "SpecificDeviceConfig.java"


# static fields
.field private static mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "maguro"

    .line 32
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    goto :goto_0

    :cond_0
    const-string v0, "crespo"

    .line 36
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 43
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v4, v2

    long-to-float v0, v0

    div-float/2addr v4, v0

    const/high16 v0, 0x3f340000    # 0.703125f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_2

    .line 45
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    :cond_2
    return-void
.end method

.method public static isBigScreenLowMemory()Z
    .locals 1

    .line 69
    sget v0, Lcom/miui/home/launcher/SpecificDeviceConfig;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
