.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initFirstAnimator()V
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

    .line 303
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 306
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/high16 v1, 0x42080000    # 34.0f

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$202(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->access$1100(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v1, v1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$200(Lcom/miui/home/launcher/view/HomeFeedArrowView;)F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onTranslateY(FZ)V

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->access$1100(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 313
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    return-void
.end method
