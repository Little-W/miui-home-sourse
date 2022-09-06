.class public Lcom/miui/home/launcher/RecentsAndFSGestureUtils;
.super Ljava/lang/Object;
.source "RecentsAndFSGestureUtils.java"


# static fields
.field private static final CAN_ONLY_USE_TASK_ID_TO_DISTINGUISH_SMALL_WINDOW:Z

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

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isNotSupportGestureV3Device()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_NOT_SUPPORT_GESTURE_V3_DEVICE:Z

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isMiuiHomeAsRecentsPackage()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->IS_MIUIHOME_AS_RECENTS_PACKAGE:Z

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canOnlyUseTaskIdToDistinguishSmallWindow()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->CAN_ONLY_USE_TASK_ID_TO_DISTINGUISH_SMALL_WINDOW:Z

    .line 42
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "pine"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olivelite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->USE_FS_GESTURE_V2_DEVICES:Ljava/util/Set;

    const-string v1, "olivewood"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static canOnlyUseTaskIdToDistinguishSmallWindow()Z
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 209
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const-class v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v2

    const-string v2, "android.util.MiuiMultiWindowUtils"

    .line 210
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getFreeformBlackList"

    const-class v5, Ljava/util/List;

    .line 212
    invoke-static {v5, v0}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-static {v2, v4, v5, v0}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static canTaskEnterMiniSmallWindow(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;II)Z
    .locals 1

    .line 160
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;II)Z

    move-result p0

    return p0

    .line 162
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p1, "Now is multi window"

    .line 163
    invoke-static {p2, p3, v0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 166
    :cond_2
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->canEnterMiniSmallWindow()Z

    move-result p4

    if-nez p4, :cond_3

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p1, "Now is showing small window"

    .line 167
    invoke-static {p2, p3, v0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 170
    :cond_3
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskHasMultipleTasks(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p1, "task has multiple tasks"

    .line 171
    invoke-static {p2, p3, v0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 174
    :cond_4
    invoke-static {p0, p2, p3}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->supportEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static canTaskEnterSmallWindow(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;II)Z
    .locals 0

    .line 138
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskHasMultipleTasks(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p1, "task has multiple tasks"

    const/4 p4, 0x0

    .line 139
    invoke-static {p2, p3, p4, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 142
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static canTaskEnterSmallWindow(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;II)Z
    .locals 2

    .line 126
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskHasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p1, "task has multiple tasks"

    .line 127
    invoke-static {p2, p3, v1, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskInWorldCirculate(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p1, "task in world circulate"

    .line 131
    invoke-static {p2, p3, v1, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 134
    :cond_1
    invoke-static {p0, p2, p3, p4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 2

    .line 147
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportMultipleSmallWindows()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p3, "Now is multi window"

    .line 148
    invoke-static {p1, p2, v1, p3}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 152
    :cond_0
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->canEnterSmallWindow(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p0, "RecentsAndFSGestureUtils"

    const-string p3, "Now is showing small window"

    .line 153
    invoke-static {p1, p2, v1, p3}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 156
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->supportEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canTaskEnterSmallWindow, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", taskId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", result="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", because "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canTaskEnterWorldcirculate(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;I)Z
    .locals 2

    .line 181
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskHasMultipleTasks(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "RecentsAndFSGestureUtils"

    const-string v0, "task has multiple tasks"

    const/4 v1, 0x0

    .line 182
    invoke-static {p1, p2, v1, v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterWorldcirculateLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static canTaskEnterWorldcirculateLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canTaskEnterWorldcirculate, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", taskId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", result="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", because "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecentsPkgName()Ljava/lang/String;
    .locals 6

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, ""

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_recentsComponentName"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "RecentsAndFSGestureUtils"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recents_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 266
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

    .line 265
    invoke-static {v1, v2, v3, v5, v4}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "RecentsAndFSGestureUtils"

    .line 270
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 272
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static getTaskStackViewLayoutStyle(Landroid/content/Context;)I
    .locals 2

    .line 278
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

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "com.miui.home"

    .line 94
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

    .line 54
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isNotSupportGestureV3Device"

    .line 55
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 56
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

    .line 58
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static isPkgSupportSmallWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 255
    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getSuggestionList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 259
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 2

    .line 68
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

.method public static isSupportStartSmallWithPosition()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.util.MiuiMultiWindowUtils"

    .line 113
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startSmallFreeform"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    .line 115
    invoke-static {v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    .line 113
    invoke-static {v1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "RecentsAndFSGestureUtils"

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportStartSmallWithPosition,method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move v0, v6

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "RecentsAndFSGestureUtils"

    const-string v3, "isSupportStartSmallWithPosition error"

    .line 120
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static isTaskHasMultipleTasks(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 223
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTaskHasMultipleTasks(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTaskInWorldCirculate(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTaskSupportSmallWindow(Landroid/content/Context;I)Z
    .locals 8

    const-string v0, "activity"

    .line 236
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/ActivityManager;

    const/4 p0, 0x1

    .line 239
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getTaskResizeableForFreeform"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, p0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, p0, [Ljava/lang/Object;

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 239
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RecentsAndFSGestureUtils"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTaskSupportSmallWindow, taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p0
.end method

.method private static isUseFsGestureV2Device()Z
    .locals 2

    .line 64
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

    .line 73
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

.method public static isUseTaskStackLayoutStyleHorizontalAnim(Z)Z
    .locals 1

    .line 248
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->isTaskStackViewLayoutStyleVertical()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 251
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$lockOrUnlockApp$0(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 289
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p2, v0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 290
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p2, p0, p1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 289
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 292
    :cond_1
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

    .line 296
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p2, "RecentsAndFSGestureUtils"

    .line 297
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

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->setLocked(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->onLockedChange()V

    .line 302
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static lockOrUnlockApp(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V
    .locals 2

    .line 286
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$U478jG3SIGRHUcH65DY0OP9BwNc;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$U478jG3SIGRHUcH65DY0OP9BwNc;-><init>(Lcom/android/systemui/shared/recents/model/Task;Z)V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$Q9HlFyVQg_QRd8dXcSzZyOMY2wk;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/-$$Lambda$RecentsAndFSGestureUtils$Q9HlFyVQg_QRd8dXcSzZyOMY2wk;-><init>(Lcom/android/systemui/shared/recents/model/Task;ZLjava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static setTaskStackViewLayoutStyle(Landroid/content/Context;I)V
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "task_stack_view_layout_style"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static supportEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "RecentsAndFSGestureUtils"

    const-string v0, "Display don\'t support"

    .line 190
    invoke-static {p1, p2, v1, v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 193
    :cond_0
    invoke-static {p0, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskSupportSmallWindow(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "RecentsAndFSGestureUtils"

    const-string v0, "task don\'t support"

    .line 194
    invoke-static {p1, p2, v1, v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 197
    :cond_1
    sget-boolean v0, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->CAN_ONLY_USE_TASK_ID_TO_DISTINGUISH_SMALL_WINDOW:Z

    if-eqz v0, :cond_2

    const-string p0, "RecentsAndFSGestureUtils"

    const-string v0, "only use taskId to distinguish"

    const/4 v1, 0x1

    .line 198
    invoke-static {p1, p2, v1, v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isPkgSupportSmallWindow(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string v0, "RecentsAndFSGestureUtils"

    const-string/jumbo v1, "use taskId and pkg to distinguish"

    .line 202
    invoke-static {p1, p2, p0, v1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindowLog(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
