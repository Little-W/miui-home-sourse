.class Lcom/xiaomi/dist/handoff/system/MiuiRelayController;
.super Ljava/lang/Object;


# static fields
.field private static volatile sInstance:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;


# instance fields
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSessionId:I

.field private mCurrentTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAlreadyRegistered:Z

.field private mIsIconShow:Z

.field private final mRelayIconCallback:Lcom/xiaomi/mirror/synergy/RelayIconCallback;

.field private final mRelayIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

.field private mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

.field private mTransferSessionToLocalCallback:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentSessionId:I

    iput-boolean v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mIsIconShow:Z

    iput-boolean v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mIsAlreadyRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    new-instance v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;-><init>(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mRelayIconCallback:Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    new-instance v0, Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-direct {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mRelayIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mIsIconShow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mIsIconShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/xiaomi/dist/handoff/AppMeta;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->getAppMeta(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->getDeviceType(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)I
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->getNewSessionId()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mTransferSessionToLocalCallback:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    return-object p0
.end method

.method private getAppMeta(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/xiaomi/dist/handoff/AppMeta;
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MiuiRelayController"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "getAppMeta packageName empty"

    invoke-static {v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/dist/appmeta/AppMetaProvider;->query(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/dist/handoff/AppMeta;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "getAppMeta exception"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/MurmurHash3;->hash([BI)I

    move-result v3

    new-instance v0, Lcom/xiaomi/dist/handoff/AppMeta;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v8, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    move-object v2, v0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/dist/handoff/AppMeta;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    return-object v0
.end method

.method private getDeviceType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/xiaomi/dist/handoff/system/SystemPropertyUtil;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PHONE:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PAD:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PHONE:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PAD:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lcom/xiaomi/dist/common/DeviceType;->PC:Lcom/xiaomi/dist/common/DeviceType;

    invoke-virtual {p0}, Lcom/xiaomi/dist/common/DeviceType;->asIntType()I

    move-result p0

    return p0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    const-string v0, "MiuiRelayController"

    const-string v1, "getHandler"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "miui_relay_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaomi/dist/handoff/system/MiuiRelayController;
    .locals 2

    sget-object v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->sInstance:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->sInstance:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-direct {v1}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;-><init>()V

    sput-object v1, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->sInstance:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->sInstance:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    return-object v0
.end method

.method private getNewSessionId()I
    .locals 2

    const-string v0, "MiuiRelayController"

    const-string v1, "getNewSessionId"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentSessionId:I

    return v0
.end method


# virtual methods
.method queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "[",
            "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
            ">;"
        }
    .end annotation

    const-string v0, "MiuiRelayController"

    const-string v1, "queryActiveLocalHandoffTask"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method registerLocalHandoffSessionListener(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/TaskListenerInner;)V
    .locals 3

    const-string v0, "MiuiRelayController"

    const-string v1, "registerLocalHandoffSessionListener"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    iget-boolean p2, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mIsAlreadyRegistered:Z

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mRelayIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mRelayIconCallback:Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mIsAlreadyRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "mRelayIconHelper.registerCallback fail"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method startTransferSessionToLocal(Landroid/content/Context;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "MiuiRelayController"

    const-string v2, "startTransferSessionToLocal, handoffTaskId=%s"

    invoke-static {p2, v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mTransferSessionToLocalCallback:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v0, v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/16 v0, 0xf

    const-string v2, "miui relay task not found"

    invoke-interface {p3, v0, v2}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mCurrentTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppMeta()Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/dist/handoff/AppMeta;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->mRelayIconHelper:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->performIconClick(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "mRelayIconHelper.performIconClick fail"

    invoke-static {p2, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_1

    const/16 p0, 0xd

    const-string p1, "appId error"

    invoke-interface {p3, p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
