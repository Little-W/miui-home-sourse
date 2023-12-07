.class Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mirror/synergy/RelayIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/system/MiuiRelayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;


# direct methods
.method constructor <init>(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconHide()V
    .locals 3

    const-string v0, "MiuiRelayController"

    const-string v1, "onIconHide"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$002(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Z)Z

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    new-array v2, v1, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$202(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$200(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/TaskListenerInner;->onLocalHandoffTaskUpdate(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method public onIconShow()V
    .locals 2

    const-string v0, "MiuiRelayController"

    const-string v1, "onIconShow"

    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$002(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Z)Z

    return-void
.end method

.method public onIconUpdate(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const-string v2, "MiuiRelayController"

    const-string v3, "onIconUpdate"

    invoke-static {v2, v3}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v3}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v3}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$000(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v3}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$300(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    move-object v4, p2

    move-object/from16 v8, p3

    invoke-static {v3, p1, p2, v8}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$400(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "onIconUpdate error, appMeta empty"

    invoke-static {v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/AppMeta;->isSupportHandoff()Z

    move-result v4

    iget-object v5, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v5}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$300(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move/from16 v6, p7

    invoke-static {v6, v4, v5, p1}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->useMiuiRelay(ZZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "support handoff, ignore miui relay"

    invoke-static {v2, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->onIconHide()V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    new-instance v9, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    iget-object v1, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    move/from16 v2, p5

    invoke-static {v1, v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$500(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;I)I

    move-result v1

    move-object/from16 v2, p4

    move-object/from16 v4, p6

    invoke-direct {v9, v4, v1, v2}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iget-object v2, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$600(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/AppMeta;->getAppId()I

    move-result v7

    const/4 v10, 0x0

    move-object v4, v1

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v12}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;-><init>(IIILjava/lang/String;Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;ZJ)V

    invoke-virtual {v1, v3}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->setAppMeta(Lcom/xiaomi/dist/handoff/AppMeta;)V

    iget-object v2, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$202(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iget-object v1, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v1}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$100(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$200(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/xiaomi/dist/handoff/system/TaskListenerInner;->onLocalHandoffTaskUpdate(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRelayComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public onRelayError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/MiuiRelayController$1;->this$0:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->access$700(Lcom/xiaomi/dist/handoff/system/MiuiRelayController;)Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
