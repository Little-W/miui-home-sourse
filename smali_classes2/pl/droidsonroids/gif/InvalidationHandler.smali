.class Lpl/droidsonroids/gif/InvalidationHandler;
.super Landroid/os/Handler;
.source "InvalidationHandler.java"


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
    .locals 3

    .line 24
    iget-object v0, p0, Lpl/droidsonroids/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifDrawable;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 29
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    goto :goto_1

    .line 31
    :cond_1
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/AnimationListener;

    .line 32
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lpl/droidsonroids/gif/AnimationListener;->onAnimationCompleted(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
