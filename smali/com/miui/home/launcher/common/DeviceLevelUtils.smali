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

.field public static DEFAULT_ANIMATION_RATE_HIGH:I = 0x0

.field public static DEFAULT_ANIMATION_RATE_LOW:I = 0x0

.field public static DEFAULT_ANIMATION_RATE_MIDDLE:I = 0x0

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

.field public static sChangeTaskViewLayerType:Z

.field public static sCurrentAnimationRate:I

.field private static sDefaultAnimationRate:I

.field public static sDeviceLevel:I

.field public static sDeviceLevelFromFolme:I

.field public static sDeviceLevelTransitionAnimRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceLowEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceMiddleEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_MIDDLE_END:I

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceHighEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_HIGH_END:I

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    .line 53
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "4bb6777bb903cae3166e826932f7fe94"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "be8c477aab1c04b4a9b7640633f62bee"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "74c9687238a05332b9c4e1129340f281"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "06cfcadd99933d42bf1f7ba542f799b9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "9c6713ee9b81fc23f9c2ed117f44a471"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "533c5ba8368075db8f6ef201546bd71a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "cd13b6a6af66fb774faa589a9d18f906"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelOfCpuAndGpu()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevel()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelTransitionAnimRatio()F

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    .line 72
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguinpro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 77
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    .line 106
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    .line 108
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "polaris"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "dipper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "equuleus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "perseus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "ursa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "monet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "monetin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "vangogh"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "cezanne"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "atom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "bomb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 170
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_HIGH:I

    const/4 v0, 0x1

    .line 171
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_MIDDLE:I

    const/4 v0, 0x2

    .line 172
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_LOW:I

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDefaultAnimationRate()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDefaultAnimationRate:I

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 231
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    sget-object p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " sDeviceLevel:"

    .line 233
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sDeviceLevelTransitionAnimRatio:"

    .line 234
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    const-string p0, " sChangeTaskViewLayerType:"

    .line 235
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    .line 236
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getBuildDeviceHighEnd()I
    .locals 3

    .line 46
    const-class v0, Lmiui/os/Build;

    const-string v1, "DEVICE_HIGH_END"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 47
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

    .line 36
    const-class v0, Lmiui/os/Build;

    const-string v1, "DEVICE_LOW_END"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 37
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

    .line 41
    const-class v0, Lmiui/os/Build;

    const-string v1, "DEVICE_MIDDLE_END"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static getDefaultAnimationRate()I
    .locals 1

    .line 177
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_LOW:I

    return v0

    .line 179
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_HIGH:I

    return v0

    .line 182
    :cond_1
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_MIDDLE:I

    return v0
.end method

.method public static getDeviceLevel()I
    .locals 5

    .line 80
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    return v0

    .line 83
    :cond_0
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "getDeviceLevelForAnimation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 85
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

    .line 89
    sget v0, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v1, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0, v1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    move-result v0

    .line 90
    sget v1, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v2, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    invoke-static {v1, v2}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    move-result v1

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevelTransitionAnimRatio()F
    .locals 1

    .line 136
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

    .line 222
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setDefaultAnimationRate(Landroid/content/Context;)V

    .line 223
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->updateAnimationRate(Landroid/content/Context;)I

    return-void
.end method

.method public static isHideStatusBarWhenEnterRecents()Z
    .locals 1

    .line 154
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
    .locals 2

    .line 210
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_HIGH:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHighLevelDeviceFromFolme()Z
    .locals 2

    .line 103

    const/4 v0, 0x1

    return v0
.end method

.method public static isLowAnimationRate()Z
    .locals 2

    .line 218
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE_LOW:I

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

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public static isLowLevelDeviceFromFolme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isLowLevelOrLiteDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMiddleLevelDeviceFromFolme()Z
    .locals 2

    .line 99
    const/4 v1, 0x0

    return v1
.end method

.method public static isUseSimpleAnim()Z
    .locals 2

    .line 123

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$showStatusBar$0(Lcom/miui/home/launcher/Launcher;JZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 161
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->showStatusBarDelay(ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setAnimationRate(Landroid/content/Context;I)V
    .locals 1

    .line 196
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    if-eq v0, p1, :cond_0

    .line 197
    sput p1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_animation_rate"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private static setDefaultAnimationRate(Landroid/content/Context;)V
    .locals 3

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_animation_rate"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_animation_rate"

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDefaultAnimationRate:I

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 1

    .line 144
    sget-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 150
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V
    .locals 2

    .line 158
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$PdIV6JUGx1L_P39as5j40-CGgsQ;-><init>(Lcom/miui/home/launcher/Launcher;JZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static supportSetAnimationRate()Z
    .locals 1

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public static updateAnimationRate(Landroid/content/Context;)I
    .locals 2

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_home_animation_rate"

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDefaultAnimationRate:I

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    .line 206
    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    return p0
.end method
