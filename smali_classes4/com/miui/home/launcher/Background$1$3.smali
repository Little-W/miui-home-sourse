.class Lcom/miui/home/launcher/Background$1$3;
.super Ljava/lang/Object;
.source "Background.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Background$1;->onLoadingFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Background$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Background$1;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/Background$1$3;->this$1:Lcom/miui/home/launcher/Background$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 177
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/Background$1$3;->this$1:Lcom/miui/home/launcher/Background$1;

    iget-object p0, p0, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {p0}, Lcom/miui/home/launcher/Background;->access$100(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3d8f5c29    # 0.07f

    mul-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/animate/SpreadCircle;->setAlpha(I)V

    return-void
.end method
