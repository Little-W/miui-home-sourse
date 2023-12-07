.class public Lcom/market/pm/api/MarketInstallObserver$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/pm/api/MarketInstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/pm/api/MarketInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private final mRemote:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public onRefuseInstall(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    invoke-static {p1, p2}, Lcom/market/pm/api/MarketInstallObserver;->access$000(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDead()V
    .locals 2

    iget-object p0, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    invoke-static {p1, p2}, Lcom/market/pm/api/MarketInstallObserver;->access$000(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
