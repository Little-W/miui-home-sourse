.class Lcom/market/sdk/ImageManager$IconLoadTask$1;
.super Lcom/market/sdk/RemoteMethodInvoker;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/ImageManager$IconLoadTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market/sdk/RemoteMethodInvoker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/ImageManager$IconLoadTask;


# direct methods
.method constructor <init>(Lcom/market/sdk/ImageManager$IconLoadTask;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/market/sdk/ImageManager$IconLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$IconLoadTask;

    invoke-direct {p0}, Lcom/market/sdk/RemoteMethodInvoker;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/market/sdk/ImageManager$IconLoadTask$1;->innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/market/sdk/IMarketService;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/market/sdk/ImageManager$IconLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$IconLoadTask;

    invoke-static {v0}, Lcom/market/sdk/ImageManager$IconLoadTask;->access$000(Lcom/market/sdk/ImageManager$IconLoadTask;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/market/sdk/ImageManager$IconLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$IconLoadTask;

    invoke-static {v1}, Lcom/market/sdk/ImageManager$IconLoadTask;->access$100(Lcom/market/sdk/ImageManager$IconLoadTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/market/sdk/ImageManager$IconLoadTask$1;->this$0:Lcom/market/sdk/ImageManager$IconLoadTask;

    invoke-static {v2}, Lcom/market/sdk/ImageManager$IconLoadTask;->access$200(Lcom/market/sdk/ImageManager$IconLoadTask;)Lcom/market/sdk/IImageCallback;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/market/sdk/IMarketService;->loadIcon(Ljava/lang/String;Ljava/lang/String;Lcom/market/sdk/IImageCallback;)V

    const/4 p1, 0x0

    return-object p1
.end method
