.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;,
        Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$_lancet;
    }
.end annotation


# static fields
.field private static MIN_NUM_TASKS:I = 0x5

.field private static SESSION_BEGIN_TIME:I = 0x1499700

.field private static final TAG:Ljava/lang/String; = "RecentsTaskLoadPlan"


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentQuietProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui/shared/recents/model/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 6

    .line 260
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 87
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 96
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized executePlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;)V
    .locals 12

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    .line 209
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 210
    iget-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 212
    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v8, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    move v7, v3

    .line 213
    :goto_1
    iget v8, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    if-ge v4, v8, :cond_1

    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v3

    .line 214
    :goto_2
    iget v10, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    if-ge v4, v10, :cond_2

    move v10, v9

    goto :goto_3

    :cond_2
    move v10, v3

    .line 217
    :goto_3
    iget-boolean v11, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    goto :goto_4

    .line 221
    :cond_3
    iget-boolean v11, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v11, :cond_5

    if-nez v7, :cond_4

    if-eqz v8, :cond_5

    .line 222
    :cond_4
    iget-object v8, v5, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_5

    .line 223
    iget-object v8, v5, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2, v6, v8, v0, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v5, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_5
    iget-boolean v8, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v8, :cond_9

    if-nez v7, :cond_6

    if-eqz v10, :cond_9

    .line 228
    :cond_6
    iget-object v8, v5, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_7

    if-nez v7, :cond_7

    iget-boolean v7, v5, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    if-eqz v7, :cond_9

    .line 229
    :cond_7
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v7

    if-nez v7, :cond_8

    .line 230
    iget-boolean v7, v5, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    invoke-virtual {p2, v6, v9, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 233
    :cond_8
    invoke-virtual {p3, v5}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 234
    iput-boolean v3, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public declared-synchronized preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;IZLjava/util/Set;Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$SnapshotCallback;)V
    .locals 46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v0, :cond_0

    move/from16 v0, p3

    .line 132
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 135
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 136
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 137
    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_6

    .line 139
    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 141
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromRecentTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v14

    .line 142
    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p4

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 143
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v22, 0x1

    if-nez v0, :cond_1

    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p5

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v20, v22

    goto :goto_1

    :cond_1
    move-object/from16 v13, p5

    :cond_2
    const/16 v20, 0x0

    .line 145
    :goto_1
    new-instance v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    iget-object v8, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move/from16 v41, v7

    iget v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    iget-wide v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move/from16 v44, v9

    iget-object v9, v10, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move/from16 v16, v11

    move-object v11, v12

    move-object/from16 v45, v4

    move-object v4, v12

    move v12, v0

    move/from16 v13, v16

    move-object v15, v8

    move/from16 v16, v7

    move-wide/from16 v17, v5

    move-object/from16 v21, v9

    invoke-direct/range {v11 .. v21}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IIILandroid/content/Intent;IJZZLandroid/content/ComponentName;)V

    .line 151
    iget v0, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move/from16 v5, p2

    if-ne v0, v5, :cond_3

    move/from16 v31, v22

    goto :goto_2

    :cond_3
    const/16 v31, 0x0

    .line 154
    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 155
    iget-object v6, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v27

    .line 156
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v28

    .line 157
    iget-object v6, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v7, 0x0

    .line 158
    invoke-virtual {v2, v4, v6, v3, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 160
    invoke-static {}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v6

    .line 161
    invoke-virtual {v2, v4, v7, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 162
    iget-object v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v29

    .line 163
    iget-object v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v30

    if-eqz v0, :cond_4

    .line 164
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    move/from16 v33, v22

    goto :goto_3

    :cond_4
    const/16 v33, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 168
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_4
    iget v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-static {v0, v7}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v39, v8

    goto :goto_6

    :goto_5
    :try_start_2
    const-string v7, "RecentsTaskLoadPlan"

    const-string v8, "getAppLockStateForUserId"

    .line 170
    invoke-static {v7, v8, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v39, 0x0

    .line 181
    :goto_6
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    const/16 v35, 0x0

    iget-object v8, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget v9, v10, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    iget-object v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/16 v32, 0x1

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move/from16 v34, v7

    move-object/from16 v36, v8

    move/from16 v37, v9

    move-object/from16 v38, v10

    move/from16 v40, v6

    invoke-direct/range {v23 .. v40}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZ)V

    move-object/from16 v6, p6

    .line 186
    invoke-virtual {v0, v6}, Lcom/android/systemui/shared/recents/model/Task;->setSnapshotCallbacksCallback(Lcom/android/systemui/shared/recents/model/Task$SnapshotCallback;)V

    move-object/from16 v7, v45

    .line 188
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget v0, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v8, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move-object/from16 v9, v43

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    iget v0, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move-object/from16 v8, v42

    invoke-virtual {v8, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v44, 0x1

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move/from16 v7, v41

    move v9, v0

    goto/16 :goto_0

    :cond_6
    move-object v7, v4

    .line 194
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 195
    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v7, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .locals 4

    monitor-enter p0

    const/4 v0, -0x2

    .line 109
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    .line 110
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateTaskAccessLockedState()V
    .locals 6

    .line 282
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 287
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 288
    invoke-static {}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateTaskLockedState(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 269
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 270
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 272
    :try_start_0
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v5, v4}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/recents/model/Task;->setLocked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v4, "RecentsTaskLoadPlan"

    const-string v5, "getAppLockStateForUserId"

    .line 274
    invoke-static {v4, v5, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
