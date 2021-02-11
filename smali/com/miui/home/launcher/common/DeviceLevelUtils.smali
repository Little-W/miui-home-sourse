.class public Lcom/miui/home/launcher/common/DeviceLevelUtils;
.super Ljava/lang/Object;
.source "DeviceLevelUtils.java"


# static fields
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

.field public static TAG:Ljava/lang/String; = "DeviceLevelUtils"

.field public static sChangeTaskViewLayerType:Z

.field public static sDeviceLevel:I

.field public static sDeviceLevelTransitionAnimRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    .line 28
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "laurus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "cannon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "cannong"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevel()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelTransitionAnimRatio()F

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    .line 41
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguinpro"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    sget-object p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " sDeviceLevel:"

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sDeviceLevelTransitionAnimRatio:"

    .line 83
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    const-string p0, " sChangeTaskViewLayerType:"

    .line 84
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    .line 85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getDeviceLevel()I
    .locals 5

    .line 49
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    const-class v0, Lmiui/os/Build;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getDeviceLevelForAnimation"

    const/4 v4, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getDeviceLevelTransitionAnimRatio()F
    .locals 1

    .line 66
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static isLowLevelDevice()Z
    .locals 1

    .line 58
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

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

    .line 62
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

.method public static setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
