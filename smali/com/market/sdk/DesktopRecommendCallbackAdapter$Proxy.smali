.class public Lcom/market/sdk/DesktopRecommendCallbackAdapter$Proxy;
.super Ljava/lang/Object;
.source "DesktopRecommendCallbackAdapter.java"

# interfaces
.implements Lcom/market/sdk/DesktopRecommendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/DesktopRecommendCallbackAdapter;
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter$Proxy;->mRemote:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 2

    .line 56
    iget-object p0, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter$Proxy;->mRemote:Landroid/os/ResultReceiver;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onLoadSuccess(Lcom/market/sdk/DesktopRecommendInfo;)V
    .locals 2

    .line 49
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 50
    invoke-virtual {p1}, Lcom/market/sdk/DesktopRecommendInfo;->convertToJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/market/sdk/DesktopRecommendCallbackAdapter$Proxy;->mRemote:Landroid/os/ResultReceiver;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
