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
    const-string/jumbo p0, "\u5b58\u50a8\u5206\u533a\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5SD\u5361"

    .line 20
    invoke-static {p0}, Lcom/market/sdk/DownloadInstallResultNotifier;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo p0, "\u8fde\u63a5\u4e0b\u8f7d\u7ba1\u7406\u5668\u5931\u8d25\uff0c\u8bf7\u5728\u5e94\u7528\u7ba1\u7406\u4e2d\u68c0\u67e5\u4e0b\u8f7d\u7ba1\u7406\u5668\u7684\u72b6\u6001"

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
