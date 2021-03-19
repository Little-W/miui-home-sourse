.class Lcom/miui/home/launcher/animate/SpreadCircle$1;
.super Ljava/lang/Object;
.source "SpreadCircle.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/animate/SpreadCircle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/animate/SpreadCircle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/animate/SpreadCircle;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle$1;->this$0:Lcom/miui/home/launcher/animate/SpreadCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpreadCircle$1;->this$0:Lcom/miui/home/launcher/animate/SpreadCircle;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/miui/home/launcher/animate/SpreadCircle$1;->this$0:Lcom/miui/home/launcher/animate/SpreadCircle;

    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpreadCircle;->access$100(Lcom/miui/home/launcher/animate/SpreadCircle;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/animate/SpreadCircle$1;->this$0:Lcom/miui/home/launcher/animate/SpreadCircle;

    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpreadCircle;->access$200(Lcom/miui/home/launcher/animate/SpreadCircle;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/miui/home/launcher/animate/SpreadCircle$1;->this$0:Lcom/miui/home/launcher/animate/SpreadCircle;

    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpreadCircle;->access$200(Lcom/miui/home/launcher/animate/SpreadCircle;)F

    move-result v1

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/animate/SpreadCircle;->access$002(Lcom/miui/home/launcher/animate/SpreadCircle;F)F

    .line 28
    iget-object p1, p0, Lcom/miui/home/launcher/animate/SpreadCircle$1;->this$0:Lcom/miui/home/launcher/animate/SpreadCircle;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpreadCircle;->invalidateSelf()V

    return-void
.end method
