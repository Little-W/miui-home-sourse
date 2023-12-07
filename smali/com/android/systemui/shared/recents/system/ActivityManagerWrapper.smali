.class public Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final CLOSE_SYSTEM_WINDOWS_REASON_FS_GESTURE:Ljava/lang/String; = "fs_gesture"

.field public static final CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final CLOSE_SYSTEM_WINDOWS_REASON_RECENTS:Ljava/lang/String; = "recentapps"

.field private static final HOME_SETTING_CLASS:Ljava/lang/String; = "com.miui.home.settings."

.field public static final INVALID_TASK_ID:I = -0x1

.field public static final RECENT_INCLUDE_PROFILES:I = 0x4

.field public static final RECENT_INGORE_DOCKED_STACK_TOP_TASK:I = 0x10

.field public static final RECENT_INGORE_PINNED_STACK_TASKS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActivityManagerWrapper"

.field private static sGetTaskSnapshotSizeMethod:Ljava/lang/reflect/Method;

.field private static final sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field private static sNeedDisableHomeSetting:Z

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseTasksVisibleSystemMethod:Z


# instance fields
.field private mAccessLockedFakeScreenshotLand:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessLockedFakeScreenshotPort:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

.field private mContainMiuiHomeSettingsActivity:Z

.field private mContext:Landroid/content/Context;

.field mDisplay:Landroid/view/Display;

.field private mFieldForTaskInfoIsCastMode:Ljava/lang/reflect/Field;

.field private mFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

.field private mSoscFirstSplitScreenRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mSoscFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

