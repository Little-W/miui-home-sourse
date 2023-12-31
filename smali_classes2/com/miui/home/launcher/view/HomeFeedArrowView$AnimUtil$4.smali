.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->initFourthAnimator()V
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

    .line 371
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 374
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 375
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$1200(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->access$1100(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 378
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->access$1100(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onTranslateY(FZ)V

    .line 379
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil$4;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    return-void
.end method
