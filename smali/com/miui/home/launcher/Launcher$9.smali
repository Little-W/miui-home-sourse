.class Lcom/miui/home/launcher/Launcher$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupFolderCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2049
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2058
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$1602(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 2059
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getOpenCloseAnimatorListenerAdapter()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2060
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/util/ViewCompat;->notifyChildOfDragStart(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 2052
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$1602(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 2053
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$9;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getOpenCloseAnimatorListenerAdapter()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
