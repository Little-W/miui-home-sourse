.class public Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;
.super Ljava/lang/Object;
.source "RussiaPreInstallAppsRepository.java"


# static fields
.field private static volatile instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;


# instance fields
.field private dataSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/russia/RussiaPreInstallApp;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;
    .locals 2

    .line 51
    sget-object v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    invoke-direct {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    return-object v0
.end method

.method static synthetic lambda$getDataFromDeepLink$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "kbjay_russia_repository"

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V
    .locals 3

    const-string v0, "kbjay_russia_repository"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63d2\u5165\u6570\u636e\u5e93"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->resolve()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public getDataFromDeepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details/detailfloat?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 329
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "packageName"

    const-string v3, "id"

    .line 330
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "&appClientId"

    const-string v3, "appClientId"

    .line 331
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "&appSignature"

    const-string v3, "appSignature"

    .line 332
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "&nonce"

    const-string v3, "nonce"

    .line 333
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance p1, Lcom/miui/home/launcher/russia/-$$Lambda$RussiaPreInstallAppsRepository$H-XKjZfDBBd-Plr0e2BazfL50EM;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/russia/-$$Lambda$RussiaPreInstallAppsRepository$H-XKjZfDBBd-Plr0e2BazfL50EM;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string p1, "&ref=com.miui.home&senderPackageName=com.miui.home&ext_xxx=com.miui.home&show_cta=true&overlayPosition=1&startDownload=true&showToast=true"

    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDataSource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/russia/RussiaPreInstallApp;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    return-object v0
.end method

.method public handleChangeContainerMessage(Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 282
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getStartContainer()J

    move-result-wide v1

    .line 293
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getEndContainer()J

    move-result-wide v3

    .line 294
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getShortCutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isRussiaFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppLeaveRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 306
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isRussiaFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppMoveToRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public initDataSource()V
    .locals 9

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    if-nez v0, :cond_3

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kbjay_russia_repository"

    const-string v2, "\u67e5\u627e\u6570\u636e\u5e93\uff0c\u83b7\u53d6\u6240\u6709\u6570\u636e"

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    new-instance v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const-string v2, "package_name"

    .line 84
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "class_name"

    .line 85
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "flag"

    .line 86
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v2, "click_time"

    .line 87
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 89
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "kbjay_russia_repository"

    const-string v3, "initDataSource failed"

    .line 93
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 96
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_2
    throw v1

    :cond_3
    const-string v0, "kbjay_russia_repository"

    const-string v1, "Datasource\u4e0d\u4e3a\u7a7a\uff0c\u4e0d\u7528\u4ece\u6570\u636e\u5e93\u83b7\u53d6"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 102
    :goto_4
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const-string v1, "kbjay_russia_repository"

    .line 103
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public onAppInfoRemoved(Ljava/lang/String;)V
    .locals 5

    const-string v0, "kbjay_russia_repository"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppInfoRemoved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v2, "package_name=? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 233
    iget-object v1, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "kbjay_russia_repository"

    const-string v1, "onAppInfoRemoved failed"

    .line 238
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public onAppLeaveRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "kbjay_russia_repository"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppLeaveRussiaFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "flag"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_name=? AND class_name =?"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v1, 0x1

    aput-object p2, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 202
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 203
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "flag"

    and-int/lit8 v2, v2, -0x41

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "kbjay_russia_repository"

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u66f4\u65b0APP\u4e3a\u4e0d\u5728folder\u4e2d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v6, "_id=? "

    new-array v1, v1, [Ljava/lang/String;

    .line 208
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 206
    invoke-virtual {v2, v5, v4, v6, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object v1, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    .line 212
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    .line 213
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object v1, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->className:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->removeFlag(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "kbjay_russia_repository"

    const-string v0, "onAppLeaveRussiaFolder failed"

    .line 219
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public onAppMoveToRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "kbjay_russia_repository"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppMoveToRussiaFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "flag"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name=? AND class_name=? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v8, 0x1

    aput-object p2, v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 160
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    if-eq v2, v1, :cond_2

    .line 165
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flag"

    const/16 v4, 0x40

    or-int/2addr v3, v4

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v8, [Ljava/lang/String;

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 167
    invoke-virtual {v1, v3, p2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v7, p2, :cond_3

    .line 171
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object p2, p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->addFlag(I)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 176
    :cond_2
    new-instance v7, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const/16 v4, 0x50

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 178
    iget-object p1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->resolve()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 179
    iget-object p1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "kbjay_russia_repository"

    const-string v1, "onAppMoveToRussiaFolder failed"

    .line 182
    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 185
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_5
    throw p1
.end method

.method public onGPLinkRemoved(Ljava/lang/String;)V
    .locals 8

    const-string v0, "kbjay_russia_repository"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGPLinkRemoved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "flag"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_name=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_0
    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 118
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x10

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eq v4, v3, :cond_3

    const-string v2, "kbjay_russia_repository"

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220 gplink "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v5, "_id=? "

    new-array v0, v0, [Ljava/lang/String;

    .line 128
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 126
    invoke-virtual {v2, v3, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 133
    iget-object v2, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "kbjay_russia_repository"

    const-string v1, "onGPLinkRemoved failed"

    .line 140
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public onGpLinkClick(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V
    .locals 8

    const-string v0, "kbjay_russia_repository"

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGpLinkClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getInstance()Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getAutoInstallDeepLink(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string p2, "_id"

    const-string v0, "flag"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name=?"

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 252
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 254
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eq v3, v2, :cond_3

    .line 261
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "click_time"

    .line 263
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v7, "_id=? "

    new-array p2, p2, [Ljava/lang/String;

    .line 266
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    .line 264
    invoke-virtual {v2, v6, v1, v7, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 269
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object p2, p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {p2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result p2

    if-nez p2, :cond_2

    .line 270
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iput-wide v4, p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->clickTime:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "kbjay_russia_repository"

    const-string v0, "onGpLinkClick failed"

    .line 275
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method
