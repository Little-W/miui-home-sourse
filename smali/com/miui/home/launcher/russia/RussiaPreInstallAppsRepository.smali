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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;
    .locals 2

    .line 54
    sget-object v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    invoke-direct {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->instance:Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    return-object v0
.end method


# virtual methods
.method public addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V
    .locals 3

    const-string v0, "kbjay_russia_repository"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "插入数据库"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->resolve()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
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

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    return-object v0
.end method

.method public handleChangeContainerMessage(Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 285
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 295
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getStartContainer()J

    move-result-wide v1

    .line 296
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getEndContainer()J

    move-result-wide v3

    .line 297
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->getShortCutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isRussiaFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppLeaveRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isRussiaFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
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

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kbjay_russia_repository"

    const-string/jumbo v2, "查找数据库\uff0c获取所有数据"

    .line 82
    .line 83
    iget-object v3, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    new-instance v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const-string v2, "package_name"

    .line 87
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "class_name"

    .line 88
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "flag"

    .line 89
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v2, "click_time"

    .line 90
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 92
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    if-eqz v0, :cond_4

    .line 99
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_2
    throw v1

    :cond_3
    const-string v0, "kbjay_russia_repository"

    const-string v1, "Datasource不为空\uff0c不用从数据库获取"

    .line 103
    :cond_4
    :goto_3
    const/4 v0, 0x0

    .line 105
    :goto_4
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const-string v1, "kbjay_russia_repository"

    .line 106
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public onAppInfoRemoved(Ljava/lang/String;)V
    .locals 5

    const-string v0, "kbjay_russia_repository"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppInfoRemoved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v2, "package_name=? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 236
    iget-object v1, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "kbjay_russia_repository"

    const-string v1, "onAppInfoRemoved failed"

    .line 241
    :cond_1
    return-void
.end method

.method public onAppLeaveRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "kbjay_russia_repository"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppLeaveRussiaFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
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

    .line 203
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 205
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 206
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "flag"

    and-int/lit8 v2, v2, -0x41

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "kbjay_russia_repository"

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "更新APP为不在folder中"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v6, "_id=? "

    new-array v1, v1, [Ljava/lang/String;

    .line 211
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 209
    invoke-virtual {v2, v5, v4, v6, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object v1, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    .line 215
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    .line 216
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object v1, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->className:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
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

    .line 222
    :cond_1
    return-void
.end method

.method public onAppMoveToRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "kbjay_russia_repository"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppMoveToRussiaFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 151
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

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 163
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    if-eq v2, v1, :cond_2

    .line 168
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "flag"

    const/16 v4, 0x40

    or-int/2addr v3, v4

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    iget-object v1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v8, [Ljava/lang/String;

    .line 172
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 170
    invoke-virtual {v1, v3, p2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v7, p2, :cond_3

    .line 174
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    iget-object p2, p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 175
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->addFlag(I)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 179
    :cond_2
    new-instance v7, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const/16 v4, 0x50

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 181
    iget-object p1, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->resolve()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 182
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v0, :cond_4

    .line 188
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_5
    throw p1
.end method

.method public onGPLinkRemoved(Ljava/lang/String;)V
    .locals 8

    const-string v0, "kbjay_russia_repository"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGPLinkRemoved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
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

    .line 119
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 121
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

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "删 gplink "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v5, "_id=? "

    new-array v0, v0, [Ljava/lang/String;

    .line 131
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 129
    invoke-virtual {v2, v3, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 136
    iget-object v2, v1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "kbjay_russia_repository"

    const-string v1, "onGPLinkRemoved failed"

    .line 143
    :cond_3
    return-void
.end method

.method public onGpLinkClick(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V
    .locals 8

    const-string v0, "kbjay_russia_repository"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGpLinkClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getInstance()Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository;->getAutoInstallDeepLink(Ljava/lang/String;Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallRepository$CallBack;)V

    .line 250
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

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 257
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

    .line 264
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "click_time"

    .line 266
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    iget-object v2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/miui/home/launcher/AppStatusProvider;->TABLE_APP_STATE_URI:Landroid/net/Uri;

    const-string v7, "_id=? "

    new-array p2, p2, [Ljava/lang/String;

    .line 269
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    .line 267
    invoke-virtual {v2, v6, v1, v7, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->dataSource:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 272
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

    .line 273
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

    .line 278
    :cond_3
    return-void
.end method
