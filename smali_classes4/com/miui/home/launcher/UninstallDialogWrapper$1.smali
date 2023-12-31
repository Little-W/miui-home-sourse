.class Lcom/miui/home/launcher/UninstallDialogWrapper$1;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 57
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScreen()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$100(Lcom/miui/home/launcher/UninstallDialogWrapper;)I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    .line 60
    invoke-static {v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/UninstallDialog;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    .line 61
    invoke-static {v3}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$100(Lcom/miui/home/launcher/UninstallDialogWrapper;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 63
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderCling;->setContentAlpha(F)V

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 67
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v2}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Folder;->setTranslationY(F)V

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$000(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    int-to-float v2, p1

    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDialog;->setContentAlpha(F)V

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$1;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->stretctHeightTo(I)V

    return-void
.end method
