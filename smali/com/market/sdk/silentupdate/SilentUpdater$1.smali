.class Lcom/market/sdk/silentupdate/SilentUpdater$1;
.super Ljava/lang/Object;
.source "SilentUpdater.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/silentupdate/SilentUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/silentupdate/SilentUpdater;


# direct methods
.method constructor <init>(Lcom/market/sdk/silentupdate/SilentUpdater;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$1;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$1;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$002(Lcom/market/sdk/silentupdate/SilentUpdater;Lcom/xiaomi/market/IAppDownloadManager;)Lcom/xiaomi/market/IAppDownloadManager;

    return-void
.end method
