.class public Lcom/miui/launcher/utils/BoostHelper;
.super Ljava/lang/Object;
.source "BoostHelper.java"


# static fields
.field private static final BOOST_PRIORITY:I = -0x14

.field private static final TAG:Ljava/lang/String; = "Launcher.Boost"

.field private static final sInstance:Lcom/miui/launcher/utils/BoostHelper;


# instance fields
.field private mOldRenderPriority:I

.field private mOldUIPriority:I

.field private mRenderThreadTid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/miui/launcher/utils/BoostHelper;

    invoke-direct {v0}, Lcom/miui/launcher/utils/BoostHelper;-><init>()V

    sput-object v0, Lcom/miui/launcher/utils/BoostHelper;->sInstance:Lcom/miui/launcher/utils/BoostHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    return-void
.end method

.method public static getInstance()Lcom/miui/launcher/utils/BoostHelper;
    .locals 1

    .line 28
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

    .line 32
    iget v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    const-string v1, "nGetRenderThreadTid"

    const/4 v2, 0x1

    .line 40
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v3, "mNativeProxy"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 47
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

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRenderThreadId tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    .line 51
    :cond_1
    iget p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    return p1
.end method


# virtual methods
.method public boost(Landroid/view/View;Z)V
    .locals 4

    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p1

    const-string v1, "Launcher.Boost"

    .line 59
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

    .line 62
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 66
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    const-string p2, "Launcher.Boost"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui thread old priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    const-string p2, "Launcher.Boost"

    .line 69
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

    .line 70
    invoke-static {v0, v1, p2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p2, "Launcher.Boost"

    .line 71
    invoke-static {p1, v1, p2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p1, "Launcher.Boost"

    const-string p2, "ui thread and render thread are boosted"

    .line 72
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_1
    iget p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    const-string v1, "Launcher.Boost"

    invoke-static {v0, p2, v1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 75
    iget p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    const-string v0, "Launcher.Boost"

    invoke-static {p1, p2, v0}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p1, "Launcher.Boost"

    const-string p2, "ui thread and render thread are reset"

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.Boost"

    const-string v0, "boost failed"

    .line 79
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
