.class Lcom/market/sdk/DownloadInstallResultNotifier;
.super Ljava/lang/Object;
.source "DownloadInstallResultNotifier.java"


# static fields
.field public static final ERROR_CONNECT_DOWNLOAD_MANAGER:I = -0x2

.field public static final ERROR_SDCARD_NOT_AVAILABLE:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyResult(I)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo p0, "存储分区不可用\uff0c请检查SD卡"

    .line 20
    invoke-static {p0}, Lcom/market/sdk/DownloadInstallResultNotifier;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo p0, "连接下载管理器失败\uff0c请在应用管理中检查下载管理器的状态"

    .line 24
    invoke-static {p0}, Lcom/market/sdk/DownloadInstallResultNotifier;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static showToast(I)V
    .locals 2

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    new-instance v1, Lcom/market/sdk/DownloadInstallResultNotifier$1;

    invoke-direct {v1, p0}, Lcom/market/sdk/DownloadInstallResultNotifier$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    new-instance v1, Lcom/market/sdk/DownloadInstallResultNotifier$2;

    invoke-direct {v1, p0}, Lcom/market/sdk/DownloadInstallResultNotifier$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
