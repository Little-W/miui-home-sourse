.class Lcom/miui/home/launcher/ThumbnailContainerBorder$2;
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

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$2;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$2;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->updateBorderLineColor(F)V

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainerBorder$2;->this$0:Lcom/miui/home/launcher/ThumbnailContainerBorder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->invalidate()V

    return-void
.end method
