.class public Lcom/miui/home/launcher/util/BoostRtHelper;
.super Ljava/lang/Object;
.source "BoostRtHelper.java"


# static fields
.field private static final sInstance:Lcom/miui/home/launcher/util/BoostRtHelper;


# instance fields
.field private mEnableRTMode:Z

.field private mIsSchedRTDisabled:Z

.field private mIsSupportSetRtMode:Z

.field private mProcessManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mSchedThreadsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/miui/home/launcher/util/BoostRtHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/BoostRtHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/BoostRtHelper;->sInstance:Lcom/miui/home/launcher/util/BoostRtHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    const-string v0, "[I"

    const-string v1, "beginSchedThreads"

    const-string v2, "BoostRtHelper"

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 23
    iput-boolean v3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    const/4 v4, 0x0

    .line 24
    iput-object v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    .line 25
    iput-object v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    .line 26
    iput-boolean v5, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mEnableRTMode:Z

    .line 27
    iput-boolean v3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    .line 41
    :try_start_0
    iget-object v6, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    if-nez v6, :cond_0

    const-string v6, "miui.process.ProcessManager"

    .line 42
    invoke-static {v6}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    .line 43
    iget-object v6, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v8, v3, [Ljava/lang/Class;

    .line 44
    invoke-static {v7, v8}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    .line 43
    invoke-static {v6, v1, v7, v9}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    .line 45
    iget-object v6, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v9, v3, [Ljava/lang/Class;

    .line 46
    invoke-static {v7, v9}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v9, v3

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, v9, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v9, v8

    .line 45
    invoke-static {v6, v1, v7, v9}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "reflect error"

    .line 49
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "persist.sys.enable_rtmode"

    .line 53
    invoke-static {v0, v5}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mEnableRTMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "get property error"

    .line 55
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mEnableRTMode:Z

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v0, v5

    :goto_3
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    .line 58
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    move v3, v5

    :cond_3
    iput-boolean v3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSchedRTDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   mIsSupportSetRtMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/util/BoostRtHelper;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/util/BoostRtHelper;)Ljava/lang/Class;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    return-object p0
.end method

.method private addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/util/BoostRtHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p0

    if-lez p0, :cond_1

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private boostThreadInternal(JLjava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/util/BoostRtHelper;->convertListToArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 88
    array-length p3, v2

    if-nez p3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    const-class p3, Lcom/miui/home/launcher/common/BackgroundThread;

    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getHandler"

    invoke-static {p3, v0, v4, v1, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    new-instance v6, Lcom/miui/home/launcher/util/BoostRtHelper$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/util/BoostRtHelper$1;-><init>(Lcom/miui/home/launcher/util/BoostRtHelper;[IJI)V

    invoke-virtual {p3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private boostTurboSchedActionWithPriority(Landroid/view/View;)V
    .locals 5

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/util/BoostRtHelper;->addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->convertListToArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    .line 183
    const-class v0, Lcom/miui/home/launcher/common/BackgroundThread;

    const-class v1, Landroid/os/Handler;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getHandler"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/util/BoostRtHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/util/BoostRtHelper$2;-><init>(Lcom/miui/home/launcher/util/BoostRtHelper;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private convertListToArray(Ljava/util/ArrayList;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;
    .locals 1

    .line 64
    sget-object v0, Lcom/miui/home/launcher/util/BoostRtHelper;->sInstance:Lcom/miui/home/launcher/util/BoostRtHelper;

    return-object v0
.end method

.method private getRenderThreadId(Landroid/view/View;)I
    .locals 0

    .line 173
    :try_start_0
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public boostGesture(Landroid/view/View;Z)V
    .locals 7

    .line 109
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    move v6, p2

    .line 113
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "BoostRtHelper"

    if-nez p2, :cond_2

    const-string p2, "boostGesture main"

    .line 114
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    const/4 p2, 0x2

    new-array v5, p2, [I

    .line 115
    sget p2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    aput p2, v5, v1

    sget p2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    aput p2, v5, v0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreads(JLandroid/view/View;[II)V

    goto :goto_1

    :cond_2
    const-string p2, "boostGesture priority"

    .line 118
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    new-array v5, v0, [I

    .line 120
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getPriorityThreadId()I

    move-result p2

    aput p2, v5, v1

    move-object v1, p0

    move-object v4, p1

    .line 119
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreads(JLandroid/view/View;[II)V

    .line 122
    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostTurboSchedActionWithPriority(Landroid/view/View;)V

    return-void
.end method

.method public boostMainThreadAndRenderThread(JLandroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 144
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostMainThreadAndRenderThread(JLandroid/view/View;I)V

    return-void
.end method

.method public boostMainThreadAndRenderThread(JLandroid/view/View;I)V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BoostRtHelper"

    const-string v1, "boostMainThreadAndRenderThread"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-direct {p0, v0, p3}, Lcom/miui/home/launcher/util/BoostRtHelper;->addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 155
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternal(JLjava/util/ArrayList;I)V

    :cond_1
    return-void
.end method

.method public boostThreads(JLandroid/view/View;[I)V
    .locals 6

    const/4 v5, 0x4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 126
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreads(JLandroid/view/View;[II)V

    return-void
.end method

.method public boostThreads(JLandroid/view/View;[II)V
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-direct {p0, v0, p3}, Lcom/miui/home/launcher/util/BoostRtHelper;->addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 135
    array-length p3, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p4, v1

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 139
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternal(JLjava/util/ArrayList;I)V

    :cond_2
    return-void
.end method

.method public isSchedRTDisabled()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    return p0
.end method

.method public isSupportSetRtMode()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    return p0
.end method
