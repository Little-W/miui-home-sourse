.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;


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
            "Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mIsPrintTaskInfo:Z

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 4

    iget-wide p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 3

    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->getLockedApplication(I)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

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

    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz v5, :cond_0

    iget-object v4, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_e

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v9, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v10, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v11, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v12, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v13, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v14, 0x1

    if-ne v12, v13, :cond_1

    move v12, v14

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget v13, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    if-ge v7, v13, :cond_2

    move v13, v14

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    iget v15, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    if-ge v7, v15, :cond_3

    move v15, v14

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    iget-boolean v6, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v6, :cond_5

    if-eqz v12, :cond_5

    :cond_4
    :goto_4
    move-object/from16 v6, p3

    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_5
    iget-boolean v6, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v6, :cond_9

    if-nez v12, :cond_6

    if-eqz v13, :cond_9

    :cond_6
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_7

    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v10, v6, v3, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_9

    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v11, v6, v3, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_8
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_9

    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v9, v6, v3, v14}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_5
    iget-boolean v6, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v6, :cond_4

    if-nez v12, :cond_a

    if-eqz v15, :cond_4

    :cond_a
    iget-object v6, v8, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_b

    if-nez v12, :cond_b

    iget-boolean v6, v8, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    if-eqz v6, :cond_4

    :cond_b
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, v8, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    invoke-virtual {v2, v10, v14, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget-boolean v6, v8, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    invoke-virtual {v2, v11, v14, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/systemui/shared/recents/model/Task;->setSecondThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_c
    iget-boolean v6, v8, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    invoke-virtual {v2, v9, v14, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_d
    move-object/from16 v6, p3

    invoke-virtual {v6, v8}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->updateTempToCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object p0
.end method

.method public hasTasks()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mLockApplicationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->isLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v4

    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->isLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v5

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    goto :goto_2

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
    .locals 51

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    monitor-enter p0

    :try_start_0
    iget-object v5, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(IZ)V

    :cond_1
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v10, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_c

    iget-object v12, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getMainTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->hasMultipleTasks()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_3

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isSoscFirstSplitScreenTask(Landroid/app/TaskInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v13, v15

    :goto_1
    move-object/from16 v14, v17

    move-object v15, v14

    const/16 v37, 0x0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isSoscFirstSplitScreenTask(Landroid/app/TaskInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v13, v14

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isSoscFirstSplitScreenTask(Landroid/app/TaskInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v7

    move/from16 v16, v10

    move/from16 v49, v11

    goto/16 :goto_a

    :cond_4
    move/from16 v37, v16

    :goto_2
    iget-object v8, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-static {v13, v8}, Lcom/android/systemui/shared/recents/utilities/WorldCirculate;->getWorldCirculateInfo(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/content/Context;)Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;

    move-result-object v8

    move/from16 v16, v10

    new-instance v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v10, v13, v8}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSplitBoundsConfig()Lcom/android/wm/shell/util/StagedSplitBounds;

    move-result-object v48

    move/from16 v49, v11

    if-eqz v37, :cond_9

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getPrimaryBounds()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual {v12}, Lcom/android/systemui/shared/recents/model/GroupedRecentTaskInfoCompat;->getSecondBounds()Landroid/graphics/Rect;

    move-result-object v12

    new-instance v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v11, v14, v8}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    move-object/from16 v18, v12

    new-instance v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v12, v15, v8}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    invoke-direct {v1, v3, v11}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    invoke-direct {v1, v3, v12}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    iget-boolean v8, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-nez v8, :cond_6

    iget-boolean v8, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    invoke-direct {v1, v4, v11}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    invoke-direct {v1, v4, v12}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    iget-boolean v8, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez v8, :cond_8

    iget-boolean v8, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    iget-object v8, v14, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v50, v7

    const/4 v7, 0x1

    invoke-virtual {v0, v11, v8, v5, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v19, v8

    iget-object v8, v15, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v12, v8, v5, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v11, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v12, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v20

    iget-object v14, v14, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    iget-wide v7, v11, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    iget-wide v14, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->setLastActiveTime(J)V

    move-object/from16 v38, v11

    move-object/from16 v43, v12

    move-object/from16 v42, v17

    move-object/from16 v47, v18

    move-object/from16 v39, v19

    move-object/from16 v45, v20

    move-object/from16 v44, v21

    move-object/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v46, v24

    goto :goto_7

    :cond_9
    move-object/from16 v50, v7

    invoke-direct {v1, v3, v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v7

    iput-boolean v7, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    invoke-direct {v1, v4, v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v7

    iput-boolean v7, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    move-object/from16 v38, v17

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v47, v46

    :goto_7
    iget v7, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v7, v2, :cond_a

    const/16 v26, 0x1

    goto :goto_8

    :cond_a
    const/16 v26, 0x0

    :goto_8
    invoke-virtual {v0, v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v8, v13, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v10, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v0, v10, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v23

    iget-object v8, v13, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v8, v5, v11}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-static {}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v36

    iget-object v8, v13, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v24

    iget-object v8, v13, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v25

    if-eqz v7, :cond_b

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_b

    const/16 v28, 0x1

    goto :goto_9

    :cond_b
    const/16 v28, 0x0

    :goto_9
    new-instance v7, Lcom/android/systemui/shared/recents/model/Task;

    const/16 v21, 0x0

    iget-boolean v8, v13, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    const/16 v30, 0x0

    iget-object v11, v13, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget v12, v13, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    iget-object v14, v13, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v13, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/16 v35, 0x0

    const/16 v27, 0x1

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    move/from16 v29, v8

    move-object/from16 v31, v11

    move/from16 v32, v12

    move-object/from16 v33, v14

    move-object/from16 v34, v13

    invoke-direct/range {v18 .. v48}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Landroid/content/ComponentName;ZZZLcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Rect;Lcom/android/wm/shell/util/StagedSplitBounds;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v8, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v11, 0x0

    invoke-virtual {v9, v8, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    const/4 v11, 0x1

    add-int/2addr v8, v11

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    iget v7, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move-object/from16 v8, v50

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_a
    add-int/lit8 v11, v49, 0x1

    move-object v7, v8

    move/from16 v10, v16

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->updateTempToCache()V

    invoke-virtual {v1, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->lockApplication(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v6, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preloadRawTasks(IZ)V
    .locals 7

    monitor-enter p0

    const/4 v0, -0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

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

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-direct {p2, v0}, Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIsPrintTaskInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mIsPrintTaskInfo:Z

    return-void
.end method

.method public declared-synchronized updatePlan(Ljava/util/Set;Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v7, v4, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

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

    invoke-direct {p0, p2, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    invoke-direct {p0, p2, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

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

    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyThumbnailBlur(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    invoke-direct {p0, p2, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setTaskKeyScreening(Ljava/lang/String;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    :goto_4
    invoke-static {}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->lockApplication(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateTaskAccessLockedState()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/system/SecurityManagerWrapper;->isAccessLocked(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isAccessLocked:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateTaskLockedState(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->lockApplication(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
