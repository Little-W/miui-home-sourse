.class public Lcom/market/sdk/ImageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/ImageManager$ImageLoadResponse;,
        Lcom/market/sdk/ImageManager$ImageLoadTask;,
        Lcom/market/sdk/ImageManager$IconLoadTask;
    }
.end annotation


# static fields
.field private static sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoadingIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/market/sdk/ImageCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/market/sdk/ImageManager;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/market/sdk/ImageManager;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    return-object v0
.end method

.method public static loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    sget-object v1, Lcom/market/sdk/ImageManager;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, p0, v1}, Lcom/market/sdk/ImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    :cond_1
    sget-object v1, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    sget-object v3, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    sget-object v4, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_3

    new-instance v0, Lcom/market/sdk/ImageManager$IconLoadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/market/sdk/ImageManager$IconLoadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/ImageCallback;)V

    invoke-virtual {v0}, Lcom/market/sdk/ImageManager$IconLoadTask;->start()V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static loadImage(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V
    .locals 4

    sget-object v0, Lcom/market/sdk/ImageManager;->sCachedUri:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, p0, v0}, Lcom/market/sdk/ImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    :cond_0
    sget-object v0, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    sget-object v2, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/market/sdk/utils/CollectionUtils;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    sget-object v3, Lcom/market/sdk/ImageManager;->sLoadingIcons:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    new-instance v1, Lcom/market/sdk/ImageManager$ImageLoadTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/market/sdk/ImageManager$ImageLoadTask;-><init>(Ljava/lang/String;IILcom/market/sdk/ImageCallback;)V

    invoke-virtual {v1}, Lcom/market/sdk/ImageManager$ImageLoadTask;->start()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
