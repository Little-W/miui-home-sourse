.class public Lcom/market/sdk/DownloadInstallManager;
.super Ljava/lang/Object;
.source "DownloadInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;,
        Lcom/market/sdk/DownloadInstallManager$WorkerHandler;
    }
.end annotation


# static fields
.field private static final COLUMN_FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final TAG:Ljava/lang/String; = "MarketUpdateDownload"

.field private static mDownloadManager:Landroid/app/DownloadManager;

.field public static sDownloadInstallManager:Lcom/market/sdk/DownloadInstallManager;


# instance fields
.field private mAppInfo:Lcom/market/sdk/LocalAppInfo;

.field private mContext:Landroid/content/Context;

.field private mDownloadId:J

.field private mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

.field private mWorkerHandler:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Lcom/market/sdk/DownloadInstallManager;->mDownloadId:J

    .line 54
    invoke-static {p1}, Lcom/market/sdk/utils/Client;->init(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/market/sdk/DownloadInstallManager;->initDownloadManager()V

    .line 58
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Worker Thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/market/sdk/DownloadInstallManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 59
    iget-object p1, p0, Lcom/market/sdk/DownloadInstallManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance p1, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;-><init>(Lcom/market/sdk/DownloadInstallManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/market/sdk/DownloadInstallManager;->mWorkerHandler:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/DownloadInstallManager;)Lcom/market/sdk/LocalAppInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/market/sdk/DownloadInstallManager;Lcom/market/sdk/LocalAppInfo;)Lcom/market/sdk/LocalAppInfo;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/market/sdk/DownloadInstallManager;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/market/sdk/DownloadInstallManager;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/market/sdk/DownloadInstallManager;->generateInstallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/market/sdk/DownloadInstallManager;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/market/sdk/DownloadInstallManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/market/sdk/DownloadInstallManager;->reloadUpdateInfoFromDB()V

    return-void
.end method

.method static synthetic access$400()Landroid/app/DownloadManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market/sdk/DownloadInstallManager;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/market/sdk/DownloadInstallManager;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/market/sdk/DownloadInstallManager;J)J
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/market/sdk/DownloadInstallManager;->mDownloadId:J

    return-wide p1
.end method

.method private generateInstallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 360
    invoke-static {}, Lcom/market/sdk/utils/Client;->isLaterThanN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".selfupdate.fileprovider"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    iget-object v1, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/market/sdk/LazyFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized getManager(Landroid/content/Context;)Lcom/market/sdk/DownloadInstallManager;
    .locals 2

    const-class v0, Lcom/market/sdk/DownloadInstallManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/market/sdk/DownloadInstallManager;->sDownloadInstallManager:Lcom/market/sdk/DownloadInstallManager;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/market/sdk/DownloadInstallManager;

    invoke-direct {v1, p0}, Lcom/market/sdk/DownloadInstallManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/market/sdk/DownloadInstallManager;->sDownloadInstallManager:Lcom/market/sdk/DownloadInstallManager;

    .line 103
    :cond_0
    sget-object p0, Lcom/market/sdk/DownloadInstallManager;->sDownloadInstallManager:Lcom/market/sdk/DownloadInstallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initDownloadManager()V
    .locals 8

    .line 64
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    const-string v1, "download"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    sput-object v0, Lcom/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 66
    invoke-static {}, Lcom/market/sdk/utils/Client;->isLaterThanN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-class v0, Landroid/app/DownloadManager;

    sget-object v1, Lcom/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    const-string v2, "setAccessFilename"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 68
    invoke-static {v3, v5}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v7

    .line 67
    invoke-static {v0, v1, v2, v3, v5}, Lcom/market/sdk/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized reloadUpdateInfoFromDB()V
    .locals 10

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 149
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market/sdk/XiaomiUpdateAgent;->getAppInfo(Landroid/content/Context;)Lcom/market/sdk/LocalAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    .line 153
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/market/sdk/LocalAppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 154
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 160
    :try_start_2
    iget-object v1, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market/sdk/SDKDatabaseHelper;->getHelper(Landroid/content/Context;)Lcom/market/sdk/SDKDatabaseHelper;

    move-result-object v2

    const-string v3, "update_download"

    sget-object v4, Lcom/market/sdk/utils/Constants$Update;->UPDATE_PROJECTION:[Ljava/lang/String;

    const-string v5, "package_name=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    iget-object v7, v7, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/market/sdk/SDKDatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "download_id"

    .line 165
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/market/sdk/DownloadInstallManager;->mDownloadId:J

    .line 166
    new-instance v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-direct {v1}, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;-><init>()V

    const-string v2, "version_code"

    .line 168
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 167
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->versionCode:I

    const-string v2, "apk_url"

    .line 170
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 169
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkUrl:Ljava/lang/String;

    const-string v2, "apk_hash"

    .line 172
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 171
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->apkHash:Ljava/lang/String;

    const-string v2, "diff_url"

    .line 174
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 173
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    const-string v2, "diff_hash"

    .line 176
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 175
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 183
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 183
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 183
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized arrange(Lcom/market/sdk/LocalAppInfo;Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;)V
    .locals 0

    monitor-enter p0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    .line 77
    iput-object p1, p0, Lcom/market/sdk/DownloadInstallManager;->mAppInfo:Lcom/market/sdk/LocalAppInfo;

    .line 78
    iget-object p1, p0, Lcom/market/sdk/DownloadInstallManager;->mWorkerHandler:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-virtual {p1}, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->arrange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 74
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public getDowloadId()J
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/market/sdk/DownloadInstallManager;->reloadUpdateInfoFromDB()V

    .line 83
    iget-wide v0, p0, Lcom/market/sdk/DownloadInstallManager;->mDownloadId:J

    return-wide v0
.end method

.method public handleDownloadComplete(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 87
    iget-wide v0, p0, Lcom/market/sdk/DownloadInstallManager;->mDownloadId:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-static {v0, v1}, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->find(J)Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    iget p2, p1, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->status:I

    const/16 v0, 0x10

    if-eq p2, v0, :cond_2

    iget-object p2, p1, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->downloadFilePath:Ljava/lang/String;

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/market/sdk/DownloadInstallManager;->mWorkerHandler:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    iget-object p1, p1, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mUpdateInfo:Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget-object v0, v0, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->install(Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public isDownloading(Lcom/market/sdk/LocalAppInfo;)Z
    .locals 10

    .line 107
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market/sdk/SDKDatabaseHelper;->getHelper(Landroid/content/Context;)Lcom/market/sdk/SDKDatabaseHelper;

    move-result-object v1

    const-string v2, "update_download"

    sget-object v3, Lcom/market/sdk/utils/Constants$Update;->UPDATE_PROJECTION:[Ljava/lang/String;

    const-string v4, "package_name=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-object p1, p1, Lcom/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/market/sdk/SDKDatabaseHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_1

    .line 114
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "download_id"

    .line 115
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_0
    throw v0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v1, v3, v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v9

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_4
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 127
    new-array v1, v0, [J

    aput-wide v3, v1, v9

    invoke-virtual {p1, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 128
    sget-object v1, Lcom/market/sdk/DownloadInstallManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_6

    .line 131
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "status"

    .line 133
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 132
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_5

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_5
    throw v0

    :cond_6
    :goto_1
    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    if-eq v1, v0, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    if-eqz p1, :cond_7

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return v9

    :cond_8
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v0
.end method
