.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->initAlphaAnimator()V
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

    .line 443
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 446
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 447
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object v0, v0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$202(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 449
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->access$1300(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 450
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$2;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    return-void
.end method
