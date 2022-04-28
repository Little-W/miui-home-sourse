.class Lcom/miui/home/launcher/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$finalAlpha:F

.field final synthetic val$finalScale:F

.field final synthetic val$fromRotation:F

.field final synthetic val$initialAlpha:F

.field final synthetic val$initialScale:F


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;FFFFF)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    iput p2, p0, Lcom/miui/home/launcher/DragView$1;->val$initialScale:F

    iput p3, p0, Lcom/miui/home/launcher/DragView$1;->val$finalScale:F

    iput p4, p0, Lcom/miui/home/launcher/DragView$1;->val$finalAlpha:F

    iput p5, p0, Lcom/miui/home/launcher/DragView$1;->val$initialAlpha:F

    iput p6, p0, Lcom/miui/home/launcher/DragView$1;->val$fromRotation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 768
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 769
    iget v1, p0, Lcom/miui/home/launcher/DragView$1;->val$initialScale:F

    iget v2, p0, Lcom/miui/home/launcher/DragView$1;->val$finalScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 770
    iget-object v2, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DragView;->setScaleX(F)V

    .line 771
    iget-object v2, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DragView;->setScaleY(F)V

    .line 772
    iget-object v1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    iget v2, p0, Lcom/miui/home/launcher/DragView$1;->val$finalAlpha:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/miui/home/launcher/DragView$1;->val$initialAlpha:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setAlpha(F)V

    .line 774
    iget-object v1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v1}, Lcom/miui/home/launcher/DragView;->access$000(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/anim/BackgroundAnimController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {v1}, Lcom/miui/home/launcher/DragView;->access$000(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/anim/BackgroundAnimController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/anim/BackgroundAnimController;->updateBackgroundColor(F)V

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    iget v2, p0, Lcom/miui/home/launcher/DragView$1;->val$fromRotation:F

    const/4 v3, 0x0

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setRotation(F)V

    .line 779
    iget-object p1, p0, Lcom/miui/home/launcher/DragView$1;->this$0:Lcom/miui/home/launcher/DragView;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragView;->access$100(Lcom/miui/home/launcher/DragView;F)V

    return-void
.end method
