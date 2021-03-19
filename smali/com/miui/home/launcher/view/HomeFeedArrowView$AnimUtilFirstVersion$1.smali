.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->initChangeYAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 429
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$202(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 430
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->access$1300(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 431
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$1;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object p1, p1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    return-void
.end method
