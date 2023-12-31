.class Lcom/miui/home/launcher/DragView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragView;->calcAndStartAnimate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragView;

.field final synthetic val$fromX:F

.field final synthetic val$fromY:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;FF)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/DragView$4;->val$fromX:F

    iput p3, p0, Lcom/miui/home/launcher/DragView$4;->val$fromY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v0}, Lcom/miui/home/launcher/DragView;->access$700(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$400(Lcom/miui/home/launcher/DragView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 864
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p0}, Lcom/miui/home/launcher/DragView;->access$500(Lcom/miui/home/launcher/DragView;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 857
    iget p1, p0, Lcom/miui/home/launcher/DragView$4;->val$fromX:F

    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getTranslationX()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/home/launcher/DragView$4;->val$fromY:F

    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getTranslationY()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 858
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DragView;->access$600(Lcom/miui/home/launcher/DragView;Z)V

    :cond_1
    return-void
.end method
