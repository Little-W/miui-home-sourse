.class public final Lcom/miui/home/settings/AllDeleteAppActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AllDeleteAppActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllDeleteAppActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllDeleteAppActivity.kt\ncom/miui/home/settings/AllDeleteAppActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n734#2:226\n825#2,2:227\n*E\n*S KotlinDebug\n*F\n+ 1 AllDeleteAppActivity.kt\ncom/miui/home/settings/AllDeleteAppActivity\n*L\n78#1:226\n78#1,2:227\n*E\n"
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

    .line 31
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "AllUninstallAppActivity"

    .line 32
    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDeleteAppInfo(Lcom/miui/home/settings/AllDeleteAppActivity;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateAppStatus(Lcom/miui/home/settings/AllDeleteAppActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateAppStatus()V

    return-void
.end method

.method public static final synthetic access$updateUninstallAppList(Lcom/miui/home/settings/AllDeleteAppActivity;Ljava/util/List;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->updateUninstallAppList(Ljava/util/List;)V

    return-void
.end method

.method private final getDeleteAppInfo()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getInstallList()Ljava/util/List;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getPreinstallDeleteAppinfo()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 78
    check-cast v0, Ljava/lang/Iterable;

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 227
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

    .line 79
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/home/settings/AllDeleteAppActivity;->packageExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/miui/home/settings/AllDeleteAppActivity;->notInPreinstallList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_2
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 82
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppStatus()Ljava/util/HashMap;

    move-result-object v2

    if-nez v0, :cond_4

    .line 83
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

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    new-instance v10, Lcom/miui/home/settings/DeleteAppInfo;

    const/4 v6, -0x1

    sget-object v9, Lcom/miui/home/settings/DeleteAppInfo$FromType;->MIUI_AUTO_PARSE:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    move-object v4, v10

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/settings/DeleteAppInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/miui/home/settings/DeleteAppInfo$FromType;)V

    if-eqz v2, :cond_5

    .line 88
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v3, :cond_5

    .line 90
    invoke-virtual {v3}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    .line 93
    :cond_5
    iget-object v3, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->appInfoList:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 95
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

    .line 165
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

    .line 167
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

    .line 168
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "packageName"

    .line 169
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appInfo"

    .line 170
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
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

    .line 175
    :cond_0
    new-instance v4, Lcom/mi/google/gson/Gson;

    invoke-direct {v4}, Lcom/mi/google/gson/Gson;-><init>()V

    const-class v5, [Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v4, v3, v5}, Lcom/mi/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Gson().fromJson(appInfoJ\u2026leteAppInfo>::class.java)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Lcom/miui/home/settings/DeleteAppInfo;

    .line 176
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/settings/DeleteAppInfo;

    .line 179
    invoke-virtual {v5}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :cond_1
    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v4

    .line 172
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

    .line 173
    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    .line 183
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->TAG:Ljava/lang/String;

    const-string v4, "get install config cursor error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
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

    .line 187
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

    .line 155
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->getUninstallInstallInfo(Landroid/content/Context;)Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsParser;->loadConfig()V

    .line 158
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v0

    const-string v1, "MIUIAutoInstallsHelper.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getPreinstallDeleteAppinfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/preInstall/UninstallAppUtils;->getDeleteAppInfoFromXml(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "UninstallAppUtils.getDel\u2026omXml(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final initData()V
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.autoinstall.config.ACTION_SINGLE_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.core"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    new-instance v0, Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;-><init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 69
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 70
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    .line 71
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

    const v0, 0x7f0a02cf

    .line 202
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.uninstall_app_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
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

    .line 204
    new-instance v0, Lcom/miui/home/settings/DeleteAppAdapter;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/home/settings/DeleteAppAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    .line 205
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

    const v0, 0x7f0a0178

    .line 206
    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllDeleteAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.loading_progress)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private final isGlobal()Z
    .locals 5

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/settings/AllDeleteAppActivity;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 133
    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "_global"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final notInPreinstallList(Ljava/lang/String;)Z
    .locals 1

    .line 148
    sget-object v0, Lcom/miui/home/settings/preInstall/UninstallAppUtils;->preInstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final packageExist(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v1, "this.packageManager.getA\u2026ionInfo(packageName, 128)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->isGlobal()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 123
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "miui_app_stub"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, v2

    :catch_0
    :goto_1
    return v0
.end method

.method private final updateAppStatus()V
    .locals 4

    .line 106
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getDeleteAppStatus()Ljava/util/HashMap;

    move-result-object v0

    .line 107
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

    .line 109
    invoke-virtual {v2}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/settings/DeleteAppInfo;

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v3}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    goto :goto_0

    .line 115
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

    .line 196
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mListAdapter:Lcom/miui/home/settings/DeleteAppAdapter;

    if-nez v0, :cond_0

    const-string v1, "mListAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/DeleteAppAdapter;->setList(Ljava/util/List;)V

    .line 197
    iget-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    const-string v0, "mProgressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
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
.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "def"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 138
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    .line 139
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 140
    const-class v3, Ljava/lang/String;

    const-string v6, "get"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v3, v6, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "AutoInstallRequestUtil"

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0051

    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->setContentView(I)V

    const p1, 0x7f10016e

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->setTitle(I)V

    .line 48
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->initView()V

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.miui.core.restore.app.status"

    .line 50
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    check-cast v1, Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 60
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->deleteAppContentObserver:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 55
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStart()V

    .line 56
    invoke-direct {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->initData()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 210
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 211
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
