.class Lcom/squareup/picasso/Dispatcher$DispatcherHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DispatcherHandler"
.end annotation


# instance fields
.field private final dispatcher:Lcom/squareup/picasso/Dispatcher;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/Dispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/Dispatcher$DispatcherHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/picasso/Dispatcher$DispatcherHandler$1;-><init>(Lcom/squareup/picasso/Dispatcher$DispatcherHandler;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performResumeTag(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performPauseTag(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Dispatcher;->performAirplaneModeChange(Z)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performNetworkStateChange(Landroid/net/NetworkInfo;)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0}, Lcom/squareup/picasso/Dispatcher;->performBatchComplete()V

    goto :goto_1

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/picasso/BitmapHunter;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1, v1}, Lcom/squareup/picasso/Dispatcher;->performError(Lcom/squareup/picasso/BitmapHunter;Z)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/picasso/BitmapHunter;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performRetry(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_1

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/picasso/BitmapHunter;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performComplete(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_1

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/picasso/Action;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performCancel(Lcom/squareup/picasso/Action;)V

    goto :goto_1

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/picasso/Action;

    iget-object p0, p0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Dispatcher;->performSubmit(Lcom/squareup/picasso/Action;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
