.class Lcom/miui/home/launcher/Launcher$LauncherMaMlDownloadListener;
.super Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LauncherMaMlDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener<",
        "Lcom/miui/home/launcher/gadget/MaMlPendingHostView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V
    .locals 0

    .line 7283
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onDownloadProgress$1(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;I)V
    .locals 0

    .line 7303
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->updateProgress(II)V

    return-void
.end method

.method static synthetic lambda$onDownloadStatusChange$0(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V
    .locals 2

    const/16 v0, -0x64

    const/4 v1, 0x0

    .line 7294
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->updateProgress(II)V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 1

    .line 7301
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$LauncherMaMlDownloadListener;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    if-eqz p0, :cond_0

    .line 7303
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$8nb5ezcD6zAmgqzXZ63KjhYHsJg;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$8nb5ezcD6zAmgqzXZ63KjhYHsJg;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;I)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDownloadStatusChange(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 7289
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    new-instance p3, Lcom/miui/home/launcher/model/MamlUpdateTask;

    invoke-direct {p3, p1, p2}, Lcom/miui/home/launcher/model/MamlUpdateTask;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    .line 7292
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$LauncherMaMlDownloadListener;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    if-eqz p0, :cond_1

    .line 7294
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$JgAzxk_0EU2H9yS_R59dT7vadyI;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$LauncherMaMlDownloadListener$JgAzxk_0EU2H9yS_R59dT7vadyI;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
