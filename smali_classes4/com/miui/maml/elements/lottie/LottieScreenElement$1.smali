.class Lcom/miui/maml/elements/lottie/LottieScreenElement$1;
.super Ljava/lang/Object;
.source "LottieScreenElement.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/lottie/LottieScreenElement;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/lottie/LottieScreenElement;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;->this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;->this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->access$000(Lcom/miui/maml/elements/lottie/LottieScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;->this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->access$000(Lcom/miui/maml/elements/lottie/LottieScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;->this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    const-string p1, "complete"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;->this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->access$000(Lcom/miui/maml/elements/lottie/LottieScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;->this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    invoke-static {p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->access$000(Lcom/miui/maml/elements/lottie/LottieScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/lottie/LottieScreenElement$1;->this$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    const-string p1, "loopComplete"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
