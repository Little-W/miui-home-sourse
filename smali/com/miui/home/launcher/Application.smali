.class public Lcom/miui/home/launcher/Application;
.super Lmiui/external/Application;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Application$_lancet;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/Application;


# instance fields
.field private mCEBaseContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private mOldVersion:I

.field mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mUpgradeInApplicationSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    .line 39
    iput v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 153
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;
    .locals 1

    .line 149
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;
    .locals 0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Application;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherApplication;

    return-object p0
.end method

.method private initXlog()V
    .locals 5

    .line 72
    new-instance v0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    sget-object v1, Lcom/miui/home/launcher/log/LogWorker;->Companion:Lcom/miui/home/launcher/log/LogWorker$Companion;

    .line 73
    invoke-virtual {v1}, Lcom/miui/home/launcher/log/LogWorker$Companion;->getCACHE_APP_LOG_DIR_PATH()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/elvishew/xlog/printer/file/naming/DateFileNameGenerator;

    invoke-direct {v1}, Lcom/elvishew/xlog/printer/file/naming/DateFileNameGenerator;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v0

    new-instance v1, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;

    invoke-direct {v1}, Lcom/elvishew/xlog/printer/file/backup/NeverBackupStrategy;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v0

    new-instance v1, Lcom/elvishew/xlog/printer/file/clean/FileLastModifiedCleanStrategy;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    .line 76
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/elvishew/xlog/printer/file/clean/FileLastModifiedCleanStrategy;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Application$By1Si-8MCHkut15HpTryuCTQwnY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Application$By1Si-8MCHkut15HpTryuCTQwnY;-><init>(Lcom/miui/home/launcher/Application;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->build()Lcom/elvishew/xlog/printer/file/FilePrinter;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/elvishew/xlog/LogConfiguration$Builder;

    invoke-direct {v1}, Lcom/elvishew/xlog/LogConfiguration$Builder;-><init>()V

    const/high16 v2, -0x80000000

    .line 80
    invoke-virtual {v1, v2}, Lcom/elvishew/xlog/LogConfiguration$Builder;->logLevel(I)Lcom/elvishew/xlog/LogConfiguration$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/elvishew/xlog/LogConfiguration$Builder;->tag(Ljava/lang/String;)Lcom/elvishew/xlog/LogConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elvishew/xlog/LogConfiguration$Builder;->build()Lcom/elvishew/xlog/LogConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    .line 81
    new-array v2, v2, [Lcom/elvishew/xlog/printer/Printer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/elvishew/xlog/XLog;->init(Lcom/elvishew/xlog/LogConfiguration;[Lcom/elvishew/xlog/printer/Printer;)V

    return-void
.end method

.method public static synthetic lambda$initXlog$0(Lcom/miui/home/launcher/Application;JILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/miui/home/launcher/Application;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$loadModules$1(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object p0

    const-string v0, "com.miui.newhome"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private loadModules()V
    .locals 2

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedDecouple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->addDecoupleModule(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Application$WBDkyRwGpN-x0qxBCyyOOO-cuDM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Application$WBDkyRwGpN-x0qxBCyyOOO-cuDM;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgrade()V
    .locals 2

    .line 117
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherVersionUtils;->onUpgrade(Landroid/content/Context;II)V

    return-void
.end method

.method private resolveVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 2

    .line 100
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v0, "app_version"

    const/4 v1, -0x1

    .line 101
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->migrateData()V

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    goto :goto_0

    .line 108
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    if-ge p1, v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->onUpgrade()V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    .line 112
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lmiui/external/Application;->attachBaseContext(Landroid/content/Context;)V

    const-string v0, "Launcher.application"

    const-string v1, "application attached"

    .line 53
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Application$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    .line 55
    sput-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initXlog()V

    .line 57
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->init(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->resolveVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 59
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 62
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    .line 63
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calculateDatabaseName(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->loadModules()V

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/common/ILauncherMonitor;->init(Lcom/miui/home/launcher/Application;)V

    .line 66
    sget-object v0, Lcom/miui/home/launcher/log/LogReceiver;->INSTANCE:Lcom/miui/home/launcher/log/LogReceiver;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/log/LogReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public getCEBaseContex()Landroid/content/Context;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method public migrateData()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveSharedPreferenceForDirectBoot(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->moveAllSharedPreferenceToOneFile(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherProvider;->moveDataBaseForDirectBoot(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->moveClockGadgetBackup(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    :cond_0
    return-void
.end method

.method public needToMigrate()Z
    .locals 2

    .line 121
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mUpgradeInApplicationSuccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .line 46
    new-instance v0, Lcom/miui/home/launcher/LauncherApplication;

    invoke-direct {v0}, Lcom/miui/home/launcher/LauncherApplication;-><init>()V

    return-object v0
.end method

.method public upgradeAppVersion()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    const-string v1, "app_version"

    iget v2, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
