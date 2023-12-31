.class abstract Lmiuix/core/util/Pools$BasePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lmiuix/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BasePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiuix/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mFinalizeGuardian:Ljava/lang/Object;

.field private mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mManager:Lmiuix/core/util/Pools$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mSize:I


# direct methods
.method public constructor <init>(Lmiuix/core/util/Pools$Manager;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Lmiuix/core/util/Pools$BasePool$1;

    invoke-direct {v0, p0}, Lmiuix/core/util/Pools$BasePool$1;-><init>(Lmiuix/core/util/Pools$BasePool;)V

    iput-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mFinalizeGuardian:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 369
    iput-object p1, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    .line 370
    iput p2, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 371
    iget-object p1, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {p1}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 377
    invoke-virtual {p0, v0, p2}, Lmiuix/core/util/Pools$BasePool;->createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;

    move-result-object p2

    iput-object p2, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    .line 378
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    return-void

    .line 373
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "manager create instance cannot return null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 365
    :cond_1
    iget-object p1, p0, Lmiuix/core/util/Pools$BasePool;->mFinalizeGuardian:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    .line 366
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "manager cannot be null and size cannot less then 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lmiuix/core/util/Pools$BasePool;->doAcquire()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 2

    .line 430
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    if-eqz v0, :cond_0

    .line 431
    iget v1, p0, Lmiuix/core/util/Pools$BasePool;->mSize:I

    invoke-virtual {p0, v0, v1}, Lmiuix/core/util/Pools$BasePool;->destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    :cond_0
    return-void
.end method

.method abstract createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method protected final doAcquire()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    if-eqz v0, :cond_2

    .line 389
    invoke-interface {v0}, Lmiuix/core/util/Pools$IInstanceHolder;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$Manager;->createInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "manager create instance cannot return null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 397
    :cond_1
    :goto_0
    iget-object p0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {p0, v0}, Lmiuix/core/util/Pools$Manager;->onAcquire(Ljava/lang/Object;)V

    return-object v0

    .line 386
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot acquire object after close()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final doRelease(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$Manager;->onRelease(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lmiuix/core/util/Pools$BasePool;->mInstanceHolder:Lmiuix/core/util/Pools$IInstanceHolder;

    invoke-interface {v0, p1}, Lmiuix/core/util/Pools$IInstanceHolder;->put(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object p0, p0, Lmiuix/core/util/Pools$BasePool;->mManager:Lmiuix/core/util/Pools$Manager;

    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$Manager;->onDestroy(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 404
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot release object after close()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 425
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    return-void
.end method
