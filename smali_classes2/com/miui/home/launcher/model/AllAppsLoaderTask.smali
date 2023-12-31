.class public Lcom/miui/home/launcher/model/AllAppsLoaderTask;
.super Ljava/lang/Object;
.source "AllAppsLoaderTask.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;
    }
.end annotation


# instance fields
.field private final isDrawMode:Z

.field private mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

.field private mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

.field private final mCallback:Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;

.field private final mProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStopped:Z

.field private mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/model/LauncherAppsProvider;Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p3, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mCallback:Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mResolver:Landroid/content/ContentResolver;

    if-nez p2, :cond_0

    .line 39
    new-instance p2, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;

    invoke-direct {p2}, Lcom/miui/home/launcher/model/DefaultLauncherAppsProvider;-><init>()V

    .line 41
    :cond_0
    iput-object p2, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    .line 42
    sget-object p1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-ne p4, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->isDrawMode:Z

    return-void
.end method

.method private declared-synchronized isStopped()Z
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeInvalidateCategory()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllCategoryList;->getAllCategoryId()Ljava/util/Collection;

    move-result-object v1

    .line 109
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 111
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->getCategories()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/LauncherCategory$Category;->removeEmptyCategory(Landroid/content/ContentResolver;Ljava/util/Collection;)V

    .line 117
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 120
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/AllCategoryList;->removeCategory(I)V

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public init(Lcom/miui/home/launcher/LauncherModel;Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AllCategoryList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 47
    iput-object p2, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    .line 48
    iput-object p3, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    .line 49
    iput-object p4, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic lambda$run$0$AllAppsLoaderTask()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mCallback:Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;

    iget-object p0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;->bindAllApplications(Ljava/util/ArrayList;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->isDrawMode:Z

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "update_default_app_category"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherCategory$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAll()V

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllCategoryList;->clear()V

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllLauncherActivityInfo()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->loadApps()V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->getAllLauncherActivityInfo()Ljava/util/Collection;

    move-result-object v0

    .line 69
    iget-boolean v1, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->isDrawMode:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CategorySettingHelper;->isInitAppCategory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 71
    iget-object v3, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/LauncherCategory$Repository;->getAppCategory(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/miui/home/launcher/LauncherCategory$Category;->addDefaultAppCategory(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z

    .line 73
    iget-object v4, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/miui/home/launcher/util/ComponentKey;->from(Landroid/content/pm/LauncherActivityInfo;)Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->addAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;Ljava/util/HashSet;)Z

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/CategorySettingHelper;->setInitAppCategoryDone()V

    goto :goto_0

    .line 77
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 78
    iget-object v2, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/AllAppsList;->getAppFilter()Lcom/miui/home/launcher/AppFilter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    new-instance v4, Lcom/miui/home/launcher/AppInfo;

    iget-object v5, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mProvider:Lcom/miui/home/launcher/model/LauncherAppsProvider;

    invoke-interface {v5, v2}, Lcom/miui/home/launcher/model/LauncherAppsProvider;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    invoke-direct {v4, v1, v2, v5}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    invoke-virtual {v3, v4, v1}, Lcom/miui/home/launcher/AllAppsList;->add(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)Z

    goto :goto_1

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    .line 85
    iget-boolean v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->isDrawMode:Z

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllCategoryList:Lcom/miui/home/launcher/AllCategoryList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AllCategoryList;->loadAllAppCategory()V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mAllAppsList:Lcom/miui/home/launcher/AllAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->removeInvalidateConfig(Landroid/content/ContentResolver;Ljava/util/Collection;)V

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->removeInvalidateCategory()V

    .line 91
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mCallback:Lcom/miui/home/launcher/model/AllAppsLoaderTask$LoaderCallback;

    if-eqz v0, :cond_8

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/home/launcher/model/-$$Lambda$AllAppsLoaderTask$btPf75HhhHEF3PFJf2cXyQO8WPc;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/model/-$$Lambda$AllAppsLoaderTask$btPf75HhhHEF3PFJf2cXyQO8WPc;-><init>(Lcom/miui/home/launcher/model/AllAppsLoaderTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public declared-synchronized stopLocked()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 128
    :try_start_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/model/AllAppsLoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
