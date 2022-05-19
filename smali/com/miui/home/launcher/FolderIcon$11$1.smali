.class Lcom/miui/home/launcher/FolderIcon$11$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon$11;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/FolderIcon$11;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon$11;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$11$1;->this$1:Lcom/miui/home/launcher/FolderIcon$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$11$1;->this$1:Lcom/miui/home/launcher/FolderIcon$11;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$900(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$11$1;->this$1:Lcom/miui/home/launcher/FolderIcon$11;

    iget-object v1, v1, Lcom/miui/home/launcher/FolderIcon$11;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    return-void
.end method
