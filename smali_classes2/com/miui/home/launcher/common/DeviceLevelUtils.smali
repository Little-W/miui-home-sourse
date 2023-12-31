.class public Lcom/miui/home/launcher/common/DeviceLevelUtils;
.super Ljava/lang/Object;
.source "DeviceLevelUtils.java"


# static fields
.field public static final BUILD_DEVICE_HIGH_END:I

.field public static final BUILD_DEVICE_LOW_END:I

.field public static final BUILD_DEVICE_MIDDLE_END:I

.field public static final CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ANIMATION_RATE:I

.field public static DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TAG:Ljava/lang/String; = "DeviceLevelUtils"

.field public static sAnimationRateUpdated:Z

.field public static sChangeTaskViewLayerType:Z

.field public static sCpuLevel:I

.field public static sCurrentAnimationRate:I

.field public static sDeviceLevel:I

.field public static sDeviceLevelFromFolme:I

.field public static sDeviceLevelTransitionAnimRatio:F

.field public static sGpuLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceLowEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceMiddleEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_MIDDLE_END:I

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceHighEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_HIGH_END:I

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    .line 55
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "4bb6777bb903cae3166e826932f7fe94"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "be8c477aab1c04b4a9b7640633f62bee"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "74c9687238a05332b9c4e1129340f281"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "06cfcadd99933d42bf1f7ba542f799b9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "9c6713ee9b81fc23f9c2ed117f44a471"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "533c5ba8368075db8f6ef201546bd71a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "cd13b6a6af66fb774faa589a9d18f906"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    .line 68
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    .line 69
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelOfCpuAndGpu()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevel()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelTransitionAnimRatio()F

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    .line 76
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguinpro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 81
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    .line 116
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    .line 118
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "polaris"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "dipper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "equuleus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "perseus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "ursa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "monet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "monetin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "vangogh"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "cezanne"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "atom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "bomb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "duchamp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDefaultAnimationRate()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    const/4 v0, 0x0

    .line 187
    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    return-void
.end method

.method private static animationRateUpdated(Landroid/content/Context;)V
    .locals 1

    .line 220
    sget-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 221
    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    .line 222
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$kWLR6ghsRH6CvtfBui2e6lfQHr4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$kWLR6ghsRH6CvtfBui2e6lfQHr4;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 261
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    sget-object p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " sDeviceLevel:"

    .line 263
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sDeviceLevelTransitionAnimRatio:"

    .line 264
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    const-string p0, " sChangeTaskViewLayerType:"

    .line 265
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, " sCpuLevel:"

    .line 266
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sGpuLevel:"

    .line 267
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sDeviceLevelFromFolme:"

    .line 268
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getBuildDeviceHighEnd()I
    .locals 3

    .line 48
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "DEVICE_HIGH_END"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static getBuildDeviceLowEnd()I
    .locals 3

    .line 38
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "DEVICE_LOW_END"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBuildDeviceMiddleEnd()I
    .locals 3

    .line 43
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "DEVICE_MIDDLE_END"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static getDefaultAnimationRate()I
    .locals 2

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 192
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDeviceLevel()I
    .locals 5

    .line 84
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    return v0

    .line 87
    :cond_0
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getDeviceLevelForAnimation"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static getDeviceLevelOfCpuAndGpu()I
    .locals 3

    .line 93
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "viva"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vida"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v1, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0, v1}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    .line 98
    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v1, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    invoke-static {v0, v1}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 94
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    .line 95
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    .line 100
    :goto_1
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceLevelOfCpuAndGpu: cpuLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  gpuLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevelTransitionAnimRatio()F
    .locals 1

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 251
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setDefaultAnimationRate(Landroid/content/Context;)V

    .line 252
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->updateAnimationRate(Landroid/content/Context;)I

    .line 253
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setAnimationRateUpdatedFromSharedPreference(Landroid/content/Context;)V

    return-void
.end method

.method public static isHideStatusBarWhenEnterRecents()Z
    .locals 1

    .line 166
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHighAnimationRate()Z
    .locals 1

    .line 239
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHighLevelDeviceFromFolme()Z
    .locals 2

    .line 113
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowAnimationRate()Z
    .locals 2

    .line 247
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowLevelDevice()Z
    .locals 2

    .line 140
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowLevelDeviceFromFolme()Z
    .locals 1

    .line 105
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowLevelOrLiteDevice()Z
    .locals 1

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMiddleLevelDeviceFromFolme()Z
    .locals 2

    .line 109
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isUseSimpleAnim()Z
    .locals 2

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isMiddleLevelDeviceFromFolme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$animationRateUpdated$1(Landroid/content/Context;)V
    .locals 2

    const-string v0, "animation_rate_updated"

    const/4 v1, 0x1

    .line 222
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$showStatusBar$0(Lcom/miui/home/launcher/Launcher;JZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 173
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->showStatusBarDelay(ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static needMamlProgressIcon()Z
    .locals 1

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->needRemoveDownloadAnimationDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRemoveDownloadAnimationDevice()Z
    .locals 2

    .line 277
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mondrian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "socrates"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "marble"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4408ffb790dababd6cbe8fd2a2f75ff3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "138860286d0c4952ead13af8fb49c230"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static needShieldHideSwitchDevice()Z
    .locals 2

    .line 285
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mondrian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ruby"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "redwood"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c66ef8e10868698335d019edbc82de9b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "550a6aee24871befa055ffd52f92eba9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "d76169a6ee7af8a191e04d4745fdfe1b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "f1405b8e61bcea02c60bb1d376b3e57b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4408ffb790dababd6cbe8fd2a2f75ff3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "900bc885d7553375aec470198a9514f3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "379683511189a8ac385bd67bc3de2497"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setAnimationRate(Landroid/content/Context;I)V
    .locals 2

    .line 210
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    if-eq v0, p1, :cond_0

    .line 211
    sput p1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_animation_rate"

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAnimationRate(I)V

    .line 215
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->animationRateUpdated(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static setAnimationRateUpdatedFromSharedPreference(Landroid/content/Context;)V
    .locals 2

    const-string v0, "animation_rate_updated"

    const/4 v1, 0x0

    .line 235
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    return-void
.end method

.method private static setDefaultAnimationRate(Landroid/content/Context;)V
    .locals 3

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "miui_home_animation_rate"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIsOnUpgradeMiui15()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    invoke-static {p0, v2, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsOnUpgradeMiui15(Z)V

    :cond_1
    return-void
.end method

.method public static setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 1

    .line 156
    sget-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 162
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V
    .locals 2

    .line 170
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;-><init>(Lcom/miui/home/launcher/Launcher;JZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static supportSetAnimationRate()Z
    .locals 1

    .line 257
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static updateAnimationRate(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    .line 228
    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    return p0

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    const-string v1, "miui_home_animation_rate"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    .line 231
    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    return p0
.end method
