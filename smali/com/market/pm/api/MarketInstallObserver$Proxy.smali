.class public Lcom/market/pm/api/MarketInstallObserver$Proxy;
.super Ljava/lang/Object;
.source "MarketInstallObserver.java"

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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public onRefuseInstall(Ljava/lang/String;I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    invoke-static {p1, p2}, Lcom/market/pm/api/MarketInstallObserver;->access$000(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDead()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/market/pm/api/MarketInstallObserver$Proxy;->mRemote:Landroid/os/ResultReceiver;

    invoke-static {p1, p2}, Lcom/market/pm/api/MarketInstallObserver;->access$000(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
