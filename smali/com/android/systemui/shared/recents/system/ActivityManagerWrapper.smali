.class public Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"


# static fields
.field public static final CLOSE_SYSTEM_WINDOWS_REASON_FS_GESTURE:Ljava/lang/String; = "fs_gesture"

.field public static final CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final CLOSE_SYSTEM_WINDOWS_REASON_RECENTS:Ljava/lang/String; = "recentapps"

.field public static final INVALID_TASK_ID:I = -0x1

.field public static final RECENT_INCLUDE_PROFILES:I = 0x4

.field public static final RECENT_INGORE_DOCKED_STACK_TOP_TASK:I = 0x10

.field public static final RECENT_INGORE_PINNED_STACK_TASKS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActivityManagerWrapper"

.field private static final sForceExcludeComponentName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetTaskSnapshotSizeMethod:Ljava/lang/reflect/Method;

.field private static final sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

.field static final sRecentsBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.field private mContext:Landroid/content/Context;

.field mDisplay:Landroid/view/Display;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

.field mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    .line 74
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.tv.pip.PipOnboardingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.tv.pip.PipMenuActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    const-string v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$2;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sForceExcludeComponentName:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWm:Landroid/view/WindowManager;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    invoke-static {}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWm:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    .line 98
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    return-void
.end method

.method private createTaskSnapshot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 1

    .line 306
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;->create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p1

    return-object p1

    .line 308
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVR;->create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p1

    return-object p1

    .line 311
    :cond_1
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p1

    return-object p1
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 363
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    return-object v0
.end method

