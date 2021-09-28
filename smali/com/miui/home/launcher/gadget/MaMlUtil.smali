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

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 38
    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->sDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static copyMaMlFileFromThemeAppToHome(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/maml/widget/edit/MamlutilKt;->copyMamlResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 68
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$showDownloadMaMlWarningDialog$0(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 174
    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadOnlyWifi()V

    .line 177
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onCancel()V

    return-void
.end method

.method static synthetic lambda$showDownloadMaMlWarningDialog$1(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 181
    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->setMamlDownloadNeverWarn()V

    .line 184
    :cond_0
    invoke-interface {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;->onSure()V

    return-void
.end method

.method public static queryLocalMaMlFile(Landroid/content/Context;Ljava/lang/String;III)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1, p3, p4}, Lcom/miui/maml/widget/edit/MamlutilKt;->findLocalMamlInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static showDownloadMaMlWarningDialog(Landroid/content/Context;JLcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V
    .locals 4

    const-wide/16 v0, 0x400

    .line 165
    div-long/2addr p1, v0

    .line 166
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f100216

    .line 168
    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 169
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const p1, 0x7f100215

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100213

    .line 170
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    .line 171
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    const p1, 0x7f100211

    goto :goto_0

    :cond_0
    const p1, 0x7f100212

    .line 173
    :goto_0
    new-instance p2, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$Cib-GxXEXaSuqrnvO9UXFq2g0kQ;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$Cib-GxXEXaSuqrnvO9UXFq2g0kQ;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    .line 171
    invoke-virtual {p0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f100214

    new-instance p2, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$q0Ap0KjeCK2RJGH7T674Bomi6yc;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public static startMaMlDownload(Landroid/view/View;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V
    .locals 1

    .line 83
    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V

    .line 86
    sget-object p1, Lcom/miui/home/launcher/gadget/MaMlUtil;->mDownloadObservers:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->startMaMlDownload(Landroid/content/Context;)V

    return-void
.end method
