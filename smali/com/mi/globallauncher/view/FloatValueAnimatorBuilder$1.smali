.class Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

.field final synthetic val$listener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$1;->this$0:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    iput-object p2, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$1;->val$listener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$1;->val$listener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;->onUpdate(F)V

    return-void
.end method
