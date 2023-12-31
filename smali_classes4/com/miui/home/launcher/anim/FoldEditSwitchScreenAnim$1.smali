.class Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;
.super Ljava/lang/Object;
.source "FoldEditSwitchScreenAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldSwitchScreenAnim(ILcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

.field final synthetic val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

.field final synthetic val$newIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;I)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->this$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    iput-object p2, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    iput p3, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$newIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;->switchScreenInAnimEnd()V

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;->switchScreenAnimFinish()V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->this$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->access$000(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;)Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$newIndex:I

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;->switchScreenInAnimEnd()V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->this$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->access$000(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;)Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$newIndex:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->setCurrentScreen(I)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->this$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$1;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldSwitchScreenAnimOut(Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
