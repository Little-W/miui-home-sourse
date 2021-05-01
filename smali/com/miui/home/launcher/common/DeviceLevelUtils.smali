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

.field public static sDeviceLevel:I

.field public static sDeviceLevelFromFolme:I

.field public static sDeviceLevelTransitionAnimRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceLowEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceMiddleEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_MIDDLE_END:I

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceHighEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_HIGH_END:I

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    .line 50
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "4bb6777bb903cae3166e826932f7fe94"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "be8c477aab1c04b4a9b7640633f62bee"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "74c9687238a05332b9c4e1129340f281"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "06cfcadd99933d42bf1f7ba542f799b9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "9c6713ee9b81fc23f9c2ed117f44a471"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "533c5ba8368075db8f6ef201546bd71a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelOfCpuAndGpu()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevel()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelTransitionAnimRatio()F

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    .line 68
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguinpro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    .line 100
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "polaris"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "dipper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "equuleus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "perseus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "ursa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "monet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "monetin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "vangogh"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "cezanne"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "atom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "bomb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 162
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    sget-object p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " sDeviceLevel:"

    .line 164
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sDeviceLevelTransitionAnimRatio:"

    .line 165
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    const-string p0, " sChangeTaskViewLayerType:"

    .line 166
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    .line 167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getBuildDeviceHighEnd()I
    .locals 3

    .line 43
    const-class v0, Lmiui/os/Build;

    const-string v1, "DEVICE_HIGH_END"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 44
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

    .line 33
    const-class v0, Lmiui/os/Build;

    const-string v1, "DEVICE_LOW_END"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 34
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

    .line 38
    const-class v0, Lmiui/os/Build;

    const-string v1, "DEVICE_MIDDLE_END"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getDeviceLevel()I
    .locals 5

    .line 76
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    return v0

    .line 79
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

    .line 81
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

    .line 85
    sget v0, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v1, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0, v1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    move-result v0

    .line 86
    sget v1, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v2, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    invoke-static {v1, v2}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    move-result v1

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevelTransitionAnimRatio()F
    .locals 1

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f900000    # 1.125f

    return v0

    :cond_0
    const/high16 v0, 0x3f900000    # 1.125f

    return v0
.end method

.method public static isHideStatusBarWhenEnterRecents()Z
    .locals 1

    .line 146
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowLevelDevice()Z
    .locals 2

    .line 120
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

.method private static isLowLevelDeviceFromFolme()Z
    .locals 1

    .line 91
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

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDevice()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

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

.method private static isMiddleLevelDeviceFromFolme()Z
    .locals 2

    .line 95
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

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$showStatusBar$460(Lcom/miui/home/launcher/Launcher;JZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 151
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 153
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->showStatusBarDelay(ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 1

    .line 136
    sget-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 142
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V
    .locals 2

    .line 150
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/miui/home/launcher/common/-$$Lambda$DeviceLevelUtils$k-mR0JroOFAb0SM5EtoZSWlDmns;-><init>(Lcom/miui/home/launcher/Launcher;JZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
