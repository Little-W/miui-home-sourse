.class public Lcom/miui/home/launcher/RecentsAndFSGestureUtils;
.super Ljava/lang/Object;
.source "RecentsAndFSGestureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/RecentsAndFSGestureUtils$_lancet;
    }
.end annotation


# static fields
.field private static IS_MIUIHOME_AS_RECENTS_PACKAGE:Z

.field private static final IS_NOT_SUPPORT_GESTURE_V3_DEVICE:Z

.field private static USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isNotSupportGestureV3Device()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_NOT_SUPPORT_GESTURE_V3_DEVICE:Z

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isMiuiHomeAsRecentsPackage()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_MIUIHOME_AS_RECENTS_PACKAGE:Z

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    .line 37
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "pine"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olivelite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olivewood"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v0

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v1

    .line 95
    invoke-static {p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isPkgSupportSmallWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 96
    invoke-static {p0, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskSupportSmallWindow(Landroid/content/Context;I)Z

    move-result p0

    .line 97
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v3

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "RecentsAndFSGestureUtils"

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canTaskEnterSmallWindow, pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", taskId="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDeviceSupportSW="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isInMultiWindowMode="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isPkgSupportSW="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTaskSupportSW="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isInSWMode="

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private static getRecentsPkgName()Ljava/lang/String;
    .locals 6

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, ""

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_recentsComponentName"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "RecentsAndFSGestureUtils"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recents_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getSuggestionList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.util.MiuiMultiWindowUtils"

    .line 143
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    const-string v3, "getFreeformSuggestionList"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    .line 142
    invoke-static {v1, v2, v3, v5, v4}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "RecentsAndFSGestureUtils"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSuggestionList, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    const-string v1, "RecentsAndFSGestureUtils"

    const-string v2, "getFreeformSuggestionList error"

    .line 149
    invoke-static {v1, v2, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static getTaskStackViewLayoutStyle(Landroid/content/Context;)I
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "task_stack_view_layout_style"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static isMiuiHomeAsRecentsPackage()Z
    .locals 2

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "com.miui.home"

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getRecentsPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNotSupportGestureV3Device()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.util.MiuiGestureUtils"

    .line 49
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isNotSupportGestureV3Device"

    .line 50
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 51
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "RecentsAndFSGestureUtils"

    const-string v3, "isNotSupportGestureV3Device"

    .line 53
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static isPkgSupportSmallWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 132
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getSuggestionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 136
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 2

    .line 63
    sget-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_MIUIHOME_AS_RECENTS_PACKAGE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseFsGestureV2Device()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTaskStackLayoutStyleVertical(Landroid/content/Context;)Z
    .locals 0

    .line 128
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTaskSupportSmallWindow(Landroid/content/Context;I)Z
    .locals 7

    const-string v0, "activity"

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTaskResizeableForFreeform"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 119
    invoke-static {v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 118
    invoke-static {v1, p0, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "RecentsAndFSGestureUtils"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTaskSupportSmallWindow, taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private static isUseFsGestureV2Device()Z
    .locals 2

    .line 59
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_NOT_SUPPORT_GESTURE_V3_DEVICE:Z

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

.method public static isUseGestureVersion3(Landroid/content/Context;)Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isUseMiuiHomeAsDefaultHome(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$lockOrUnlockApp$0(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 165
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$lockOrUnlockApp$1(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 1

    .line 167
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p2, "RecentsAndFSGestureUtils"

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lockOrUnlockApp failed, task="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", toLock="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->setLocked(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->onLockedChange()V

    .line 173
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V
    .locals 2

    .line 163
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$X90C8GJqJiUhHwZIuV8lJ20yRUI;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$X90C8GJqJiUhHwZIuV8lJ20yRUI;-><init>(Lcom/android/systemui/shared/recents/model/Task;Z)V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$svboIzN6j1ggf_jPG23ri4XqUoY;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$svboIzN6j1ggf_jPG23ri4XqUoY;-><init>(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static setTaskStackViewLayoutStyle(Landroid/content/Context;I)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "task_stack_view_layout_style"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
