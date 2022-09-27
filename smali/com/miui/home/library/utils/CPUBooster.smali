.class public Lcom/miui/home/library/utils/CPUBooster;
.super Ljava/lang/Object;
.source "CPUBooster.java"


# static fields
.field private static final BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Lcom/miui/home/library/utils/CPUBooster;


# instance fields
.field private mAllowBoostCpu:Z

.field private mBoosted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/CPUBooster;->BOOST_CPU_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z

    .line 20
    iput-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mBoosted:Z

    .line 32
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "com.miui.home"

    .line 33
    invoke-static {v1, v0}, Lcom/mi/mibridge/MiBridge;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z

    const-string v0, "Launcher_CPUBooster"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowBoostCpu:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher_CPUBooster"

    const-string v2, "checkPermission"

    .line 36
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/miui/home/library/utils/CPUBooster;
    .locals 2

    .line 42
    sget-object v0, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/miui/home/library/utils/CPUBooster;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/miui/home/library/utils/CPUBooster;

    invoke-direct {v1}, Lcom/miui/home/library/utils/CPUBooster;-><init>()V

    sput-object v1, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/library/utils/CPUBooster;->sInstance:Lcom/miui/home/library/utils/CPUBooster;

    return-object v0
.end method

.method static synthetic lambda$boostCpuToMax$0(I)V
    .locals 3

    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/mi/mibridge/MiBridge;->requestCpuHighFreq(III)I

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

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher_CPUBooster"

    const-string v1, "boostCpuToMax"

    .line 59
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public boostCpuToMax(I)V
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z

    if-eqz v0, :cond_0

    .line 54
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

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "CPUBooster:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tallowBoostCpu:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/miui/home/library/utils/CPUBooster;->mAllowBoostCpu:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
