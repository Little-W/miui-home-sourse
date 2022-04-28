.class Lcom/miui/home/launcher/UninstallDialogWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UninstallDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialogWrapper;-><init>(Lcom/miui/home/launcher/DropTargetBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$300(Lcom/miui/home/launcher/UninstallDialogWrapper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$300(Lcom/miui/home/launcher/UninstallDialogWrapper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$400(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p1

    const v0, 0x7f0a00ce

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->focusTalkBackToView(Landroid/view/View;)V

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$502(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z

    .line 87
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$600(Lcom/miui/home/launcher/UninstallDialogWrapper;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$700(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->releaseLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShowOrHideUninstallDialog(Z)V

    .line 90
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$2;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$602(Lcom/miui/home/launcher/UninstallDialogWrapper;Z)Z

    :cond_2
    return-void
.end method
