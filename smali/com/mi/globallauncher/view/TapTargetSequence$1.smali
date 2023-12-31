.class Lcom/mi/globallauncher/view/TapTargetSequence$1;
.super Lcom/mi/globallauncher/view/TapTargetView$Listener;
.source "TapTargetSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/TapTargetSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/TapTargetSequence;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/TapTargetSequence;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    invoke-direct {p0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOuterCircleClick(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTargetSequence;->considerOuterCircleCanceled:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetSequence$1;->onTargetCancel(Lcom/mi/globallauncher/view/TapTargetView;)V

    :cond_0
    return-void
.end method

.method public onTargetCancel(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetCancel(Lcom/mi/globallauncher/view/TapTargetView;)V

    .line 228
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTargetSequence;->continueOnCancel:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mi/globallauncher/view/TapTargetSequence$Listener;->onSequenceStep(Lcom/mi/globallauncher/view/TapTarget;Z)V

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetSequence;->showNext()V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    if-eqz v0, :cond_2

    .line 235
    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/view/TapTargetSequence$Listener;->onSequenceCanceled(Lcom/mi/globallauncher/view/TapTarget;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTargetClick(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetClick(Lcom/mi/globallauncher/view/TapTargetView;)V

    .line 212
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/mi/globallauncher/view/TapTargetSequence$Listener;->onSequenceStep(Lcom/mi/globallauncher/view/TapTarget;Z)V

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetSequence$1;->this$0:Lcom/mi/globallauncher/view/TapTargetSequence;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetSequence;->showNext()V

    return-void
.end method
