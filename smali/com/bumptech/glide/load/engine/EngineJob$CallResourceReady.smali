.class Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallResourceReady"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->contains(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->callCallbackOnResourceReady(Lcom/bumptech/glide/request/ResourceCallback;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
