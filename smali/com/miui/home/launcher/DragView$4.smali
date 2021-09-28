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

.field final synthetic val$owner:Landroid/view/ViewGroup;

.field final synthetic val$toX:F

.field final synthetic val$toY:F

.field final synthetic val$velocityX:F

.field final synthetic val$velocityY:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;FFFFFFLandroid/view/ViewGroup;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/DragView$4;->val$fromX:F

    iput p3, p0, Lcom/miui/home/launcher/DragView$4;->val$fromY:F

    iput p4, p0, Lcom/miui/home/launcher/DragView$4;->val$toX:F

    iput p5, p0, Lcom/miui/home/launcher/DragView$4;->val$toY:F

    iput p6, p0, Lcom/miui/home/launcher/DragView$4;->val$velocityX:F

    iput p7, p0, Lcom/miui/home/launcher/DragView$4;->val$velocityY:F

    iput-object p8, p0, Lcom/miui/home/launcher/DragView$4;->val$owner:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v0}, Lcom/miui/home/launcher/DragView;->access$500(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$100(Lcom/miui/home/launcher/DragView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 817
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$200(Lcom/miui/home/launcher/DragView;)V

    .line 819
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$300(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz p1, :cond_1

    .line 820
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->val$owner:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 821
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->val$owner:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    .line 804
    iget v0, p0, Lcom/miui/home/launcher/DragView$4;->val$fromX:F

    iget-object v1, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getTranslationX()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragView$4;->val$fromY:F

    iget-object v2, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getTranslationY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragView;->access$400(Lcom/miui/home/launcher/DragView;Z)V

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v0}, Lcom/miui/home/launcher/DragView;->access$300(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$4;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v0}, Lcom/miui/home/launcher/DragView;->access$300(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    move-result-object v2

    iget v0, p0, Lcom/miui/home/launcher/DragView$4;->val$fromX:F

    iget v3, p0, Lcom/miui/home/launcher/DragView$4;->val$toX:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/miui/home/launcher/DragView$4;->val$fromY:F

    iget v4, p0, Lcom/miui/home/launcher/DragView$4;->val$toY:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/miui/home/launcher/DragView$4;->val$velocityX:F

    iget v6, p0, Lcom/miui/home/launcher/DragView$4;->val$velocityY:F

    move-object v7, p1

    check-cast v7, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->onStart(FFFFLcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V

    .line 810
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->val$owner:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 811
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$4;->val$owner:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_2
    return-void
.end method
