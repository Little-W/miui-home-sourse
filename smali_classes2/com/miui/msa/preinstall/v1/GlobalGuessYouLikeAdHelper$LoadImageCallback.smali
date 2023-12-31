.class Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;
.super Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback$Stub;
.source "GlobalGuessYouLikeAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageCallback"
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;


# direct methods
.method constructor <init>(Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;->this$0:Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    invoke-direct {p0}, Lcom/miui/msa/global/guessyoulike/v1/IGlobalImageCallback$Stub;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    :try_start_0
    invoke-static {}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->access$100()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :try_start_1
    invoke-static {}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;->mUrl:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 276
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 277
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    .line 278
    invoke-interface {v1, p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;->onImageLoadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "GlobalGuessYouLikeAdHelper"

    const-string v0, "onImageLoadFailed exception:"

    .line 283
    invoke-static {p1, v0, p0}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    :try_start_0
    invoke-static {}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->access$100()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    invoke-static {}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->access$100()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper$LoadImageCallback;->mUrl:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 260
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    .line 262
    invoke-interface {v1, p1, p2}, Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;->onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 265
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "GlobalGuessYouLikeAdHelper"

    const-string p2, "onImageLoadSuccess exception:"

    .line 267
    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/common/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
