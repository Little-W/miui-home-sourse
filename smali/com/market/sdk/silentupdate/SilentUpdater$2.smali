.class Lcom/market/sdk/silentupdate/SilentUpdater$2;
.super Ljava/lang/Object;
.source "SilentUpdater.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 94
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {p2}, Lcom/xiaomi/market/IAppDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$002(Lcom/market/sdk/silentupdate/SilentUpdater;Lcom/xiaomi/market/IAppDownloadManager;)Lcom/xiaomi/market/IAppDownloadManager;

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {p1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$000(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/market/IAppDownloadManager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {p2}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$100(Lcom/market/sdk/silentupdate/SilentUpdater;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 103
    :goto_0
    invoke-static {}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->get()Lcom/market/sdk/silentupdate/UpdateResultReceiver;

    move-result-object p1

    iget-object p2, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {p2}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$200(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->register(Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;)V

    .line 104
    iget-object p0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {p0}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$300(Lcom/market/sdk/silentupdate/SilentUpdater;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {p1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$000(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/xiaomi/market/IAppDownloadManager;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$100(Lcom/market/sdk/silentupdate/SilentUpdater;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$2;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$002(Lcom/market/sdk/silentupdate/SilentUpdater;Lcom/xiaomi/market/IAppDownloadManager;)Lcom/xiaomi/market/IAppDownloadManager;

    return-void
.end method
