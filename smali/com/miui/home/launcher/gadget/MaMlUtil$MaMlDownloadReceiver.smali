.class Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MaMlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/MaMlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaMlDownloadReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$_lancet;
    }
.end annotation


# static fields
.field private static sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;


# instance fields
.field private volatile mDownloadStatus:I

.field private final maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

.field private final maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    .line 210
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 211
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 7

    .line 258
    new-instance v6, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 259
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    const/4 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object v6
.end method

.method private handle(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 2

    .line 301
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "MaMlUtil"

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaMlDownload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    .line 325
    iput p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 326
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(I)V

    goto :goto_0

    :pswitch_1
    const-string p1, "MaMlUtil"

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MaMlDownload done"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 318
    iput p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 319
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(I)V

    goto :goto_0

    .line 310
    :pswitch_2
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    .line 311
    iput p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 312
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(I)V

    goto :goto_0

    .line 303
    :pswitch_3
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 304
    iput v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 305
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(I)V

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getProgressPercent()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadProgress(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$startMaMlDownload$0(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->timeOut(Landroid/content/Context;)V

    return-void
.end method

.method private onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 4

    const-string v0, "MaMlUtil"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive product = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 273
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 275
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 280
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 281
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getMamlVersion()I

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/miui/home/launcher/gadget/MaMlUtil;->copyMaMlFileFromThemeAppToHome(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 284
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    .line 285
    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->handle(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 289
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 290
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    if-eqz p2, :cond_5

    .line 294
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 295
    sput-object p1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 277
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 265
    invoke-static {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatusKt;->createDownloadStatus(Landroid/content/Intent;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object p2

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    return-void
.end method

.method private timeOut(Landroid/content/Context;)V
    .locals 2

    .line 252
    iget v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Maml Download timeout"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method startMaMlDownload(Landroid/content/Context;)V
    .locals 7

    .line 215
    sget-object v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.thememanager.ACTION.maml.download"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    sput-object p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    :cond_0
    const-string v0, "MaMlUtil"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMaMlDownload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "MaMlUtil"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    monitor-exit v0

    return-void

    .line 234
    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 239
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 240
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 241
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 242
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v5

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 243
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$500(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v6

    move-object v1, p1

    .line 238
    invoke-static/range {v1 .. v6}, Lcom/miui/maml/widget/edit/MamlutilKt;->startDownloadMaml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 244
    new-instance v0, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$MaMlDownloadReceiver$UamVeVFaJA4yx3urnhT-il1-Ltc;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$MaMlDownloadReceiver$UamVeVFaJA4yx3urnhT-il1-Ltc;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;)V

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MaMlUtil"

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download err :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 235
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
