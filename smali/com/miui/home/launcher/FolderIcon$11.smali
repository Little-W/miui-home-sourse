.class Lcom/miui/home/launcher/FolderIcon$11;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$200(Lcom/miui/home/launcher/FolderIcon;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 437
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$900(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->prepareAutoOpening()V

    .line 438
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$900(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$1000(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    return-void
.end method
