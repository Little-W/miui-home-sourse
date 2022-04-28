.class Lcom/miui/home/launcher/DragView$3;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;


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

.field final synthetic val$toX:F

.field final synthetic val$toY:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;FF)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$3;->this$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/DragView$3;->val$toX:F

    iput p3, p0, Lcom/miui/home/launcher/DragView$3;->val$toY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$3;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueX()F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/DragView$3;->val$toX:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setTranslationX(F)V

    .line 802
    iget-object v0, p0, Lcom/miui/home/launcher/DragView$3;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueY()F

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/DragView$3;->val$toY:F

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->setTranslationY(F)V

    .line 803
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$3;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$400(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz p1, :cond_0

    .line 804
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$3;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1}, Lcom/miui/home/launcher/DragView;->access$400(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerDragController;->onUpdate()V

    .line 805
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$3;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->invalidate()V

    :cond_0
    return-void
.end method
