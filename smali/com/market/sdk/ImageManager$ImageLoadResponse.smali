.class Lcom/market/sdk/ImageManager$ImageLoadResponse;
.super Lcom/market/sdk/IImageCallback$Stub;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadResponse"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/market/sdk/IImageCallback$Stub;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/market/sdk/ImageManager$ImageLoadResponse;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 2

    .line 137
    invoke-static {}, Lcom/market/sdk/ImageManager;->access$800()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-static {}, Lcom/market/sdk/ImageManager;->access$800()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/market/sdk/ImageManager$ImageLoadResponse;->mKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 139
    invoke-static {p0}, Lcom/market/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market/sdk/ImageCallback;

    .line 141
    invoke-interface {v1, p1}, Lcom/market/sdk/ImageCallback;->onImageLoadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 125
    invoke-static {}, Lcom/market/sdk/ImageManager;->access$700()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/ImageManager$ImageLoadResponse;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/market/sdk/ImageManager;->access$800()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-static {}, Lcom/market/sdk/ImageManager;->access$800()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/market/sdk/ImageManager$ImageLoadResponse;->mKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 128
    invoke-static {p0}, Lcom/market/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market/sdk/ImageCallback;

    .line 130
    invoke-interface {v1, p1, p2}, Lcom/market/sdk/ImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 133
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
