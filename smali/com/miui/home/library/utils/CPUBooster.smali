.class public Lcom/miui/home/library/utils/CPUBooster;
.super Ljava/lang/Object;
.source "CPUBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/CPUBooster$_lancet;
    }
.end annotation


# static fields
.field private static final BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Lcom/miui/home/library/utils/CPUBooster;


# instance fields
.field private mAllowBoostCpu:Z

.field private mBoosted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/CPUBooster;->BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z

    .line 19
    iput-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mBoosted:Z

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 30
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 32
    invoke-static {v1, v2, v3, v4, v5}, Lcom/mi/mibridge/MiBridge;->checkPermission(IIIJ)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher_CPUBooster"

    const-string v2, "checkPermission"

    .line 34
    invoke-static {v1, v2, v0}, Lcom/miui/home/library/utils/CPUBooster$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/miui/home/library/utils/CPUBooster;
    .locals 2

    .line 40
    sget-object v0, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/miui/home/library/utils/CPUBooster;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/miui/home/library/utils/CPUBooster;

    invoke-direct {v1}, Lcom/miui/home/library/utils/CPUBooster;-><init>()V

    sput-object v1, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    return-object v0
.end method

.method static synthetic lambda$boostCpuToMax$0(I)V
    .locals 8

    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    const/4 v0, 0x1

    const-wide/16 v1, 0x2

    const/4 v3, 0x1

    move v4, p0

    .line 56
    invoke-static/range {v0 .. v7}, Lcom/mi/mibridge/MiBridge;->requestCpuHighFreq(IJIIIJ)I

    move-result p0

    const-string v0, "Launcher_CPUBooster"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostCpuToMax:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/library/utils/CPUBooster$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher_CPUBooster"

    const-string v1, "boostCpuToMax"

    .line 59
    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/CPUBooster$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public boostCpuToMax(I)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/miui/home/library/utils/CPUBooster;->BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/home/library/utils/-$$Lambda$CPUBooster$-lXfRn5-fPwyJqhpFeve0bDUSBE;

    invoke-direct {v1, p1}, Lcom/miui/home/library/utils/-$$Lambda$CPUBooster$-lXfRn5-fPwyJqhpFeve0bDUSBE;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public boostTouch(Landroid/view/MotionEvent;)V
    .locals 1

    const/16 v0, 0x190

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public boostTouch(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mBoosted:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0, p2}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    const/4 p2, 0x1

    .line 69
    iput-boolean p2, p0, Lcom/miui/home/library/utils/CPUBooster;->mBoosted:Z

    .line 71
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/library/utils/CPUBooster;->mBoosted:Z

    if-eqz p2, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/miui/home/library/utils/CPUBooster;->mBoosted:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
