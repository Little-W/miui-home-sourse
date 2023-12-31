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
.field private static volatile sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;


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
    .locals 1

    .line 191
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    .line 193
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 194
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result p2

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 7

    .line 252
    new-instance v6, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 253
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

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
    .locals 3

    .line 305
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v1, :cond_2

    const-string v1, "MaMlUtil"

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MaMlDownload "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " err:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    .line 332
    iput p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 333
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 334
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 333
    invoke-virtual {p1, p2, v0, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 322
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MaMlDownload done"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_5

    .line 324
    iput p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 325
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 326
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 325
    invoke-virtual {p1, p2, v0, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 315
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    if-eq p1, v2, :cond_5

    .line 316
    iput v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 317
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 318
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v0

    iget p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 317
    invoke-virtual {p1, p2, v0, p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 307
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    if-eq p1, v0, :cond_4

    .line 308
    iput v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 309
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 310
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    .line 309
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadStatusChange(Ljava/lang/String;II)V

    .line 312
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadListener:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getProgressPercent()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;->onDownloadProgress(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V
    .locals 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive product = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaMlUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 267
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 269
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 274
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 275
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getMamlVersion()I

    move-result v1

    invoke-static {p1, p0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromThemeApp(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 279
    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result p0

    .line 278
    invoke-static {p1, v1, v3, p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    .line 283
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    .line 284
    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->handle(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result p0

    if-eq p0, v2, :cond_4

    .line 288
    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 289
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    monitor-enter p0

    .line 293
    :try_start_1
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_6

    .line 295
    :try_start_2
    sget-object p2, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 298
    :try_start_3
    sput-object p1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    .line 300
    :cond_6
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_7
    :goto_2
    return-void

    :catchall_2
    move-exception p0

    .line 271
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 259
    invoke-static {p2}, Lcom/miui/maml/widget/edit/MamlDownloadStatusKt;->createDownloadStatus(Landroid/content/Intent;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object p2

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    return-void
.end method

.method private timeOut(Landroid/content/Context;)V
    .locals 2

    .line 246
    iget v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->mDownloadStatus:I

    if-nez v0, :cond_0

    .line 247
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
.method download(Landroid/content/Context;)V
    .locals 13

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 233
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 234
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 235
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 236
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v5

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 237
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$500(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v6

    move-object v1, p1

    .line 232
    invoke-static/range {v1 .. v6}, Lcom/miui/maml/widget/edit/MamlutilKt;->startDownloadMamlAndRight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    .line 240
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I

    move-result v9

    const/4 v10, 0x2

    const/16 v11, 0x64

    const-string v12, ""

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 239
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    .line 242
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$MaMlDownloadReceiver$iZ32Zf3J2yQG4uhuQG9Jec6rFps;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/gadget/-$$Lambda$MaMlUtil$MaMlDownloadReceiver$iZ32Zf3J2yQG4uhuQG9Jec6rFps;-><init>(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;)V

    const-wide/16 p0, 0x7530

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic lambda$download$0$MaMlUtil$MaMlDownloadReceiver(Landroid/content/Context;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->timeOut(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method startMaMlDownload(Landroid/content/Context;)V
    .locals 4

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.thememanager.ACTION.maml.download"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    sput-object p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->sReceiver:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;

    :cond_0
    const-string v1, "MaMlUtil"

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMaMlDownload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-static {}, Lcom/miui/home/launcher/gadget/MaMlUtil;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "MaMlUtil"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->maMlDownloadParams:Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "already started"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit v0

    return-void

    .line 219
    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->download(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download err :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaMlUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->fromError(Ljava/lang/Exception;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadReceiver;->onReceive(Landroid/content/Context;Lcom/miui/maml/widget/edit/MamlDownloadStatus;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 220
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
