.class Lcom/miui/home/launcher/ThumbnailContainerBorder$1;
.super Ljava/lang/Object;
.source "ThumbnailContainerBorder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ThumbnailContainerBorder;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ThumbnailContainerBorder;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3d6bee00    # 0.05760002f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 53
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-static {v1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->access$200(Lcom/miui/home/launcher/ThumbnailContainerBorder;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    iget-object v2, v2, Lcom/miui/home/launcher/ThumbnailContainerBorder;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-static {v3}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->access$000(Lcom/miui/home/launcher/ThumbnailContainerBorder;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-static {v4}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->access$100(Lcom/miui/home/launcher/ThumbnailContainerBorder;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->setScaleX(F)V

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->setScaleY(F)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$1;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->invalidate()V

    return-void
.end method
