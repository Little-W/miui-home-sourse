.class public Lcom/miui/home/launcher/monitor/LauncherMonitor;
.super Ljava/lang/Object;
.source "LauncherMonitor.java"

# interfaces
.implements Lcom/miui/home/launcher/common/ILauncherMonitor;


# static fields
.field private static sAndroidHeapDumper:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

.field private static sInstance:Lcom/miui/home/launcher/monitor/LauncherMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/miui/home/launcher/monitor/LauncherMonitor;

    invoke-direct {v0}, Lcom/miui/home/launcher/monitor/LauncherMonitor;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/monitor/LauncherMonitor;->sInstance:Lcom/miui/home/launcher/monitor/LauncherMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;
    .locals 1

    .line 99
    sget-object v0, Lcom/miui/home/launcher/monitor/LauncherMonitor;->sInstance:Lcom/miui/home/launcher/monitor/LauncherMonitor;

    return-object v0
.end method

.method static synthetic lambda$dumpHeap$0(Ljava/lang/Void;)Ljava/io/File;
    .locals 0

    .line 86
    sget-object p0, Lcom/miui/home/launcher/monitor/LauncherMonitor;->sAndroidHeapDumper:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

    invoke-virtual {p0}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->dumpHeap()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dumpHeap$1(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump hprof success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {v1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v1, "dump fail"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dumpHeap()V
    .locals 4

    .line 85
    sget-object v0, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$3tzeMglXNy5IN4qY1d-CgpMEEFM;->INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$3tzeMglXNy5IN4qY1d-CgpMEEFM;

    sget-object v1, Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;->INSTANCE:Lcom/miui/home/launcher/monitor/-$$Lambda$LauncherMonitor$St8YJooFUsiAEcjS7qFbZRWgNlA;

    sget-object v2, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->DEBUG_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public init(Lcom/miui/home/launcher/Application;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->getMonitor()Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->getMonitor()Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->init()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    :cond_0
    new-instance v0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

    new-instance v1, Lcom/tencent/matrix/resource/watcher/DumpStorageManager;

    invoke-direct {v1, p1}, Lcom/tencent/matrix/resource/watcher/DumpStorageManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;-><init>(Landroid/content/Context;Lcom/tencent/matrix/resource/watcher/DumpStorageManager;)V

    sput-object v0, Lcom/miui/home/launcher/monitor/LauncherMonitor;->sAndroidHeapDumper:Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 69
    sget-boolean v0, Lcom/miui/home/launcher/DebugActivity;->sIsReporterOn:Z

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/monitor/FpsReporter;->getInstance()Lcom/miui/home/launcher/monitor/FpsReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->onTouchDown()V

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 75
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/monitor/FpsReporter;->getInstance()Lcom/miui/home/launcher/monitor/FpsReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/monitor/FpsReporter;->onTouchUp()V

    :cond_2
    return-void
.end method

.method public startFpsReporter()V
    .locals 1

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/monitor/FpsReporter;->getInstance()Lcom/miui/home/launcher/monitor/FpsReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->startMonitor()V

    return-void
.end method

.method public stopFpsReporter()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/monitor/FpsReporter;->getInstance()Lcom/miui/home/launcher/monitor/FpsReporter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/monitor/FpsReporter;->stopMonitor()V

    return-void
.end method
