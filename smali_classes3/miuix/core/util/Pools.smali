.class public final Lmiuix/core/util/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/Pools$SoftReferencePool;,
        Lmiuix/core/util/Pools$BasePool;,
        Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;,
        Lmiuix/core/util/Pools$IInstanceHolder;,
        Lmiuix/core/util/Pools$Manager;,
        Lmiuix/core/util/Pools$Pool;
    }
.end annotation


# static fields
.field private static final mInstanceHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiuix/core/util/Pools$SoftReferenceInstanceHolder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final mStringBuilderPool:Lmiuix/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Pool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 266
    new-instance v0, Lmiuix/core/util/Pools$1;

    invoke-direct {v0}, Lmiuix/core/util/Pools$1;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$Pool;

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 28
    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$SoftReferencePool<",
            "TT;>;"
        }
    .end annotation

    .line 467
    new-instance v0, Lmiuix/core/util/Pools$SoftReferencePool;

    invoke-direct {v0, p0, p1}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    return-object v0
.end method

.method public static getStringBuilderPool()Lmiuix/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/core/util/Pools$Pool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 281
    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$Pool;

    return-object v0
.end method

.method static onSoftReferencePoolClose(Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiuix/core/util/Pools$SoftReferenceInstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 341
    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v0

    neg-int p1, p1

    .line 342
    :try_start_0
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static onSoftReferencePoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$SoftReferenceInstanceHolder<",
            "TT;>;"
        }
    .end annotation

    .line 322
    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 323
    :try_start_0
    sget-object v1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 324
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    invoke-direct {v1, p0, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;-><init>(Ljava/lang/Class;I)V

    .line 327
    sget-object p1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {v1, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    .line 331
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