.field mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sNeedDisableHomeSetting:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.tv.pip.PipOnboardingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.tv.pip.PipMenuActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.google.android.apps.googleassistant.AssistantActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.google.android.apps.gsa.staticplugins.deeplink.activity.DeeplinkActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.xiaomi.market.ui.minicard.DetailMiniCardActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.miui.AddClipboardAlertDialogActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.miui.circulate.world.AppCirculateActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContainMiuiHomeSettingsActivity:Z

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    new-instance v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    const-class v1, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "mIsCastMode"

    invoke-static {v1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mFieldForTaskInfoIsCastMode:Ljava/lang/reflect/Field;

    const-class p0, Landroid/app/IActivityTaskManager;

    const-class v1, Ljava/util/List;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    const-string v3, "getTasksVisibleSystem"

    invoke-static {p0, v3, v1, v2}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    move v0, v5

    :cond_0
    sput-boolean v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sUseTasksVisibleSystemMethod:Z

    return-void
.end method

.method private containMiuiHomeSettingsActivity(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->hasMultipleTasks()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "com.miui.home.settings.MiuiHomeSettingActivity"

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0
.end method

.method private createTaskSnapshot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;->create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    return-object p0

    :cond_2
    iget p0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public static enableHomeSetting(Z)V
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    sput-boolean p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sNeedDisableHomeSetting:Z

    return-void
.end method

.method public static getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getBackInvokedCallbackFromInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.window.BackNavigationInfo"

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const-string v3, "getOnBackInvokedCallback"

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getBackNavigationInfo([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/app/IActivityTaskManager;

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "startBackNavigation"

    const-string v3, "android.window.BackNavigationInfo"

    invoke-static {v3}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed to getBackNavigationInfo"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    return-object v0
.end method

.method private static getTaskSnapshotScaleAtLeastAndroidR(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Point;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sGetTaskSnapshotSizeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-class v0, Landroid/app/ActivityManager$TaskSnapshot;

    const-string v2, "getTaskSize"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sGetTaskSnapshotSizeMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sGetTaskSnapshotSizeMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getTasksVisibleSystem(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/app/IActivityTaskManager;

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getTasksVisibleSystem"

    const-class v3, Ljava/util/List;

    const/4 p0, 0x4

    new-array v4, p0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v5, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v9

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I
    .locals 3

    :try_start_0
    const-class v0, Landroid/app/TaskInfo;

    const-string/jumbo v1, "topActivityType"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed call getTopActivityTypeFromTaskInfo"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static varargs invokeOnBackInvokedCallbackMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.window.IOnBackInvokedCallback"

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBackInvokedCallbackFromInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$BV01s44kf38fvPt4XqQnwzP_M_Q(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->unwrap()Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onGoingToRecentsLegacy$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onGoingToRecentsLegacy$1(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method static synthetic lambda$onStartingSplitLegacy$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onStartingSplitLegacy$3(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private modifyActivityOptions(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;II)V
    .locals 0

    iget p0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_4

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    :cond_3
    invoke-static {p2}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object p0

    invoke-virtual {p0, p3}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    invoke-static {p2}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object p0

    invoke-virtual {p0, p4}, Lmiui/app/ActivityOptionsExpose;->setLaunchActivityType(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private needRemoveHomeSetting(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->hasMultipleTasks()Z

    move-result p0

    const/4 v0, 0x1

    const-string v1, "com.miui.home.settings."

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private needRemoveTask(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0

    :cond_3
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    :cond_4
    :goto_0
    return p0
.end method

.method public static onGoingToRecentsLegacy(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BV01s44kf38fvPt4XqQnwzP_M_Q;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BV01s44kf38fvPt4XqQnwzP_M_Q;

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/RemoteAnimationTarget;

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "ActivityManagerWrapper"

    const-string p1, "Failed call onGoingToRecentsLegacy"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static onStartingSplitLegacy(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BV01s44kf38fvPt4XqQnwzP_M_Q;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BV01s44kf38fvPt4XqQnwzP_M_Q;

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/RemoteAnimationTarget;

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenU;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1, p2}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "ActivityManagerWrapper"

    const-string p1, "Failed call onGoingToRecentsLegacy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private printGroupedRecentTaskInfo(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecentTasks: mainTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   windowMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   baseIntent="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " }"

    const-string v7, " cmp="

    const-string v8, " flag="

    const-string v9, "Intent { act="

    const-string v10, "null"

    if-nez v1, :cond_0

    move-object v1, v10

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->hasMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\tsecondTask: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "taskId="

    if-nez v1, :cond_1

    move-object/from16 v16, v10

    goto :goto_2

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v15, :cond_2

    move-object/from16 v16, v10

    goto :goto_1

    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    iget-object v10, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tprimaryTask: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_3

    move-object/from16 v10, v16

    goto :goto_4

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryUserId()I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v0, :cond_4

    move-object/from16 v0, v16

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static startIntentAndTask(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 11

    const-string v0, "ActivityManagerWrapper"

    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/wm/shell/splitscreen/ISplitScreenU;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIntentAndTask: pendingIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sidePosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", splitRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startIntentAndTask"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startIntentAndTaskWithLegacyTransition(Lcom/android/wm/shell/splitscreen/ISplitScreenT;Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 10

    const-string v0, "ActivityManagerWrapper"

    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIntentAndTaskWithLegacyTransition: pendingIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fillInIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sidePosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", splitRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startIntentAndTaskWithLegacyTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startIntents(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "ActivityManagerWrapper"

    :try_start_0
    const-string p1, "startIntents: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed call startIntents"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startIntentsWithLegacyTransition(Lcom/android/wm/shell/splitscreen/ISplitScreenT;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ActivityManagerWrapper"

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startIntentsWithLegacyTransition: mainIntent = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", sideIntent = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", option = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed call startIntentsWithLegacyTransition"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startRecentsActivityAtLeastS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 10

    const-string v0, "ActivityManagerWrapper"

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;

    move-result-object p0

    :try_start_0
    const-string p2, "android.app.IActivityTaskManager"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string p2, "startRecentsActivityAtLeastS"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object p2

    invoke-virtual {p2}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "startRecentsActivity"

    const-class v4, Ljava/lang/Void;

    const/4 p2, 0x3

    new-array v5, p2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Landroid/view/IRecentsAnimationRunner;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    new-array v6, p2, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v8

    aput-object p0, v6, v9

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to startRecentsActivityAtLeastS"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startRecentsActivityBelowAndroidS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    :cond_1
    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/IActivityTaskManager;

    invoke-interface {p0, p1, v1, v0}, Landroid/app/IActivityTaskManager;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static startTasks(Lcom/android/wm/shell/splitscreen/ISplitScreenU;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 10

    const-string v0, "ActivityManagerWrapper"

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move v4, p1

    move-object v5, p2

    move v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreenU;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Landroid/os/Parcelable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTasks: mainTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sideTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startTasks"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startTasksWithLegacyTransition(Lcom/android/wm/shell/splitscreen/ISplitScreenT;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V
    .locals 9

    const-string v0, "ActivityManagerWrapper"

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreenT;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTasksWithLegacyTransition: mainTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sideTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed call startTasksWithLegacyTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static useTasksVisibleSystemMethod()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sUseTasksVisibleSystemMethod:Z

    return v0
.end method


# virtual methods
.method public addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/recents/IRecentTasks;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string p2, "addToFinishTransaction fail"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public cancelRecentsAnimation(Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/app/IActivityTaskManagerExpose;->cancelRecentsAnimation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed to cancelRecentsAnimation"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$1;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .locals 7

    :try_start_0
    const-class v0, Landroid/app/IActivityTaskManager;

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "detachNavigationBarFromApp"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, p0, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed call takeTaskSnapshot"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public filterTasks(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v2

    if-eq v2, p2, :cond_2

    :cond_1
    if-eq p3, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v0

    if-ne v0, p3, :cond_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public findSideTaskIdInMagicWindow(Ljava/util/List;)I
    .locals 8

    const/4 p0, -0x1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/app/TaskInfo;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/app/TaskInfo;

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v5

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowingBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;

    move-result-object v6

    const/16 v7, 0xd

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    iget v5, v6, Landroid/graphics/Rect;->left:I

    if-lez v5, :cond_3

    move-object v1, v4

    move-object v3, v6

    goto :goto_1

    :cond_3
    move-object v0, v4

    move-object v2, v6

    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget p1, v2, Landroid/graphics/Rect;->right:I

    iget v0, v3, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_6

    iget p0, v1, Landroid/app/TaskInfo;->taskId:I

    :cond_6
    :goto_2
    return p0
.end method

.method public getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I
    .locals 1

    :try_start_0
    iget-object p0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {p0}, Lmiui/content/res/ConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/ConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/ConfigurationExpose;->getWindowConfiguration()Lmiui/content/res/WindowConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/WindowConfigurationExpose;->getActivityType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed call getActivityTypeFromTaskInfo"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mLabel:Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/ComponentName;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigurationFromTaskInfo(Landroid/app/TaskInfo;)Landroid/content/res/Configuration;
    .locals 6

    :try_start_0
    const-class v0, Landroid/app/TaskInfo;

    const-string v2, "getConfiguration"

    const-class v3, Landroid/content/res/Configuration;

    const/4 v4, 0x0

    const/4 p0, 0x0

    new-array v5, p0, [Ljava/lang/Object;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "getConfigurationFromTaskInfo "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayId(Landroid/app/TaskInfo;)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lmiui/app/TaskInfoExpose;->box(Ljava/lang/Object;)Lmiui/app/TaskInfoExpose;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/TaskInfoExpose;->getDisplayId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p0
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getFirstSplitScreenTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public getIRecentsAnimationController(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/recents/IRecentTasks;->getRecentsAnimationController(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "getIRecentsAnimationController fail"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastActiveTime(Landroid/app/ActivityManager$RecentTaskInfo;)J
    .locals 0

    iget-wide p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    return-wide p0
.end method

.method public getPackageNameFromRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1

    const-string p0, ""

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getPackageNameFromTaskInfo(Landroid/app/TaskInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParentTaskId(Landroid/app/TaskInfo;)I
    .locals 2

    :try_start_0
    const-class p0, Landroid/app/TaskInfo;

    const-string v0, "parentTaskId"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed call getParentTaskId"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getPictureInPictureParamsFromTransitionInfo(Landroid/window/TransitionInfo;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    const-string p0, "android.app.PictureInPictureParams"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroid/window/TransitionInfo;

    const-string v1, "pictureInPictureParams"

    invoke-static {p0}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v1, p0}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed call getPictureInPictureParamsFromTransitionInfo"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getRecentTasks(III)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/recents/IRecentTasks;->getRecentTasks(III)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string p2, "Failed call getRecentTasks"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getRecentTasks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManagerWrapper"

    const-string v2, "Failed to get recent tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public getRecentTasks(IILandroid/util/ArraySet;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasksForceIncludingTaskIdIfValid(IIILandroid/util/ArraySet;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRecentTasksForceIncludingTaskIdIfValid(IIILandroid/util/ArraySet;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get all recent tasks force including "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    const/16 v2, 0x3f

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-boolean v4, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    if-eqz v4, :cond_1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasks(III)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    new-instance v2, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatT;-><init>(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0, v2, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v2, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompatS;-><init>(Landroid/app/ActivityManager$RecentTaskInfo;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v0, "Failed to get recent tasks"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    if-eqz p5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecentTasks: size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContainMiuiHomeSettingsActivity:Z

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;

    if-eqz p5, :cond_6

    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->printGroupedRecentTaskInfo(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)V

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->needRemoveTask(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContainMiuiHomeSettingsActivity:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->containMiuiHomeSettingsActivity(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)Z

    move-result v4

    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContainMiuiHomeSettingsActivity:Z

    sget-boolean v2, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sNeedDisableHomeSetting:Z

    if-eqz v2, :cond_9

    invoke-direct {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->needRemoveHomeSetting(Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->isExcludedFromRecents()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v4, v0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v4, 0x1

    :goto_5
    or-int/2addr v2, v4

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskId()I

    move-result v2

    if-eq v2, p3, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskId()I

    move-result v2

    if-eq v2, p3, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskId()I

    move-result v1

    if-eq v1, p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_3

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {v3, v0, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRunningTask(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-interface {p0, v0, p1, p2}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningTaskInfoUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 0

    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    return p0
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSoscFirstSplitRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mSoscFirstSplitScreenRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getSoscFirstSplitScreenTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mSoscFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public getStackId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    iget p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    return p0
.end method

.method public getTaskId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const-class p0, Landroid/app/TaskInfo;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "parentTaskId"

    invoke-static {p0, p1, v2, v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskId: parentTaskId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManagerWrapper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-ne p0, v1, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_1

    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_1
    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :cond_2
    :goto_1
    return p0
.end method

.method public getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->createTaskSnapshot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public getUserId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    iget p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    return p0
.end method

.method public getVisibleOrRunningTask(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sUseTasksVisibleSystemMethod:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTasksVisibleSystem(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWindowConfigurationFromConfiguration(Landroid/content/res/Configuration;)Landroid/app/WindowConfiguration;
    .locals 2

    :try_start_0
    const-class p0, Landroid/content/res/Configuration;

    const-string/jumbo v0, "windowConfiguration"

    const-class v1, Lcom/android/systemui/shared/recents/system/WindowConfiguration;

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WindowConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "getWindowConfigurationFromConfiguration "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowContainerTokenFromTaskInfo(Landroid/app/TaskInfo;)Landroid/window/WindowContainerToken;
    .locals 2

    :try_start_0
    const-class p0, Landroid/app/TaskInfo;

    const-string/jumbo v0, "token"

    const-class v1, Landroid/window/WindowContainerToken;

    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/WindowContainerToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed call getWindowContainerTokenFromTaskInfo"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I
    .locals 1

    :try_start_0
    iget-object p0, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {p0}, Lmiui/content/res/ConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/ConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/ConfigurationExpose;->getWindowConfiguration()Lmiui/content/res/WindowConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/WindowConfigurationExpose;->getWindowingMode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "Failed call getWindowModeFromTaskInfo"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getWindowingBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getConfigurationFromTaskInfo(Landroid/app/TaskInfo;)Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowConfigurationFromConfiguration(Landroid/content/res/Configuration;)Landroid/app/WindowConfiguration;

    move-result-object v1

    const-class v0, Landroid/app/WindowConfiguration;

    const-string v2, "getBounds"

    const-class v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 p0, 0x0

    new-array v5, p0, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string v0, "getWindowingBounds "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasParentTaskFromTaskInfo(Landroid/app/TaskInfo;)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroid/app/TaskInfo;

    const-string v2, "hasParentTask"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v5, p0, [Ljava/lang/Object;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed call hasParentTaskFromTaskInfo"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "ActivityManagerWrapper"

    const-string p1, "initIRecentsAnimationRunnerAtLeastS: listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setRequestingAnimation(Z)V

    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    return-object v0
.end method

.method public isAutoEnterEnabled(Ljava/lang/Object;)Z
    .locals 7

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.app.PictureInPictureParams"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isAutoEnterEnabled"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v6, p0, [Ljava/lang/Object;

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed call isAutoEnterEnabled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public isContainMiuiHomeSettingsActivity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContainMiuiHomeSettingsActivity:Z

    return p0
.end method

.method public isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {p0}, Lmiui/content/res/ConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/ConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/ConfigurationExpose;->getWindowConfiguration()Lmiui/content/res/WindowConfigurationExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/content/res/WindowConfigurationExpose;->getActivityType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInFreeformMode(Landroid/app/TaskInfo;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isInPipMode(Landroid/app/TaskInfo;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isSameTaskId(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    iget p2, p2, Landroid/app/TaskInfo;->taskId:I

    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method public isSoscFirstSplitScreenTask(Landroid/app/TaskInfo;)Z
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getSoscFirstSplitScreenTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getSoscFirstSplitRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    iget p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSoscFirstSplitScreenTaskEmpty()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getSoscFirstSplitScreenTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getSoscFirstSplitRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTaskInCastMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isTaskInCastMode(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isTaskInCastMode(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mFieldForTaskInfoIsCastMode:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public registerRemoteTransition(Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->getWrapped()Landroid/window/TransitionFilter;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/android/wm/shell/transition/IShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ActivityManagerWrapper"

    const-string p1, "Failed call registerRemoteTransition"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resetFirstSplitScreenTaskNull()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method public resetSoscFirstSplitScreenTaskNull()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mSoscFirstSplitScreenRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mSoscFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method public setFirstSplitScreenTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method public setRecentTasks(Lcom/android/wm/shell/recents/IRecentTasks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    return-void
.end method

.method public setSoscFirstSplitRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mSoscFirstSplitScreenRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public setSoscFirstSplitScreenTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mSoscFirstSplitScreenTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method public startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->modifyActivityOptions(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;II)V

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    return-void
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 8

    const-string p0, "ActivityManagerWrapper"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "before startActivityFromRecents"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isQuickSwitchApp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setQuickSwitchApp(Z)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setOpenTaskId(I)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallback()V

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->directExecuteWorkHandlerFinishRunnableIfNeed()V

    :cond_2
    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    :goto_0
    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "startActivityFromRecents"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const-class v6, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    aput-object p2, v4, v7

    invoke-static {v1, v2, v3, v5, v4}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityFromRecents,taskId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p1

    const-string p2, "Failed to startActivityFromRecents"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public startActivityFromRecentsAsync(ILandroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/ActivityOptions;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, p2

    goto :goto_2

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    :cond_2
    invoke-static {p2}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object v0

    invoke-virtual {v0, p3}, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode(I)V

    invoke-static {p2}, Lmiui/app/ActivityOptionsExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;

    move-result-object p3

    invoke-virtual {p3, p4}, Lmiui/app/ActivityOptionsExpose;->setLaunchActivityType(I)V

    goto :goto_0

    :goto_2
    new-instance p2, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;ILandroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    if-eqz p7, :cond_3

    const-class p0, Lcom/android/internal/os/BackgroundThread;

    const-class p1, Landroid/os/Handler;

    const/4 p3, 0x0

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "getHandler"

    invoke-static {p0, p1, p5, p3, p4}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_3
    return-void
.end method

.method public startActivityFromRecentsAsync(ILandroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(ILandroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;Z)V

    return-void
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->modifyActivityOptions(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;II)V

    new-instance p3, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    if-eqz p7, :cond_0

    const-class p0, Lcom/android/internal/os/BackgroundThread;

    const-class p1, Landroid/os/Handler;

    const/4 p2, 0x0

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "getHandler"

    invoke-static {p0, p1, p5, p2, p4}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    invoke-virtual {p0, p3}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;Z)V

    return-void
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;Z)V

    return-void
.end method

.method public startFreeformActivity(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task;Z)Z
    .locals 8

    const-string v0, "ActivityManagerWrapper"

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeFreeformActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->setSmallWindowRemberLaunch(Landroid/app/ActivityOptions;)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startFreeformActivity: pkgName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to startFreeformActivity"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityAtLeastS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityBelowAndroidS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    :goto_0
    return-void
.end method

.method public startRecentsActivityAtLeastU(Lcom/android/wm/shell/recents/IRecentTasks;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/ContextWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Z
    .locals 7

    const-string v0, "ActivityManagerWrapper"

    invoke-virtual {p0, p6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;

    move-result-object v6

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallback()V

    :cond_0
    invoke-static {p5}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getIApplicationThread(Landroid/content/ContextWrapper;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/recents/IRecentTasks;->startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V

    const-string p0, "startRecentsActivityAtLeastU: "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to startRecentsActivityAtLeastU"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public supportsSplitScreen(Landroid/content/ComponentName;)Z
    .locals 7

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroid/app/IActivityTaskManager;

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "supportsSplitScreen"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/ComponentName;

    aput-object v6, v5, p0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, p0

    move-object v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed to supportsSplitScreen"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return p0
.end method

.method public takeTaskSnapshot(IZ)Ljava/lang/Object;
    .locals 8

    :try_start_0
    const-string p0, "android.window.TaskSnapshot"

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v0, Landroid/app/IActivityTaskManager;

    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "takeTaskSnapshot"

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v5, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v7

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManagerWrapper"

    const-string p2, "Failed call takeTaskSnapshot"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public trimMemory(I)V
    .locals 0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    return-void
.end method

.method public unregisterRemoteTransition(Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;->getWrapped()Landroid/window/RemoteTransition;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/transition/IShellTransitions;->unregisterRemote(Landroid/window/RemoteTransition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ActivityManagerWrapper"

    const-string p1, "Failed call registerRemoteTransition"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
