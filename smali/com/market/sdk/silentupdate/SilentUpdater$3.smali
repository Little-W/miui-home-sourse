.class Lcom/market/sdk/silentupdate/SilentUpdater$3;
.super Ljava/lang/Object;
.source "SilentUpdater.java"

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

    .line 117
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastErrorCode:I

    .line 119
    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastStatus:I

    const/4 p1, -0x1

    .line 120
    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastProgress:I

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "errorCode"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    iget v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastErrorCode:I

    if-eq v1, v0, :cond_4

    .line 130
    iput v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastErrorCode:I

    if-ltz v0, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 132
    :cond_1
    invoke-static {}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->get()Lcom/market/sdk/silentupdate/UpdateResultReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/silentupdate/UpdateResultReceiver;->unregister()V

    .line 133
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$500(Lcom/market/sdk/silentupdate/SilentUpdater;)V

    :cond_2
    if-gez v0, :cond_3

    const-string v1, "reason"

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v2}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;->onError(II)V

    goto :goto_0

    .line 140
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

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "progress"

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 147
    iget v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastStatus:I

    if-eq v1, v0, :cond_5

    .line 148
    iget-object v1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v1}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;->onStatusChanged(I)V

    .line 149
    iput v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastStatus:I

    .line 151
    :cond_5
    iget v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastProgress:I

    if-eq v0, p1, :cond_6

    .line 152
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->this$0:Lcom/market/sdk/silentupdate/SilentUpdater;

    invoke-static {v0}, Lcom/market/sdk/silentupdate/SilentUpdater;->access$400(Lcom/market/sdk/silentupdate/SilentUpdater;)Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/market/sdk/silentupdate/SilentUpdater$UpdateCallback;->onProgressChanged(I)V

    .line 153
    iput p1, p0, Lcom/market/sdk/silentupdate/SilentUpdater$3;->lastProgress:I

    :cond_6
    :goto_1
    return-void
.end method
