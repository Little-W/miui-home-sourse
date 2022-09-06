.class Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;
.super Ljava/lang/Object;
.source "DownloadInstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->install(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

.field final synthetic val$diffUpdate:Z

.field final synthetic val$originApkPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;Z)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->this$1:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    iput-object p2, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->val$originApkPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->val$diffUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->val$originApkPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->this$1:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-virtual {v0}, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->reloadDownloadTasks()V

    .line 299
    iget-object v0, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->val$originApkPath:Ljava/lang/String;

    .line 300
    iget-boolean v1, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->val$diffUpdate:Z

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->this$1:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    iget-object v2, v1, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->this$0:Lcom/market/sdk/DownloadInstallManager;

    invoke-static {v2}, Lcom/market/sdk/DownloadInstallManager;->access$100(Lcom/market/sdk/DownloadInstallManager;)Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/market/sdk/XiaomiUpdateAgent$UpdateInfo;->diffHash:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->access$900(Lcom/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->this$1:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-static {v1, v0}, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->access$1000(Lcom/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "MarketUpdateDownload"

    const-string/jumbo v1, "verify downloaded apk failed"

    .line 305
    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/market/sdk/DownloadInstallManager$WorkerHandler$2;->this$1:Lcom/market/sdk/DownloadInstallManager$WorkerHandler;

    invoke-static {v1, v0}, Lcom/market/sdk/DownloadInstallManager$WorkerHandler;->access$1100(Lcom/market/sdk/DownloadInstallManager$WorkerHandler;Ljava/lang/String;)V

    return-void
.end method
