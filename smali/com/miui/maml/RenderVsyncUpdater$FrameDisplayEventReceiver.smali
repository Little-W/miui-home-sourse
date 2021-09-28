.class final Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
.super Lcom/miui/maml/MamlDisplayEventReceiver;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    .line 170
    invoke-direct {p0, p2}, Lcom/miui/maml/MamlDisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onVsync(J)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/maml/RenderVsyncUpdater;->access$222(Lcom/miui/maml/RenderVsyncUpdater;J)J

    .line 176
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-static {v1}, Lcom/miui/maml/RenderVsyncUpdater;->access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$200(Lcom/miui/maml/RenderVsyncUpdater;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$100(Lcom/miui/maml/RenderVsyncUpdater;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    :cond_1
    :goto_0
    return-void
.end method
