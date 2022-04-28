.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
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

.field private mIsPrintTaskInfo:Z

.field private mLockApplicationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mIsPrintTaskInfo:Z

    .line 86
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPositionInParent(Landroid/app/TaskInfo;)Landroid/graphics/Point;
    .locals 3

    .line 412
    const-class v0, Landroid/app/TaskInfo;

    const-string v1, "positionInParent"

    const-class v2, Landroid/graphics/Point;

    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    return-object p1
.end method

.method private hasMultipleTasks(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 6

    .line 388
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

.method private isLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 3

    .line 151
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 152
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getLockedApplication(I)Ljava/util/List;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :goto_0
    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 1

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 0

    .line 377
    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 97
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 103
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
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
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 307
    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 308
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_d

    .line 310
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    .line 311
    iget-object v9, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 312
    iget-object v10, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 313
    iget-object v11, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 315
    iget-object v12, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v13, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v14, 0x1

    if-ne v12, v13, :cond_0

    move v12, v14

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    .line 316
    :goto_1
    iget v13, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    if-ge v7, v13, :cond_1

    move v13, v14

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    .line 317
    :goto_2
    iget v15, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    if-ge v7, v15, :cond_2

    move v15, v14

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    .line 320
    :goto_3
    iget-boolean v6, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v6, :cond_3

    if-eqz v12, :cond_3

    move-object/from16 v6, p3

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 324
    :cond_3
    iget-boolean v6, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v6, :cond_7

    if-nez v12, :cond_4

    if-eqz v13, :cond_7

    .line 325
    :cond_4
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    .line 327
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v10, v6, v3, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    .line 330
    :cond_5
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_7

    .line 331
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v11, v6, v3, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 335
    :cond_6
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_7

    .line 336
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v9, v6, v3, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_7
    :goto_4
    iget-boolean v6, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v6, :cond_c

    if-nez v12, :cond_8

    if-eqz v15, :cond_c

    .line 342
    :cond_8
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_a

    if-nez v12, :cond_a

    iget-boolean v6, v8, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v6, p3

    const/4 v8, 0x0

    goto :goto_6

    .line 343
    :cond_a
    :goto_5
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v6

    if-nez v6, :cond_b

    .line 344
    iget-boolean v6, v8, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    invoke-virtual {v2, v9, v14, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    move-object/from16 v6, p3

    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v6, p3

    .line 347
    invoke-virtual {v6, v8}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 v8, 0x0

    .line 348
    iput-boolean v8, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_c
    move-object/from16 v6, p3

    const/4 v8, 0x0

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 353
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public lockApplication(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 138
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 139
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->isLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v4

    .line 141
    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->isLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 142
    :goto_1
    iput-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    goto :goto_2

    .line 144
    :cond_2
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->isLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public declared-synchronized preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;ILjava/util/Set;Ljava/lang/String;)V
    .locals 48

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v5, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 204
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v7, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(I)V

    .line 209
    :cond_1
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 210
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 211
    iget-object v9, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_c

    .line 213
    iget-object v12, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 214
    iget-object v13, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/android/systemui/shared/recents/utilities/WorldCirculate;->getWorldCirculateInfo(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/content/Context;)Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;

    move-result-object v13

    .line 215
    new-instance v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v15, v12, v13}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    .line 216
    const-class v14, Landroid/app/ActivityManager$RecentTaskInfo;

    const-string v10, "childrenTaskInfos"

    move/from16 v43, v9

    const-class v9, Ljava/util/ArrayList;

    invoke-static {v14, v12, v10, v9}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getObjectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 227
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->hasMultipleTasks(Ljava/util/ArrayList;)Z

    move-result v34

    const/4 v14, 0x1

    if-eqz v34, :cond_8

    const/4 v10, 0x0

    .line 230
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 231
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 232
    new-instance v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v14, v10, v13}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    move/from16 v44, v11

    .line 233
    new-instance v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v11, v9, v13}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    .line 234
    invoke-direct {v1, v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getPositionInParent(Landroid/app/TaskInfo;)Landroid/graphics/Point;

    move-result-object v13

    move-object/from16 v45, v7

    .line 235
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getPositionInParent(Landroid/app/TaskInfo;)Landroid/graphics/Point;

    move-result-object v7

    move-object/from16 v46, v8

    .line 236
    iget v8, v13, Landroid/graphics/Point;->x:I

    move-object/from16 v47, v6

    iget v6, v7, Landroid/graphics/Point;->x:I

    if-gt v8, v6, :cond_3

    iget v6, v13, Landroid/graphics/Point;->y:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 237
    :goto_2
    invoke-direct {v1, v3, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v7

    iput-boolean v7, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 238
    invoke-direct {v1, v3, v11}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v7

    iput-boolean v7, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 239
    iget-boolean v7, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-nez v7, :cond_5

    iget-boolean v7, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 240
    invoke-direct {v1, v4, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v7

    iput-boolean v7, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 241
    invoke-direct {v1, v4, v11}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v7

    iput-boolean v7, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 242
    iget-boolean v7, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez v7, :cond_7

    iget-boolean v7, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v7, 0x1

    :goto_6
    iput-boolean v7, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 243
    iget-object v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v8, 0x1

    invoke-virtual {v0, v14, v7, v5, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 244
    iget-object v13, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v11, v13, v5, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 245
    invoke-virtual {v0, v14, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    .line 246
    invoke-virtual {v0, v11, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v16

    .line 247
    iget-object v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 248
    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move/from16 v33, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v42, v9

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v13

    move-object/from16 v35, v14

    move-object/from16 v41, v16

    goto :goto_7

    :cond_8
    move-object/from16 v47, v6

    move-object/from16 v45, v7

    move-object/from16 v46, v8

    move/from16 v44, v11

    .line 250
    invoke-direct {v1, v3, v15}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v6

    iput-boolean v6, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 251
    invoke-direct {v1, v4, v15}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v6

    iput-boolean v6, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    .line 257
    :goto_7
    iget v6, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v6, v2, :cond_9

    const/16 v22, 0x1

    goto :goto_8

    :cond_9
    const/16 v22, 0x0

    .line 260
    :goto_8
    invoke-virtual {v0, v15}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 261
    iget-object v7, v12, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v15, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v18

    .line 262
    invoke-virtual {v0, v15, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v19

    .line 264
    iget-object v7, v12, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v8, 0x0

    invoke-virtual {v0, v15, v7, v5, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 266
    invoke-static {}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v32

    .line 267
    iget-object v7, v12, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v20

    .line 268
    iget-object v7, v12, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v21

    if-eqz v6, :cond_a

    .line 269
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    move/from16 v24, v7

    goto :goto_9

    :cond_a
    const/4 v7, 0x1

    :cond_b
    const/16 v24, 0x0

    .line 279
    :goto_9
    new-instance v6, Lcom/android/systemui/shared/recents/model/Task;

    const/16 v17, 0x0

    iget-boolean v8, v12, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    const/16 v26, 0x0

    iget-object v9, v12, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget v10, v12, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    iget-object v11, v12, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v12, v12, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/16 v31, 0x0

    const/16 v23, 0x1

    move-object v14, v6

    move-object v13, v15

    move/from16 v25, v8

    move-object/from16 v27, v9

    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    invoke-direct/range {v14 .. v42}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Landroid/content/ComponentName;ZZZZLcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;)V

    move-object/from16 v8, v47

    .line 287
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget v6, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v9, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move-object/from16 v10, v46

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v10, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    iget v6, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move-object/from16 v7, v45

    invoke-virtual {v7, v6, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v44, 0x1

    move-object v6, v8

    move-object v8, v10

    move/from16 v9, v43

    goto/16 :goto_0

    :cond_c
    move-object v8, v6

    .line 292
    invoke-virtual {v1, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->lockApplication(Ljava/util/ArrayList;)V

    .line 295
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 296
    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v8, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preloadRawTasks(I)V
    .locals 7

    monitor-enter p0

    const/4 v0, -0x2

    .line 122
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    .line 123
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget-boolean v6, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mIsPrintTaskInfo:Z

    const/4 v3, -0x2

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasksForceIncludingTaskIdIfValid(IIILandroid/util/ArraySet;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 125
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIsPrintTaskInfo(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mIsPrintTaskInfo:Z

    return-void
.end method

.method public declared-synchronized updatePlan(Ljava/util/Set;Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 168
    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 171
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 172
    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 173
    iget-object v7, v4, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 174
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 175
    invoke-direct {p0, p1, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 176
    iget-boolean v8, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    const/4 v9, 0x1

    if-nez v8, :cond_1

    iget-boolean v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    move v8, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v9

    :goto_2
    iput-boolean v8, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 177
    invoke-direct {p0, p2, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 178
    invoke-direct {p0, p2, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 179
    iget-boolean v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez v6, :cond_3

    iget-boolean v6, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v9, v2

    :cond_3
    :goto_3
    iput-boolean v9, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    goto :goto_4

    .line 181
    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 182
    invoke-direct {p0, p2, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 184
    :goto_4
    invoke-static {}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->lockApplication(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateTaskAccessLockedState()V
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 404
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 405
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 406
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
    .locals 0

    .line 392
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz p1, :cond_0

    .line 393
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p1

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->lockApplication(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
