.class public Lcom/market/sdk/DownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadCompleteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/DownloadCompleteReceiver$_lancet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketSDKDownloadReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market/sdk/DownloadCompleteReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/DownloadCompleteReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 17
    invoke-static {}, Lcom/market/sdk/utils/Client;->isMiui()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    .line 22
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p2, "MarketSDKDownloadReceiver"

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on sdk download complete : id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p2, v3, v1

    if-nez p2, :cond_1

    return-void

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/DownloadInstallManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/market/sdk/DownloadInstallManager;->handleDownloadComplete(J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/market/sdk/DownloadCompleteReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/market/sdk/DownloadCompleteReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
