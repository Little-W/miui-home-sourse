.class public Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/manager/LifecycleListener;"
    }
.end annotation


# static fields
.field private static final DECODE_TYPE_BITMAP:Lcom/bumptech/glide/request/RequestOptions;

.field private static final DECODE_TYPE_GIF:Lcom/bumptech/glide/request/RequestOptions;

.field private static final DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field private final addSelfToLifecycle:Ljava/lang/Runnable;

.field private final connectivityMonitor:Lcom/bumptech/glide/manager/ConnectivityMonitor;

.field protected final context:Landroid/content/Context;

.field private final defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final glide:Lcom/bumptech/glide/Glide;

.field final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private final mainHandler:Landroid/os/Handler;

.field private requestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

.field private final targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

.field private final treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/bumptech/glide/request/RequestOptions;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/RequestManager;->DECODE_TYPE_GIF:Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sput-object v0, Lcom/bumptech/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 7

    new-instance v4, Lcom/bumptech/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getConnectivityMonitorFactory()Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/TargetTracker;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/TargetTracker;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    new-instance v0, Lcom/bumptech/glide/RequestManager$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;)V

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->mainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    iput-object p4, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    iput-object p6, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {p6, p0, p4}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/RequestTracker;)V

    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->connectivityMonitor:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/bumptech/glide/RequestManager;->mainHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/bumptech/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/RequestManager;->connectivityMonitor:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/GlideContext;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/GlideContext;->getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/Glide;->registerRequestManager(Lcom/bumptech/glide/RequestManager;)V

    return-void
.end method

.method private untrackOrDelegate(Lcom/bumptech/glide/request/target/Target;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->untrack(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/Glide;->removeFromManagers(Lcom/bumptech/glide/request/target/Target;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    invoke-interface {p0}, Lcom/bumptech/glide/request/Request;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized clear(Lcom/bumptech/glide/request/target/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/RequestManager;->untrackOrDelegate(Lcom/bumptech/glide/request/target/Target;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method getDefaultRequestListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method declared-synchronized getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/TransitionOptions<",
            "*TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->getGlideContext()Lcom/bumptech/glide/GlideContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/GlideContext;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->clearRequests()V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/Lifecycle;->removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->connectivityMonitor:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/Lifecycle;->removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/Glide;->unregisterRequestManager(Lcom/bumptech/glide/RequestManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseRequests()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeRequests()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/RequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->requestOptions:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->treeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized track(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;",
            "Lcom/bumptech/glide/request/Request;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/TargetTracker;->track(Lcom/bumptech/glide/request/target/Target;)V

    iget-object p1, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/manager/RequestTracker;->runRequest(Lcom/bumptech/glide/request/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized untrack(Lcom/bumptech/glide/request/target/Target;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/RequestTracker;->clearRemoveAndRecycle(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->targetTracker:Lcom/bumptech/glide/manager/TargetTracker;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/TargetTracker;->untrack(Lcom/bumptech/glide/request/target/Target;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
