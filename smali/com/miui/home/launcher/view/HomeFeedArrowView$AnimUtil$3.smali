.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initThirdAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$202(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->access$1100(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onTranslateY(FZ)V

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$102(Lcom/miui/home/launcher/view/HomeFeedArrowView;Z)Z

    .line 353
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$1200(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    mul-float/2addr v3, p1

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr p1, v2

    sub-float/2addr v2, p1

    invoke-static {v0, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$002(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 357
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->access$1100(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 358
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object p1, p1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    return-void
.end method
