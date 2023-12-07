.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field final animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory$1;-><init>(Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    return-void
.end method


# virtual methods
.method build(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-static {p0}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/EngineJob;->init(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object p0

    return-object p0
.end method
