.class Lpl/droidsonroids/gif/InvalidationHandler;
.super Landroid/os/Handler;


# instance fields
.field private final mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lpl/droidsonroids/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lpl/droidsonroids/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/droidsonroids/gif/GifDrawable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/AnimationListener;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lpl/droidsonroids/gif/AnimationListener;->onAnimationCompleted(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
