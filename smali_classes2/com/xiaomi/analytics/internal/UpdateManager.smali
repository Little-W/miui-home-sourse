.class Lcom/xiaomi/analytics/internal/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;
    }
.end annotation


# static fields
.field private static final CHECK_UPDATE_INTERVAL:J

.field private static volatile sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadUrl:Ljava/lang/String;

.field private mDownloader:Ljava/lang/Runnable;

.field private mForce:I

.field private mMd5:Ljava/lang/String;

.field private mOutPath:Ljava/lang/String;

.field private mUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->HALF_DAY_IN_MS:I

    int-to-long v0, v0

    sput-wide v0, Lcom/xiaomi/analytics/internal/UpdateManager;->CHECK_UPDATE_INTERVAL:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloadUrl:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mMd5:Ljava/lang/String;

    .line 127
    new-instance v0, Lcom/xiaomi/analytics/internal/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/UpdateManager$1;-><init>(Lcom/xiaomi/analytics/internal/UpdateManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdater:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lcom/xiaomi/analytics/internal/UpdateManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/UpdateManager$2;-><init>(Lcom/xiaomi/analytics/internal/UpdateManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloader:Ljava/lang/Runnable;

    .line 72
    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/internal/UpdateManager;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/UpdateManager;->getNonce()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaomi/analytics/internal/UpdateManager;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mForce:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mMd5:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mMd5:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mDownloader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/analytics/internal/UpdateManager;Ljava/lang/String;)J
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/UpdateManager;->parseTs(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(Lcom/xiaomi/analytics/internal/UpdateManager;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/UpdateManager;->saveUpdateTime(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaomi/analytics/internal/UpdateManager;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mOutPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/analytics/internal/UpdateManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/UpdateManager;->notifyApkUpdated()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/UpdateManager;
    .locals 2

    const-class v0, Lcom/xiaomi/analytics/internal/UpdateManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/xiaomi/analytics/internal/UpdateManager;->sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/xiaomi/analytics/internal/UpdateManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/internal/UpdateManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/analytics/internal/UpdateManager;->sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;

    .line 68
    :cond_0
    sget-object p0, Lcom/xiaomi/analytics/internal/UpdateManager;->sInstance:Lcom/xiaomi/analytics/internal/UpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getLastUpdateTime()J
    .locals 4

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "analytics_updater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "updateTime"

    const-wide/16 v2, 0x0

    .line 107
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNonce()Ljava/lang/String;
    .locals 4

    .line 118
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 120
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 124
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/Utils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyApkUpdated()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mOutPath:Ljava/lang/String;

    iget p0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mForce:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;->onApkUpdated(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private parseTs(Ljava/lang/String;)J
    .locals 0

    :try_start_0
    const-string p0, "-"

    .line 219
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 222
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private declared-synchronized saveUpdateTime(J)V
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "analytics_updater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updateTime"

    .line 113
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
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


# virtual methods
.method public checkUpdate(Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "UpdateManager"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/MIUI;->shouldNotAccessNetworkOrLocation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "checkUpdate "

    .line 83
    invoke-static {v1, v0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mOutPath:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdater:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/TaskRunner;->execute(Ljava/lang/Runnable;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/analytics/internal/UpdateManager;->saveUpdateTime(J)V

    return-void
.end method

.method public needCheckUpdate()Z
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "UpdateManager"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/MIUI;->shouldNotAccessNetworkOrLocation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 93
    :cond_0
    invoke-static {}, Lcom/xiaomi/analytics/Analytics;->isUpdateEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Updating is disabled."

    .line 94
    invoke-static {v1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/UpdateManager;->getLastUpdateTime()J

    move-result-wide v3

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "last update check time is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lcom/xiaomi/analytics/internal/UpdateManager;->CHECK_UPDATE_INTERVAL:J

    cmp-long p0, v0, v3

    if-gez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public setUpdateListener(Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaomi/analytics/internal/UpdateManager;->mUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    return-void
.end method
