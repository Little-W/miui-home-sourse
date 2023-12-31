.class Lcom/xiaomi/dist/handoff/system/HandoffController;
.super Ljava/lang/Object;
.source "HandoffController.java"


# instance fields
.field private mBindRetryCount:I

.field protected mContext:Landroid/content/Context;

.field protected mDeviceCallback:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

.field private final mDeviceCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;",
            "Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/dist/utils/ServiceExecutor<",
            "Lcom/xiaomi/dist/handoff/IHandoffControlService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskListener:Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

.field private mTaskListenerId:I

.field protected mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

.field private final mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    .line 44
    iput v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallbackMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 55
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallback:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    .line 536
    new-instance v1, Lcom/xiaomi/dist/handoff/system/HandoffController$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$2;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListener:Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

    .line 58
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    const-string v1, "handoff_system_handler_thread"

    .line 59
    invoke-static {v1}, Lcom/xiaomi/dist/utils/Schedulers;->newMasterThread(Ljava/lang/String;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 60
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    .line 61
    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$IHxIfk6hP6uS3sQ--rHs1tVCEDI;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$IHxIfk6hP6uS3sQ--rHs1tVCEDI;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    .line 62
    invoke-static {p1, v0}, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;->registerServiceStartCallback(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/dist/handoff/system/HandoffController;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/dist/handoff/system/HandoffController;I)Lcom/xiaomi/dist/handoff/AppMeta;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->getAppMeta(I)Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object p0

    return-object p0
.end method

.method private bindHandoffServiceAsync()V
    .locals 4

    const-string v0, "HandoffController"

    const-string v1, "bindHandoffServiceAsync"

    .line 284
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->getServiceExecutor()Lcom/xiaomi/dist/utils/ServiceExecutor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "bindHandoffServiceAsync bind failed"

    .line 287
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 288
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    goto :goto_0

    .line 290
    :cond_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$Q0SSE5JSSc1WkgyEW8aHgD3eAB8;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$Q0SSE5JSSc1WkgyEW8aHgD3eAB8;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    new-instance v2, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$SZXPE6O1D_m7sZB9dkPQb8YyII0;

    invoke-direct {v2, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$SZXPE6O1D_m7sZB9dkPQb8YyII0;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    iget-object v3, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 299
    invoke-interface {v3}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 290
    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    .line 301
    :goto_0
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    return-void
.end method

.method private getAppMeta(I)Lcom/xiaomi/dist/handoff/AppMeta;
    .locals 1

    .line 529
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/xiaomi/dist/appmeta/AppMetaProvider;->query(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/dist/handoff/AppMeta;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "HandoffController"

    const-string v0, "getAppMeta exception"

    .line 531
    invoke-static {p1, v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string p0, "HandoffController"

    const-string v0, "getIntent"

    .line 331
    invoke-static {p0, v0}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaomi.dist.intent.action.HANDOFF_CONTROL"

    .line 333
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    const-string v0, "HandoffController"

    const-string v1, "getPackageName"

    .line 339
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->getValidServicePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 341
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "getPackageName empty"

    .line 342
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "getPackageName, name=%s"

    .line 345
    invoke-static {v0, v2, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private getServiceExecutor()Lcom/xiaomi/dist/utils/ServiceExecutor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/dist/utils/ServiceExecutor<",
            "Lcom/xiaomi/dist/handoff/IHandoffControlService;",
            ">;"
        }
    .end annotation

    const-string v0, "HandoffController"

    const-string v1, "getServiceExecutor"

    .line 305
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->isSupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "getServiceExecutor fail, not support"

    .line 307
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "getServiceExecutor fail, packageName empty"

    .line 312
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 315
    :cond_1
    new-instance v0, Lcom/xiaomi/dist/utils/ServiceExecutor;

    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$wPZMxj6VJvgvlK7m9lxVVtSA6Mk;

    new-instance v8, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$811QpllD4Pl49I29fbLAQ5Ty29k;

    invoke-direct {v8, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$811QpllD4Pl49I29fbLAQ5Ty29k;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    const-string v6, "handoff_system_service"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/dist/utils/ServiceExecutor;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-object v0
.end method

.method private handleQueryActiveLocalHandoffTask(Lcom/xiaomi/dist/handoff/IHandoffControlService;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 1

    const-string p0, "HandoffController"

    const-string v0, "handleQueryActiveLocalHandoffTask"

    .line 351
    invoke-static {p0, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :try_start_0
    invoke-interface {p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->queryActiveLocalHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "queryActiveLocalHandoffTask exception"

    .line 355
    invoke-static {p0, v0, p1}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-object p0
.end method

.method private handleRegisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "handleRegisterLocalHandoffSessionListener"

    .line 363
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    if-lez v1, :cond_0

    const-string p0, "registerActiveLocalHandoffTaskListener failed, already registered"

    .line 365
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListener:Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

    .line 370
    invoke-interface {p1, v1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "handleRegisterLocalHandoffSessionListener exception"

    .line 372
    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private handleStartDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/IHandoffControlService;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;)V
    .locals 1

    const-string p0, "HandoffController"

    const-string v0, "handleStartDiscoveryRemoteHandoffDevice"

    .line 438
    invoke-static {p0, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->getSessionInfo()Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->startDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;)I

    move-result p1

    .line 443
    invoke-virtual {p2, p1}, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->setDeviceCallbackId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "handleStartDiscoveryRemoteHandoffDevice exception"

    .line 445
    invoke-static {p0, p2, p1}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private handleStartTransferSessionToLocal(Lcom/xiaomi/dist/handoff/IHandoffControlService;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HandoffController"

    const-string v2, "handleStartTransferSessionToLocal, handoffTaskId=%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    :try_start_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$1;

    invoke-direct {v0, p0, p3}, Lcom/xiaomi/dist/handoff/system/HandoffController$1;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    .line 410
    invoke-interface {p1, p2, v0}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/IRelayCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "handleStartTransferSessionToLocal exception"

    .line 412
    invoke-static {v1, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    const/16 p0, 0x11

    const-string p1, "remote exception"

    .line 414
    invoke-interface {p3, p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private handleUnregisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 3

    const-string v0, "HandoffController"

    const-string v1, "unregisterLocalHandoffSessionListener"

    .line 379
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 381
    :try_start_0
    iget v2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    invoke-interface {p1, v2}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->unregisterActiveLocalHandoffTaskListener(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_0
    iput v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "handleUnregisterLocalHandoffSessionListener exception"

    .line 383
    invoke-static {v0, v2, p1}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 385
    :goto_2
    iput v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    .line 386
    throw p1
.end method

.method public static synthetic lambda$bpt71VHx8OmMyXH7EGxhP4qg774(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->bindHandoffServiceAsync()V

    return-void
.end method

.method static synthetic lambda$queryActiveLocalHandoffTask$2(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "queryActiveLocalHandoffTask execute error"

    .line 80
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$registerLocalHandoffSessionListener$4(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "registerLocalHandoffSessionListener execute error"

    .line 100
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$restoreState$22(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "restore localHandoffSessionListener error"

    .line 498
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$restoreState$24(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "restore discoveryRemoteHandoffDevice error"

    .line 520
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$startTransferSessionToLocal$8(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "startTransferSessionToLocal execute error"

    .line 140
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$unregisterLocalHandoffSessionListener$6(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "unregisterLocalHandoffSessionListener execute error"

    .line 119
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$wPZMxj6VJvgvlK7m9lxVVtSA6Mk(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IHandoffControlService;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/IHandoffControlService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/dist/handoff/IHandoffControlService;

    move-result-object p0

    return-object p0
.end method

.method private postBindHandoffService(Z)V
    .locals 5

    const-string v0, "HandoffController"

    const-string v1, "postBindHandoffService"

    .line 269
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    invoke-interface {p1}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$bpt71VHx8OmMyXH7EGxhP4qg774;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$bpt71VHx8OmMyXH7EGxhP4qg774;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 273
    :cond_0
    iget p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 274
    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 277
    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    .line 278
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    invoke-interface {p1}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$bpt71VHx8OmMyXH7EGxhP4qg774;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$bpt71VHx8OmMyXH7EGxhP4qg774;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    iget p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    int-to-long v1, p0

    const-wide/16 v3, 0x7d0

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private restoreState()V
    .locals 7

    const-string v0, "HandoffController"

    const-string v1, "restoreState"

    .line 483
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    const-string v2, "restoreState error, executor is null"

    if-eqz v1, :cond_1

    const-string v1, "restore localHandoffSessionListener"

    .line 485
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v1, :cond_0

    .line 488
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 491
    :cond_0
    new-instance v3, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$IctJhspynuU3Gy6R8VaBuAkpsbg;

    invoke-direct {v3, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$IctJhspynuU3Gy6R8VaBuAkpsbg;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    sget-object v4, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$pkgPZS_YJdZ51DnQ7QK-GSOr28Q;

    iget-object v5, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 499
    invoke-interface {v5}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 491
    invoke-virtual {v1, v3, v4, v5}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallback:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    if-eqz v1, :cond_4

    const-string v1, "restore discoveryRemoteHandoffDevice"

    .line 502
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;

    if-nez v3, :cond_2

    const-string p0, "restoreState callbackInner is null"

    .line 505
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 508
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v4, :cond_3

    .line 510
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 513
    :cond_3
    new-instance v5, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$xs6KHN4s9vON7rdnliIsxq0kvZk;

    invoke-direct {v5, p0, v3}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$xs6KHN4s9vON7rdnliIsxq0kvZk;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;)V

    sget-object v3, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$BsMsRX9hwc9l4vxIEoqxLGCr92M;

    iget-object v6, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 521
    invoke-interface {v6}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 513
    invoke-virtual {v4, v5, v3, v6}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "close"

    .line 255
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    invoke-interface {v0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$Vu4FrYTytMDCAgM56dL7CIWvodo;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$Vu4FrYTytMDCAgM56dL7CIWvodo;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$bindHandoffServiceAsync$18$HandoffController(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 1

    const-string p1, "HandoffController"

    const-string v0, "bindHandoffServiceAsync bind success"

    .line 291
    invoke-static {p1, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 292
    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    .line 293
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->restoreState()V

    return-void
.end method

.method public synthetic lambda$bindHandoffServiceAsync$19$HandoffController(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "bindHandoffServiceAsync bind failed"

    .line 296
    invoke-static {v0, v1, p1}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 297
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    return-void
.end method

.method public synthetic lambda$close$17$HandoffController()V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "handle close"

    .line 257
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v1, :cond_0

    const-string p0, "close error, executor is null"

    .line 260
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/dist/utils/ServiceExecutor;->release()V

    .line 264
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->close()V

    return-void
.end method

.method public synthetic lambda$getServiceExecutor$20$HandoffController()V
    .locals 4

    const-string v0, "HandoffController"

    const-string v1, "ServiceBindCallback.onBinderDied"

    .line 319
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v2, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 321
    invoke-interface {v0, v1, v3}, Lcom/xiaomi/dist/handoff/system/TaskListenerInner;->onLocalHandoffTaskUpdate(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    .line 325
    :cond_0
    iput v2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    .line 326
    invoke-direct {p0, v1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    return-void
.end method

.method public synthetic lambda$new$0$HandoffController()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    return-void
.end method

.method public synthetic lambda$queryActiveLocalHandoffTask$1$HandoffController(Ljava/util/concurrent/CompletableFuture;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 77
    invoke-direct {p0, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleQueryActiveLocalHandoffTask(Lcom/xiaomi/dist/handoff/IHandoffControlService;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$registerLocalHandoffSessionListener$3$HandoffController(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleRegisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$restoreState$21$HandoffController(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleRegisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$restoreState$23$HandoffController(Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 516
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleStartDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/IHandoffControlService;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$startTransferSessionToLocal$7$HandoffController(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 135
    invoke-direct {p0, p3, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleStartTransferSessionToLocal(Lcom/xiaomi/dist/handoff/IHandoffControlService;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$unregisterLocalHandoffSessionListener$5$HandoffController(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleUnregisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    :cond_0
    return-void
.end method

.method queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "[",
            "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
            ">;"
        }
    .end annotation

    const-string v0, "HandoffController"

    const-string v1, "queryActiveLocalHandoffTask"

    .line 66
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v1, :cond_0

    const-string p0, "queryActiveLocalHandoffTask error, executor is null"

    .line 69
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 70
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 73
    new-instance v2, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$QE5LfYO_PFV6V11_etSvsoRBD9E;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$QE5LfYO_PFV6V11_etSvsoRBD9E;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Ljava/util/concurrent/CompletableFuture;)V

    sget-object v3, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$d4NA7o1S5rnHQ29WROPtgjjnzCU;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 81
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 73
    invoke-virtual {v1, v2, v3, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method registerLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/TaskListenerInner;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "registerLocalHandoffSessionListener"

    .line 86
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 88
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez p1, :cond_0

    const-string p0, "registerLocalHandoffSessionListener error, executor is null"

    .line 90
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$dHrwGMQ7PXk2TXCFsRaJATQ6ckA;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$dHrwGMQ7PXk2TXCFsRaJATQ6ckA;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    sget-object v1, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$m4pgBJmvhSguyOxPLVcYhTQca5w;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 101
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 93
    invoke-virtual {p1, v0, v1, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HandoffController"

    const-string v2, "startTransferSessionToLocal, handoffTaskId=%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v0, :cond_0

    const-string p0, "startTransferSessionToLocal error, executor is null"

    .line 128
    invoke-static {v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x9

    const-string p1, "service unavailable"

    .line 129
    invoke-interface {p2, p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 132
    :cond_0
    new-instance v1, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$jx2hnRum7JuEaz2PrLyFbyKgxIk;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    sget-object p1, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$fFtWIIpoWGdBXNdwYR3NftgX7Q8;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$fFtWIIpoWGdBXNdwYR3NftgX7Q8;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 141
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 132
    invoke-virtual {v0, v1, p1, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method unregisterLocalHandoffSessionListener()V
    .locals 3

    const-string v0, "HandoffController"

    const-string v1, "unregisterLocalHandoffSessionListener"

    .line 105
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 107
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v1, :cond_0

    const-string p0, "unregisterLocalHandoffSessionListener error, executor is null"

    .line 109
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$c_iUsQeYBbvG2jcoGLpVKFX-pSQ;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$c_iUsQeYBbvG2jcoGLpVKFX-pSQ;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    sget-object v2, Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$H75McsY_GjM7EGKA5tDmYOQk83s;->INSTANCE:Lcom/xiaomi/dist/handoff/system/-$$Lambda$HandoffController$H75McsY_GjM7EGKA5tDmYOQk83s;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 120
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 112
    invoke-virtual {v1, v0, v2, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-void
.end method