.method private static getTaskSnapshotScaleAtLeastAndroidR(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Point;
    .locals 4

    .line 318
    :try_start_0
    sget-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sGetTaskSnapshotSizeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 319
    const-class v0, Landroid/app/ActivityManager$TaskSnapshot;

    const-string v2, "getTaskSize"

    .line 320
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sGetTaskSnapshotSizeMethod:Ljava/lang/reflect/Method;

    .line 322
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

    .line 324
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private modifyActivityOptions(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;II)V
    .locals 1

    .line 655
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 659
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    :cond_0
    const/4 p1, 0x4

    .line 661
    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_4

    :cond_2
    if-nez p2, :cond_3

    .line 665
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 667
    :cond_3
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 668
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private startRecentsActivityAtLeastS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 493
    new-instance v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$5;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    :try_start_0
    const-string p2, "android.app.IActivityTaskManager"

    .line 520
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 522
    invoke-virtual {p2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string p2, "ActivityManagerWrapper"

    const-string v0, "startRecentsActivityAtLeastS"

    .line 527
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const-string v4, "startRecentsActivity"

    const-class v5, Ljava/lang/Void;

    const/4 p2, 0x3

    new-array v6, p2, [Ljava/lang/Class;

    const-class v0, Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const-class v0, Landroid/view/IRecentsAnimationRunner;

    const/4 v9, 0x2

    aput-object v0, v6, v9

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v7

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p2, v8

    aput-object v1, p2, v9

    move-object v7, p2

    .line 528
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startRecentsActivityBelowAndroidS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 436
    :try_start_0
    new-instance v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$3;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 447
    new-instance v0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$4;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    .line 484
    :cond_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    invoke-interface {p2, p1, v1, v0}, Landroid/app/IActivityTaskManager;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public cancelRecentsAnimation(Z)V
    .locals 2

    .line 550
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->cancelRecentsAnimation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed to cancel recents animation"

    .line 552
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$1;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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

    .line 383
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 384
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 386
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    if-eq v2, p2, :cond_2

    :cond_1
    if-eq p3, v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 387
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 388
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public findSideTaskIdInMagicWindow(Ljava/util/List;)I
    .locals 9

    const/4 v0, -0x1

    if-eqz p1, :cond_7

    .line 247
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 254
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 256
    instance-of v6, v5, Landroid/app/TaskInfo;

    if-eqz v6, :cond_1

    .line 257
    check-cast v5, Landroid/app/TaskInfo;

    .line 261
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v6

    .line 262
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowingBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;

    move-result-object v7

    const/16 v8, 0xd

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 266
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-lez v6, :cond_3

    move-object v2, v5

    move-object v4, v7

    goto :goto_1

    :cond_3
    move-object v1, v5

    move-object v3, v7

    :cond_4
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 281
    iget p1, v3, Landroid/graphics/Rect;->right:I

    iget v1, v4, Landroid/graphics/Rect;->right:I

    if-ge p1, v1, :cond_6

    .line 282
    iget p1, v2, Landroid/app/TaskInfo;->taskId:I

    return p1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v0
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mWebAppDAO:Lcom/android/systemui/shared/recents/webapps/WebAppDAO;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppDAO;->get(Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/shared/recents/webapps/WebAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v1, v0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mLabel:Ljava/lang/String;

    :cond_1
    if-nez v1, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public getComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/ComponentName;
    .locals 1

    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 237
    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisplayId(Landroid/app/TaskInfo;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 731
    :try_start_0
    iget p1, p1, Landroid/app/TaskInfo;->displayId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0

    :cond_0
    return v0
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 4

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    return-object v0

    .line 336
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 337
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 338
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getLastActiveTime(Landroid/app/ActivityManager$RecentTaskInfo;)J
    .locals 2

    .line 292
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    return-wide v0
.end method

.method public getRecentTasks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ActivityManagerWrapper"

    const-string v3, "Failed to get recent tasks"

    .line 143
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
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
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 227
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasksForceIncludingTaskIdIfValid(IIILandroid/util/ArraySet;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRecentTasksForceIncludingTaskIdIfValid(IIILandroid/util/ArraySet;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "ActivityManagerWrapper"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get all recent tasks force including "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 161
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3f

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e

    :goto_0
    const/4 v2, 0x0

    .line 172
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0, v1, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "ActivityManagerWrapper"

    const-string v1, "Failed to get recent tasks"

    .line 174
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v2, :cond_1

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 182
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    if-eqz p5, :cond_2

    const-string v0, "ActivityManagerWrapper"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecentTasks: size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 187
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz p5, :cond_3

    .line 188
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    const-string v3, "ActivityManagerWrapper"

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecentTasks: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   baseIntent=Intent { act="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 191
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cmp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_5

    .line 198
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 199
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sRecentsBlacklist:Ljava/util/List;

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 200
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 201
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 207
    :cond_5
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v1, 0x1

    .line 209
    :cond_6
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 211
    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    if-ne v1, p3, :cond_7

    sget-object v1, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->sForceExcludeComponentName:Ljava/util/Set;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 216
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRunningTask(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 412
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRunningTaskInfoUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 0

    .line 686
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    return p1
.end method

.method public getRunningTasks(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 395
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStackId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    .line 296
    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    return p1
.end method

.method public getTaskId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 5

    .line 420
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 422
    const-class v0, Landroid/app/TaskInfo;

    const-string v2, "parentTaskId"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1, v2, v3}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "ActivityManagerWrapper"

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTaskId: parentTaskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    .line 426
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :cond_1
    return v0
.end method

.method public getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 2

    .line 301
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->createTaskSnapshot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object p1

    .line 302
    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {p1}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getTasksVisibleSystem(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 402
    const-class v0, Landroid/app/IActivityTaskManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    const-string v2, "getTasksVisibleSystem"

    const-class v3, Ljava/util/List;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v6, v5, v10

    new-array v6, v4, [Ljava/lang/Object;

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v10

    move-object v4, v5

    move-object v5, v6

    .line 402
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getUserId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    .line 288
    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    return p1
.end method

.method public getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I
    .locals 0

    .line 232
    iget-object p1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    return p1
.end method

.method public getWindowingBounds(Landroid/app/TaskInfo;)Landroid/graphics/Rect;
    .locals 0

    .line 243
    iget-object p1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 747
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInFreeformMode(Landroid/app/TaskInfo;)Z
    .locals 2

    const/4 v0, 0x0

    .line 691
    :try_start_0
    iget-object p1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public isInPipMode(Landroid/app/TaskInfo;)Z
    .locals 2

    const/4 v0, 0x0

    .line 700
    :try_start_0
    iget-object p1, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 557
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->modifyActivityOptions(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;II)V

    .line 558
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    return-void
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 677
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 678
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
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

    goto :goto_0

    :cond_0
    move-object v3, p2

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 623
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 625
    :cond_2
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 626
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    move-object v3, p2

    .line 632
    :goto_1
    new-instance p2, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$7;

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$7;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;ILandroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    if-eqz p7, :cond_3

    .line 647
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 649
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_2
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

    .line 579
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

    .line 592
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->modifyActivityOptions(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;II)V

    .line 596
    new-instance p3, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper$6;-><init>(Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    if-eqz p7, :cond_0

    .line 611
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    invoke-virtual {p1, p3}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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

    .line 567
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

    .line 573
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;Z)V

    return-void
.end method

.method public startFreeformActivity(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 708
    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeFreeformActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    .line 715
    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->setSmallWindowRemberLaunch(Landroid/app/ActivityOptions;)V

    .line 717
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;Z)V

    const-string p2, "ActivityManagerWrapper"

    .line 719
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFreeformActivity: pkgName = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "ActivityManagerWrapper"

    const-string p3, "Failed to startFreeformActivity"

    .line 723
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V
    .locals 1

    .line 538
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityAtLeastS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    goto :goto_0

    .line 541
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityBelowAndroidS(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    :goto_0
    return-void
.end method

.method public trimMemory(I)V
    .locals 1

    .line 740
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    return-void
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
