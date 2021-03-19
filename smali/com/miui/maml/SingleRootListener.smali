.class public Lcom/miui/maml/SingleRootListener;
.super Ljava/lang/Object;
.source "SingleRootListener.java"

# interfaces
.implements Lcom/miui/maml/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/RendererController$IRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/maml/SingleRootListener;->setRoot(Lcom/miui/maml/ScreenElementRoot;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/miui/maml/SingleRootListener;->setRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/RendererController$IRenderable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->finish()V

    return-void
.end method

.method public forceUpdate()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/RendererController$IRenderable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 85
    instance-of v1, v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    invoke-interface {v0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->forceUpdate()V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->init()V

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->resume()V

    return-void
.end method

.method public setRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRoot(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "root is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tick(J)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ScreenElementRoot;->tick(J)V

    return-void
.end method

.method public triggerUpdate()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/RendererController$IRenderable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 78
    instance-of v1, v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    if-eqz v1, :cond_1

    .line 79
    check-cast v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    invoke-interface {v0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->triggerUpdate()V

    :cond_1
    return-void
.end method
