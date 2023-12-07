.class Lcom/miui/home/recents/GestureBackArrowView$4;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureBackArrowView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureBackArrowView;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView$4;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$4;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureBackArrowView;->access$600(Lcom/miui/home/recents/GestureBackArrowView;)Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$4;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureBackArrowView;->access$700(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 322
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView$4;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->access$802(Lcom/miui/home/recents/GestureBackArrowView;F)F

    return-void
.end method
