.class Lcom/miui/home/launcher/DropTargetBar$1;
.super Ljava/lang/Object;
.source "DropTargetBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DropTargetBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DropTargetBar;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/miui/home/launcher/DropTargetBar$1;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar$1;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {v0}, Lcom/miui/home/launcher/DropTargetBar;->access$400(Lcom/miui/home/launcher/DropTargetBar;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScreen()Landroid/widget/FrameLayout;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar$1;->this$0:Lcom/miui/home/launcher/DropTargetBar;

    invoke-static {p0}, Lcom/miui/home/launcher/DropTargetBar;->access$500(Lcom/miui/home/launcher/DropTargetBar;)Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialog()Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->stretctHeightTo(I)V

    return-void
.end method
