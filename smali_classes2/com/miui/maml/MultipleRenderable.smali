.class public Lcom/miui/maml/MultipleRenderable;
.super Ljava/lang/Object;
.source "MultipleRenderable.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/MultipleRenderable$RenderableInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultipleRenderable"


# instance fields
.field private mActiveCount:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/MultipleRenderable$RenderableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 78
    iget-object v2, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 79
    iget-object v3, v2, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultipleRenderable"

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 66
    iget p0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    return p0

    .line 68
    :cond_0
    iget-boolean v0, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-eq v0, p2, :cond_2

    .line 69
    iput-boolean p2, p1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    .line 70
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 72
    :cond_2
    iget p0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    return p0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 3

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/MultipleRenderable;->find(Lcom/miui/maml/RendererController$IRenderable;)Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 28
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "MultipleRenderable"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    invoke-direct {v1, p1}, Lcom/miui/maml/MultipleRenderable$RenderableInfo;-><init>(Lcom/miui/maml/RendererController$IRenderable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized doRender()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 87
    :try_start_0
    iput v0, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 88
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 91
    iget-boolean v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    iget-object v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/RendererController$IRenderable;

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v1}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    .line 96
    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    goto :goto_1

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 101
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause(Lcom/miui/maml/RendererController$IRenderable;)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 54
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 5

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 38
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;

    .line 42
    iget-object v2, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController$IRenderable;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_3

    .line 44
    :cond_1
    iget-boolean v1, v1, Lcom/miui/maml/MultipleRenderable$RenderableInfo;->paused:Z

    if-nez v1, :cond_2

    .line 45
    iget v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/maml/MultipleRenderable;->mActiveCount:I

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v1, "MultipleRenderable"

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume(Lcom/miui/maml/RendererController$IRenderable;)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/MultipleRenderable;->setPause(Lcom/miui/maml/RendererController$IRenderable;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/MultipleRenderable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
