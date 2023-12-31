.class Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$2;
.super Ljava/lang/Object;
.source "FoldEditSwitchScreenAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;->startFoldSwitchScreenAnimOut(Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

.field final synthetic val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$2;->this$0:Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim;

    iput-object p2, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$2;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$2;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;->switchScreenAnimFinish()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FoldEditSwitchScreenAnim$2;->val$listener:Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;

    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;->switchScreenAnimFinish()V

    :cond_0
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
