.class Lcom/miui/home/launcher/Launcher$61;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->installMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    .line 6849
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$61;->val$info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDownloadProgress$1(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;I)V
    .locals 0

    .line 6864
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->updateProgress(II)V

    return-void
.end method

.method static synthetic lambda$onDownloadStatusChange$0(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 2

    .line 6856
    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    const/16 v0, -0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->updateProgress(II)V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 3

    .line 6863
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->val$info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->getHostView()Lcom/miui/home/launcher/maml/MaMlHostView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    if-eqz v0, :cond_0

    .line 6864
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$61;->val$info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$0xWEHN1N9abIUPTZaqm6lEObDpk;

    invoke-direct {v2, v1, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$0xWEHN1N9abIUPTZaqm6lEObDpk;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;I)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDownloadStatusChange(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 6853
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/model/MamlUpdateTask;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$61;->val$info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$61;->val$info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget v2, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/model/MamlUpdateTask;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 6856
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$61;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$61;->val$info:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$1mZxxv9QvcB6XH5NPizQoDc6cKs;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$61$1mZxxv9QvcB6XH5NPizQoDc6cKs;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
