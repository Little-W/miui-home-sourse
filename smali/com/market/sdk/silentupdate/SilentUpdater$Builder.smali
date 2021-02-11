.class public Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
.super Ljava/lang/Object;
.source "SilentUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/silentupdate/SilentUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private callback:Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

.field private extras:Landroid/os/Bundle;

.field private forceUpdate:Z

.field private hideUpdate:Z

.field private showUserAgreementIfNeeded:Z

.field private targetPkg:Ljava/lang/String;

.field private versionCode:I

.field private wifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 410
    const-class v0, Lcom/market/sdk/silentupdate/SilentUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 414
    iput v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->versionCode:I

    return-void
.end method


# virtual methods
.method public build()Lcom/market/sdk/silentupdate/SilentUpdater;
    .locals 3

    .line 548
    new-instance v0, Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-direct {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;-><init>()V

    .line 549
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$602(Lcom/market/sdk/silentupdate/SilentUpdater;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->appKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$702(Lcom/market/sdk/silentupdate/SilentUpdater;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    iget v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->versionCode:I

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$802(Lcom/market/sdk/silentupdate/SilentUpdater;I)I

    .line 553
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->targetPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    invoke-static {}, Lcom/market/sdk/utils/Client;->isInternationalMiui()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.xiaomi.mipicks"

    const/4 v2, -0x1

    .line 555
    invoke-static {v1, v2}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$900(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.xiaomi.mipicks"

    goto :goto_0

    :cond_0
    const-string v1, "com.xiaomi.discover"

    :goto_0
    iput-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->targetPkg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "com.xiaomi.market"

    .line 557
    iput-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->targetPkg:Ljava/lang/String;

    .line 561
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->targetPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$1002(Lcom/market/sdk/silentupdate/SilentUpdater;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->callback:Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$402(Lcom/market/sdk/silentupdate/SilentUpdater;Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    .line 563
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->extras:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$1102(Lcom/market/sdk/silentupdate/SilentUpdater;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 564
    iget-boolean v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->forceUpdate:Z

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$1202(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z

    .line 565
    iget-boolean v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->wifiOnly:Z

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$1302(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z

    .line 566
    iget-boolean v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->hideUpdate:Z

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$1402(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z

    .line 567
    iget-boolean v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->showUserAgreementIfNeeded:Z

    invoke-static {v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$1502(Lcom/market/sdk/silentupdate/SilentUpdater;Z)Z

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public setCallback(Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->callback:Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 1

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setForceUpdate(Z)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->forceUpdate:Z

    return-object p0
.end method

.method public setHideUpdate(Z)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 529
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->hideUpdate:Z

    return-object p0
.end method

.method public setShowUserAgreementIfNeeded(Z)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 509
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->showUserAgreementIfNeeded:Z

    return-object p0
.end method

.method public setTargetPkg(Ljava/lang/String;)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->targetPkg:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 465
    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->versionCode:I

    return-object p0
.end method

.method public setWifiOnly(Z)Lcom/market/sdk/silentupdate/SilentUpdater$Builder;
    .locals 0

    .line 519
    iput-boolean p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->wifiOnly:Z

    return-object p0
.end method

.method public update()Lcom/market/sdk/silentupdate/SilentUpdater;
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/market/sdk/silentupdate/SilentUpdater$Builder;->build()Lcom/market/sdk/silentupdate/SilentUpdater;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->update()V

    return-object v0
.end method
