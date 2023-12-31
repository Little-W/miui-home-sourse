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

    .line 294
    iput-object p1, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    .line 295
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 300
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/RenderThread$CommandThreadHandler;->this$0:Lcom/miui/maml/RenderThread;

    invoke-static {p0, v0}, Lcom/miui/maml/RenderThread;->access$000(Lcom/miui/maml/RenderThread;Z)V

    :goto_0
    return-void
.end method

.method public setPause(Z)V
    .locals 1

    .line 313
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    .line 314
    iput p1, v0, Landroid/os/Message;->what:I

    .line 315
    invoke-virtual {p0, v0}, Lcom/miui/maml/RenderThread$CommandThreadHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
