.class public Lcom/miui/home/launcher/gadget/MaMlUtil;
.super Ljava/lang/Object;
.source "MaMlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;,
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;
    }
.end annotation


# static fields
.field private static final mDownloadObservers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 42
    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic lambda$showDownloadMaMlWarningDialog$0(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 157
    check-cast p1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadOnlyWifiWaitTime()V

    .line 160
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onCancel()V

    return-void
.end method

.method static synthetic lambda$showDownloadMaMlWarningDialog$1(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 164
    check-cast p1, Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadNeverWarn()V

    .line 167
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onSure()V

    return-void
.end method

.method public static sendOfflineNotification(Ljava/lang/String;)V
    .locals 2

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.ACTION_OFFLINE_MAML_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "OFFLINE_MAML_BEAN_JSON_DATA"

    .line 345
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.miui.personalassistant"

    .line 346
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static showDownloadMaMlWarningDialog(Landroid/content/Context;JLcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V
    .locals 4

    const-wide/16 v0, 0x400

    .line 148
    div-long/2addr p1, v0

    .line 149
    new-instance v0, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f110297

    .line 151
    invoke-virtual {v0, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 152
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const p1, 0x7f110296

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const/16 v0, 0xa

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const v0, 0x7f110294

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    .line 154
    sget-boolean p1, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    const p1, 0x7f110292

    goto :goto_0

    :cond_0
    const p1, 0x7f110293

    .line 156
    :goto_0
    new-instance p2, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$Cib-GxXEXaSuqrnvO9UXFq2g0kQ;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$Cib-GxXEXaSuqrnvO9UXFq2g0kQ;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    .line 154
    invoke-virtual {p0, p1, p2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f110295

    new-instance p2, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    .line 163
    invoke-virtual {p0, p1, p2}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-void
.end method

.method public static startMaMlDownload(Landroid/view/View;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V

    .line 64
    sget-object p1, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->startMaMlDownload(Landroid/content/Context;)V

    return-void
.end method
