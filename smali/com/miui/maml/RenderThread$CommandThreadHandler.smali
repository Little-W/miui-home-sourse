.class Lcom/miui/maml/RenderThread$CommandThreadHandler;
.super Landroid/os/Handler;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandThreadHandler"
.end annotation


# static fields
.field private static final MSG_PAUSE:I = 0x0

.field private static final MSG_RESUME:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RenderThread;Landroid/os/Looper;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 302
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 307
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    iget-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPause(Z)V
    .locals 1

    .line 320
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    .line 321
    iput p1, v0, Landroid/os/Message;->what:I

    .line 322
    invoke-virtual {p0, v0}, Lcom/miui/maml/RenderThread$CommandThreadHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
