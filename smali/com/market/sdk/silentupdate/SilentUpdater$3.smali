.class Lcom/market/sdk/silentupdate/SilentUpdater$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/sdk/silentupdate/UpdateResultReceiver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/silentupdate/SilentUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastErrorCode:I

.field private lastProgress:I

.field private lastStatus:I

.field final synthetic this$0:Lcom/market/sdk/silentupdate/SilentUpdater;


# direct methods
.method constructor <init>(Lcom/market/sdk/silentupdate/SilentUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastErrorCode:I

    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastStatus:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastProgress:I

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "errorCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastErrorCode:I

    if-eq v1, v0, :cond_4

    iput v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastErrorCode:I

    if-ltz v0, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->get()Lcom/market/sdk/silentupdate/UpdateResultReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->unregister()V

    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$500(Lcom/market/sdk/silentupdate/SilentUpdater;)V

    :cond_2
    if-gez v0, :cond_3

    const-string v1, "reason"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v2}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;->onError(II)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v1

    iget v2, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastErrorCode:I

    invoke-interface {v1, v2}, Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;->onStageChanged(I)V

    :cond_4
    :goto_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastStatus:I

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;->onStatusChanged(I)V

    iput v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastStatus:I

    :cond_5
    iget v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastProgress:I

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;->onProgressChanged(I)V

    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastProgress:I

    :cond_6
    :goto_1
    return-void
.end method
