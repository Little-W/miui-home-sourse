.class public Lcom/market/pm/api/MarketInstaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/pm/api/IMarketInstallerContract;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/market/pm/api/MarketInstallerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/market/pm/api/MarketInstaller;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public installPackage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/pm/api/ComponentNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/market/pm/api/MarketInstaller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market/pm/api/MarketInstallerService;->openService(Landroid/content/Context;)Lcom/market/pm/IMarketInstallerService;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_ref"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_app_client_id"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_nonce"

    invoke-virtual {v1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_app_signature"

    invoke-virtual {v1, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/market/pm/api/MarketInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "extra_caller_package_name"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lcom/market/pm/api/MarketInstallObserver;

    iget-object p0, p0, Lcom/market/pm/api/MarketInstaller;->mListener:Lcom/market/pm/api/MarketInstallerListener;

    invoke-direct {p2, p0}, Lcom/market/pm/api/MarketInstallObserver;-><init>(Lcom/market/pm/api/MarketInstallerListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/market/pm/IMarketInstallerService;->installPackage(Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "uri must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setListener(Lcom/market/pm/api/MarketInstallerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/market/pm/api/MarketInstaller;->mListener:Lcom/market/pm/api/MarketInstallerListener;

    return-void
.end method
