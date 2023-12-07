.class public Lcom/xiaomi/analytics/internal/SdkManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;
    }
.end annotation


# static fields
.field private static final SCREEN_OFF_STABLE_INTERVAL:I

.field private static sFileLock:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

.field private static sUseSysAnalyticsOnly:Z


# instance fields
.field private dexInitTask:Ljava/lang/Runnable;

.field private mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

.field private mAnalyticsUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

.field private mContext:Landroid/content/Context;

.field private mDontUseSysAnalytics:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeavyWorker:Ljava/lang/Runnable;

.field private volatile mInitialized:Z

.field private mLastScreenOffTime:J

.field private mLastUpdateCheck:J

.field private mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

.field private mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

.field private mScreenOff:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

.field private mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

.field private mUpdateChecker:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_SECOND_IN_MS:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/analytics/internal/SdkManager;->SCREEN_OFF_STABLE_INTERVAL:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/analytics/internal/SdkManager;->sUseSysAnalyticsOnly:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastUpdateCheck:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    iput-boolean v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mDontUseSysAnalytics:Z

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$1;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mUpdateChecker:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$2;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHeavyWorker:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$3;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalyticsUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$4;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$4;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/xiaomi/analytics/internal/SdkManager$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/SdkManager$5;-><init>(Lcom/xiaomi/analytics/internal/SdkManager;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->dexInitTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/AndroidUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string p1, "connectivity"

    sput-object p1, Lcom/xiaomi/analytics/internal/SdkManager;->sFileLock:Ljava/lang/Object;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "api-sdkmgr"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/UpdateManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/UpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalyticsUpdateListener:Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;

    invoke-virtual {p1, v0}, Lcom/xiaomi/analytics/internal/UpdateManager;->setUpdateListener(Lcom/xiaomi/analytics/internal/UpdateManager$UpdateListener;)V

    sget-object p1, Lcom/xiaomi/analytics/internal/util/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHeavyWorker:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadAssetAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadLocalAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/analytics/internal/SdkManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->savePreviousLoadDex(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadDexUnderScreenOff()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->doCheckUpdate()V

    return-void
.end method

.method static synthetic access$1602(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/xiaomi/analytics/internal/SdkManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/xiaomi/analytics/internal/SdkManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenOff:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/xiaomi/analytics/internal/SdkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/xiaomi/analytics/internal/SdkManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getScreenOffStableInterval()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/analytics/internal/SdkManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkApkPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaomi/analytics/internal/SdkManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/SdkManager;->postDexInit(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaomi/analytics/internal/SdkManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/xiaomi/analytics/internal/SdkManager;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaomi/analytics/internal/SdkManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->isScreenOffStabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/internal/SdkManager;->sFileLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/analytics/internal/SdkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->prepareDirs()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaomi/analytics/internal/SdkManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mDontUseSysAnalytics:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/analytics/internal/SdkManager;->sUseSysAnalyticsOnly:Z

    return v0
.end method

.method static synthetic access$700(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->loadSysAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/analytics/internal/SdkManager;)Lcom/xiaomi/analytics/internal/v1/SysAnalytics;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/analytics/internal/SdkManager;Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/SdkManager;->notifyAnalyticsReady(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    return-void
.end method

.method private declared-synchronized doCheckUpdate()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/xiaomi/analytics/internal/util/TimeUtils;->ONE_HOUR_IN_MS:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastUpdateCheck:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastUpdateCheck:J

    sget-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mUpdateChecker:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAssetApkPath()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "analytics_asset.apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAssetSoPath()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/asset_lib/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/SdkManager;
    .locals 2

    const-class v0, Lcom/xiaomi/analytics/internal/SdkManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/analytics/internal/SdkManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/analytics/internal/SdkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;

    :cond_0
    sget-object p0, Lcom/xiaomi/analytics/internal/SdkManager;->sInstance:Lcom/xiaomi/analytics/internal/SdkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPreviousLoadDex()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string v1, "analytics_api"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "pld"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPreviousLoadDex exception"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private getScreenOffStableInterval()I
    .locals 0

    sget-boolean p0, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x2710

    goto :goto_0

    :cond_0
    sget p0, Lcom/xiaomi/analytics/internal/SdkManager;->SCREEN_OFF_STABLE_INTERVAL:I

    :goto_0
    return p0
.end method

.method private getSdkApkPath()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "analytics.apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSdkRootFolder()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string v0, "analytics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSoPath()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkRootFolder()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/lib/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAndroidPOrAbove()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isApkSuitableForAndroidPOrAbove(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SdkManager"

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " verName: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/xiaomi/analytics/internal/Version;

    invoke-direct {p1, p0}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/xiaomi/analytics/internal/Version;

    const-string v2, "2.7.3"

    invoke-direct {p0, v2}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    return v1

    :catch_0
    move-exception p0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isApkSuitableForAndroidPOrAbove exception: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isScreenOffStabled()Z
    .locals 5

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getScreenOffStableInterval()I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenOff:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mLastScreenOffTime:J

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/analytics/internal/util/TimeUtils;->expired(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadAssetAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 8

    const-string v0, "SdkManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "analytics_core"

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    aget-object v6, v3, v4

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/xiaomi/analytics/internal/util/AssetUtils;->extractAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->isAndroidPOrAbove()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/analytics/internal/SdkManager;->isApkSuitableForAndroidPOrAbove(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Not suitable for Android P, so delete it"

    invoke-static {v0, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetSoPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaomi/analytics/internal/util/ApkTools;->extractSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetSoPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v4, p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "loadAssetAnalytics exception"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method private loadDexUnderScreenOff()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getPreviousLoadDex()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPendingDex:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->registerReceiver()V

    return-void
.end method

.method private loadLocalAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 6

    const-string v0, "SdkManager"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->isAndroidPOrAbove()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSdkApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/xiaomi/analytics/internal/SdkManager;->isApkSuitableForAndroidPOrAbove(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "Not suitable for Android P, so delete it"

    invoke-static {v0, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSoPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/analytics/internal/util/ApkTools;->extractSo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSoPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, v2, p0}, Lcom/xiaomi/analytics/internal/v1/DexAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "loadLocalAnalytics exception"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method private loadSysAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/v1/SysAnalytics;->waitForConnected()V

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSysAnalytics:Lcom/xiaomi/analytics/internal/v1/SysAnalytics;

    return-object p0
.end method

.method private notifyAnalyticsReady(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/analytics/internal/util/ALog;->sEnable:Z

    invoke-interface {p1, v0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->setDebugOn(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Analytics module loaded, version is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SdkManager"

    invoke-static {v0, p1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-interface {p1, v0}, Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;->onSdkCorePrepared(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    invoke-virtual {p1, p0}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_1
    return-void
.end method

.method private postDexInit(J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->dexInitTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->dexInitTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "SdkManager"

    const-string p1, "post dex init task"

    invoke-static {p0, p1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareDirs()V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getSoPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/io/File;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAssetSoPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/FileUtils;->deleteAllFiles(Ljava/io/File;)V

    :goto_1
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    const-string v0, "SdkManager"

    const-string v1, "register screen receiver"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private savePreviousLoadDex(Z)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mContext:Landroid/content/Context;

    const-string v0, "analytics_api"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pld"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SdkManager"

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "savePreviousLoadDex exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setUseSysAnalyticsOnly()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/analytics/internal/SdkManager;->sUseSysAnalyticsOnly:Z

    return-void
.end method


# virtual methods
.method public getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    return-object p0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/Version;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->getAnalytics()Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;->getVersion()Lcom/xiaomi/analytics/internal/Version;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/xiaomi/analytics/internal/Version;

    const-string v0, "0.0.0"

    invoke-direct {p0, v0}, Lcom/xiaomi/analytics/internal/Version;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public pollUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/SdkManager;->doCheckUpdate()V

    :cond_0
    return-void
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mDontUseSysAnalytics:Z

    return-void
.end method

.method public setOnSdkPrepareListener(Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mSdkCorePreparedListener:Lcom/xiaomi/analytics/internal/SdkManager$OnSdkCorePrepareListener;

    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object p1, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mAnalytics:Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/analytics/internal/SdkManager;->mPolicyConfiguration:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/v1/AnalyticsInterface;)V

    :cond_0
    return-void
.end method
