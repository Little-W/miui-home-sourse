.class Lcom/mi/globallauncher/DragIconGuide$1;
.super Lcom/mi/globallauncher/view/TapTargetView$Listener;
.source "DragIconGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/DragIconGuide;->showGuide(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/mi/globallauncher/view/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/DragIconGuide;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/DragIconGuide;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mi/globallauncher/DragIconGuide$1;->this$0:Lcom/mi/globallauncher/DragIconGuide;

    iput-object p2, p0, Lcom/mi/globallauncher/DragIconGuide$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/mi/globallauncher/DragIconGuide$1;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTargetClick(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetClick(Lcom/mi/globallauncher/view/TapTargetView;)V

    .line 59
    iget-object p1, p0, Lcom/mi/globallauncher/DragIconGuide$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/mi/globallauncher/DragIconGuide$1;->val$targetView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onTargetLongClick(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTargetView;->dismiss(Z)V

    .line 65
    sget-object p1, Lcom/miui/home/launcher/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Lcom/mi/globallauncher/DragIconGuide$1;->val$targetView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    return-void
.end method
