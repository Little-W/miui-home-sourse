.class public Lcom/miui/launcher/utils/BoostHelper;
.super Ljava/lang/Object;
.source "BoostHelper.java"


# static fields
.field private static final BOOST_PRIORITY:I = -0x14

.field private static final TAG:Ljava/lang/String; = "Launcher.Boost"

.field private static final sInstance:Lcom/miui/launcher/utils/BoostHelper;


# instance fields
.field private mIsTurboSchedDisabled:Z

.field private mLastDuration:J

.field private mOldRenderPriority:I

.field private mOldUIPriority:I

.field private mRenderThreadTid:I

.field private mStartTime:J

.field private mToken:Ljava/lang/Object;

.field private mTurboSchedManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mTurboSchedManagerObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/miui/launcher/utils/BoostHelper;

    invoke-direct {v0}, Lcom/miui/launcher/utils/BoostHelper;-><init>()V

    sput-object v0, Lcom/miui/launcher/utils/BoostHelper;->sInstance:Lcom/miui/launcher/utils/BoostHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    .line 28
    iput-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    .line 30
    iput-object v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mToken:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/utils/BoostHelper;Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/miui/launcher/utils/BoostHelper;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/miui/launcher/utils/BoostHelper;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mLastDuration:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/launcher/utils/BoostHelper;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/launcher/utils/BoostHelper;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/launcher/utils/BoostHelper;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    return p1
.end method

.method private bindCoreInternal(Landroid/view/View;J)V
    .locals 4

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    iget-wide v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mStartTime:J

    sub-long/2addr v0, v2

    .line 95
    iget-wide v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mLastDuration:J

    sub-long v0, v2, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 96
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/launcher/utils/BoostHelper;->mToken:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/launcher/utils/BoostHelper$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/miui/launcher/utils/BoostHelper$1;-><init>(Lcom/miui/launcher/utils/BoostHelper;Landroid/view/View;J)V

    iget-object p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mToken:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static getInstance()Lcom/miui/launcher/utils/BoostHelper;
    .locals 1

    .line 37
    sget-object v0, Lcom/miui/launcher/utils/BoostHelper;->sInstance:Lcom/miui/launcher/utils/BoostHelper;

    return-object v0
.end method

.method private getRenderThreadId(Landroid/view/View;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    const-string v1, "nGetRenderThreadTid"

    const/4 v2, 0x1

    .line 49
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v3, "mNativeProxy"

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 56
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "Launcher.Boost"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRenderThreadId tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    .line 60
    :cond_1
    iget p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    return p1
.end method


# virtual methods
.method public bindCore(Landroid/view/View;J)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/utils/BoostHelper;->bindCoreInternal(Landroid/view/View;J)V

    return-void
.end method

.method public boost(Landroid/view/View;Z)V
    .locals 4

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 66
    invoke-direct {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p1

    const-string v1, "Launcher.Boost"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boost enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";ui thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";render thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "Launcher.Boost"

    const-string p2, "render-thread tid = 0, do not boost"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 75
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    const-string p2, "Launcher.Boost"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui thread old priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    const-string p2, "Launcher.Boost"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render thread old priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Launcher.Boost"

    const/16 v1, -0x14

    .line 79
    invoke-static {v0, v1, p2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p2, "Launcher.Boost"

    .line 80
    invoke-static {p1, v1, p2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p1, "Launcher.Boost"

    const-string p2, "ui thread and render thread are boosted"

    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    iget p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    const-string v1, "Launcher.Boost"

    invoke-static {v0, p2, v1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 84
    iget p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    const-string v0, "Launcher.Boost"

    invoke-static {p1, p2, v0}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p1, "Launcher.Boost"

    const-string p2, "ui thread and render thread are reset"

    .line 85
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.Boost"

    const-string v0, "boost failed"

    .line 88
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
