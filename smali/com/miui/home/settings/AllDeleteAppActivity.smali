.class public final Lcom/miui/home/settings/AllDeleteAppActivity;
.super Lmiui/app/Activity;
.source "AllDeleteAppActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllDeleteAppActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllDeleteAppActivity.kt\ncom/miui/home/settings/AllDeleteAppActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n706#2:178\n783#2,2:179\n*E\n*S KotlinDebug\n*F\n+ 1 AllDeleteAppActivity.kt\ncom/miui/home/settings/AllDeleteAppActivity\n*L\n74#1:178\n74#1,2:179\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private appInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private final mHandler:Landroid/os/Handler;

.field private mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const-string v0, "AllUninstallAppActivity"

    .line 29
    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDeleteAppInfo(Lcom/miui/home/settings/AllDeleteAppActivity;)Ljava/util/List;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateAppStatus(Lcom/miui/home/settings/AllDeleteAppActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateAppStatus()V

    return-void
.end method

.method public static final synthetic access$updateUninstallAppList(Lcom/miui/home/settings/AllDeleteAppActivity;Ljava/util/List;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateUninstallAppList(Ljava/util/List;)V

    return-void
.end method

.method private final getDeleteAppInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getInstallList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appList:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 179
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 75
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/home/settings/AllDeleteAppActivity;->packageExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_2
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 78
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppStatus()Ljava/util/HashMap;

    move-result-object v2

    if-nez v0, :cond_4

    .line 79
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    new-instance v6, Lcom/miui/home/settings/DeleteAppInfo;

    const/4 v7, -0x1

    invoke-direct {v6, v3, v7, v4, v5}, Lcom/miui/home/settings/DeleteAppInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {v3}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    .line 89
    :cond_5
    iget-object v3, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    return-object v0
.end method

.method private final getDeleteAppStatus()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.miui.core.restore.app.status"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 123
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "packageName"

    .line 124
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appInfo"

    .line 125
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v4, Lcom/mi/google/gson/Gson;

    invoke-direct {v4}, Lcom/mi/google/gson/Gson;-><init>()V

    const-class v5, [Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v4, v3, v5}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Gson().fromJson(appInfoJ…leteAppInfo>::class.java)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Lcom/miui/home/settings/DeleteAppInfo;

    .line 131
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/settings/DeleteAppInfo;

    .line 134
    invoke-virtual {v5}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :cond_1
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v4

    .line 127
    :cond_2
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get install config name error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    .line 138
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    const-string v4, "get install config cursor error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    :try_start_6
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v1

    .line 142
    iget-object v2, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    const-string v3, "get install config error"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v0
.end method

.method private final getInstallList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->get(Landroid/content/Context;)Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->loadConfig()V

    .line 116
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v0

    const-string v1, "MIUIAutoInstallsHelper.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final initData()V
    .locals 2

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.core"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    new-instance v0, Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 67
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 68
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/miui/home/settings/AllDeleteAppActivity$initData$2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/AllDeleteAppActivity$initData$2;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    check-cast v1, Lio/reactivex2/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method private final initView()V
    .locals 3

    const v0, 0x7f0a01ed

    .line 154
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.uninstall_app_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "mListView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    new-instance v0, Lcom/miui/home/settings/DeleteAppAdapter;

    invoke-direct {v0, v2}, Lcom/miui/home/settings/DeleteAppAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    .line 157
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string v1, "mListView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    if-nez v1, :cond_2

    const-string v2, "mListAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a010f

    .line 158
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.loading_progress)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private final packageExist(Ljava/lang/String;)Z
    .locals 2

    .line 108
    new-instance v0, Lmiui/autoinstall/config/pm/PackageManagerCompat;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmiui/autoinstall/config/pm/PackageManagerCompat;->packageExists(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final updateAppStatus()V
    .locals 4

    .line 95
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppStatus()Ljava/util/HashMap;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v2}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v3}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateUninstallAppList(Ljava/util/List;)V

    return-void
.end method

.method private final updateUninstallAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    if-nez v0, :cond_0

    const-string v1, "mListAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/DeleteAppAdapter;->setList(Ljava/util/List;)V

    .line 149
    iget-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    const-string v0, "mProgressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    const-string v0, "mListView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0034

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->setContentView(I)V

    const p1, 0x7f1000df

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->setTitle(I)V

    .line 46
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->initView()V

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.miui.core.restore.app.status"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    check-cast v1, Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    .line 49
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 58
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 54
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 162
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 163
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
