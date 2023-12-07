.class Lcom/market/sdk/homeguide/AppstoreUserGuideService;
.super Lcom/market/sdk/ServiceProxy2;

# interfaces
.implements Lcom/market/sdk/homeguide/IAppstoreHomeGuideService;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStoreUserGuide"

.field private static final TARGET_PKG:Ljava/lang/String; = "com.xiaomi.mipicks"

.field private static final USER_GUIDE_ACTION:Ljava/lang/String; = "com.xiaomi.market.HOME_USER_GUIDE"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/ServiceProxy2;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static getUserGuideIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.market.HOME_USER_GUIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.mipicks"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/market/sdk/utils/PkgUtils;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static openService()Lcom/market/sdk/homeguide/AppstoreUserGuideService;
    .locals 3

    invoke-static {}, Lcom/market/sdk/homeguide/AppstoreUserGuideService;->getUserGuideIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/market/sdk/homeguide/AppstoreUserGuideService;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/market/sdk/homeguide/AppstoreUserGuideService;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ready(Lcom/market/sdk/homeguide/HomeUserGuideData;)Lcom/market/sdk/homeguide/HomeUserGuideResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public show(Landroid/os/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public tryShow(Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Callback;)V
    .locals 2

    new-instance v0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;-><init>(Lcom/market/sdk/homeguide/AppstoreUserGuideService;ZLcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Callback;)V

    invoke-virtual {p0, v0}, Lcom/market/sdk/homeguide/AppstoreUserGuideService;->setTask(Lcom/market/sdk/ServiceProxy2$ProxyTask;)Lcom/market/sdk/ServiceProxy2$ProxyTask;

    return-void
.end method
