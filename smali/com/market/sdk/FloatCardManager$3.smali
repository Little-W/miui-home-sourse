.class Lcom/market/sdk/FloatCardManager$3;
.super Ljava/lang/Object;
.source "FloatCardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/FloatCardManager;->resumeByFloat(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/sdk/FloatCardManager;

.field final synthetic val$appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

.field final synthetic val$mData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/FloatCardManager;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/market/sdk/FloatCardManager$3;->this$0:Lcom/market/sdk/FloatCardManager;

    iput-object p2, p0, Lcom/market/sdk/FloatCardManager$3;->val$appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    iput-object p3, p0, Lcom/market/sdk/FloatCardManager$3;->val$mData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/market/sdk/FloatCardManager$3;->val$appDownloadManager:Lcom/xiaomi/market/IAppDownloadManager;

    iget-object v1, p0, Lcom/market/sdk/FloatCardManager$3;->this$0:Lcom/market/sdk/FloatCardManager;

    iget-object p0, p0, Lcom/market/sdk/FloatCardManager$3;->val$mData:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "packageName"

    invoke-static {v1, p0, v2}, Lcom/market/sdk/FloatCardManager;->access$000(Lcom/market/sdk/FloatCardManager;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/xiaomi/market/IAppDownloadManager;->resume(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
