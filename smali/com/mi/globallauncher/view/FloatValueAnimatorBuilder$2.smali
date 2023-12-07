.class Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$2;->this$0:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$2;->this$0:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    iget-object p0, p0, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->endListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;

    invoke-interface {p0}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;->onEnd()V

    return-void
.end method
