.class Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;
.super Lcom/market/sdk/ServiceProxy2$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/homeguide/AppstoreUserGuideService;->tryShow(Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/ServiceProxy2$ProxyTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/homeguide/AppstoreUserGuideService;

.field final synthetic val$callback:Lcom/market/sdk/homeguide/Callback;

.field final synthetic val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;


# direct methods
.method constructor <init>(Lcom/market/sdk/homeguide/AppstoreUserGuideService;ZLcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->this$0:Lcom/market/sdk/homeguide/AppstoreUserGuideService;

    iput-object p3, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    iput-object p4, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->val$callback:Lcom/market/sdk/homeguide/Callback;

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/ServiceProxy2$ProxyTask;-><init>(Lcom/market/sdk/ServiceProxy2;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->notifyResult(Z)V

    return-void
.end method

.method private notifyResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->val$callback:Lcom/market/sdk/homeguide/Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/market/sdk/homeguide/Callback;->onFinish(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->run(Landroid/os/IBinder;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected run(Landroid/os/IBinder;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;

    move-result-object v3

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.xiaomi.mipicks"

    iget-object v6, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-virtual {v6}, Lcom/market/sdk/homeguide/HomeUserGuideData;->getHomeScreenUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object v4, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->val$data:Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-interface {v3, v4}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;->ready(Lcom/market/sdk/homeguide/HomeUserGuideData;)Lcom/market/sdk/homeguide/HomeUserGuideResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market/sdk/homeguide/HomeUserGuideResult;->getErrorCode()I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->val$callback:Lcom/market/sdk/homeguide/Callback;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->val$callback:Lcom/market/sdk/homeguide/Callback;

    invoke-interface {v4}, Lcom/market/sdk/homeguide/Callback;->onIntercept()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v4, :cond_2

    new-instance v4, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$1;

    invoke-direct {v4, p0, v0}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$1;-><init>(Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;Landroid/os/Handler;)V

    invoke-interface {v3, v4}, Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;->show(Landroid/os/ResultReceiver;)V

    new-instance v3, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$2;

    invoke-direct {v3, p0}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$2;-><init>(Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;)V

    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->unbind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    move v2, v1

    goto :goto_1

    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-direct {p0, v2}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->notifyResult(Z)V

    invoke-virtual {p0}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->unbind()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppStoreUserGuide"

    invoke-static {v1, p0, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method
