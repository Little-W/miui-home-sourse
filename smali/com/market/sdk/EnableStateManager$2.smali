.class Lcom/market/sdk/EnableStateManager$2;
.super Lcom/market/sdk/RemoteMethodInvoker;


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

    iput-object p1, p0, Lcom/market/sdk/EnableStateManager$2;->this$0:Lcom/market/sdk/EnableStateManager;

    invoke-direct {p0}, Lcom/market/sdk/RemoteMethodInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/market/sdk/IMarketService;->getEnableSettings()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/market/sdk/EnableStateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p0

    :goto_0
    :try_start_3
    const-string v1, "MarketManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcom/market/sdk/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method
