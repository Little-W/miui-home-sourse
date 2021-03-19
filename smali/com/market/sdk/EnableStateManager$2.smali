.class Lcom/market/sdk/EnableStateManager$2;
.super Lcom/market/sdk/RemoteMethodInvoker;
.source "EnableStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/EnableStateManager;->tryUpdateCloudSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/RemoteMethodInvoker<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/EnableStateManager;


# direct methods
.method constructor <init>(Lcom/market/sdk/EnableStateManager;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/market/sdk/EnableStateManager$2;->this$0:Lcom/market/sdk/EnableStateManager;

    invoke-direct {p0}, Lcom/market/sdk/RemoteMethodInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 322
    :try_start_0
    invoke-interface {p1}, Lcom/market/sdk/IMarketService;->getEnableSettings()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 332
    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 326
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/market/sdk/EnableStateManager;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 328
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_3
    const-string v2, "MarketManager"

    .line 330
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :goto_1
    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p1

    :goto_2
    invoke-static {v1}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 333
    throw p1
.end method
