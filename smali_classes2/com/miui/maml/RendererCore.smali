.class public Lcom/miui/maml/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RendererCore$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/RendererCore$OnReleaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/miui/maml/MultipleRenderable;

    invoke-direct {v0}, Lcom/miui/maml/MultipleRenderable;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 24
    iput-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 25
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 26
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 27
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 28
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 3

    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 37
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->add(Lcom/miui/maml/RendererController$IRenderable;)V

    const-string v0, "RendererCore"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cleanUp()V
    .locals 2

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RendererCore"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 98
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->cleanUp()V

    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object p0
.end method

.method public declared-synchronized pauseRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 65
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->pause(Lcom/miui/maml/RendererController$IRenderable;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "RendererCore"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "self pause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 3

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 47
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->remove(Lcom/miui/maml/RendererController$IRenderable;)V

    const-string v0, "RendererCore"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 52
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 53
    iget-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/RendererCore$OnReleaseListener;

    invoke-interface {p1, p0}, Lcom/miui/maml/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Lcom/miui/maml/RendererCore;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->cleanUp()V

    :cond_1
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public declared-synchronized resumeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->resume(Lcom/miui/maml/RendererController$IRenderable;)I

    const-string p1, "RendererCore"

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "self resume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setOnReleaseListener(Lcom/miui/maml/RendererCore$OnReleaseListener;)V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
