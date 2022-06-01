.class Lcom/miui/home/recents/GestureBackArrowView$2;
.super Ljava/lang/Object;
.source "GestureBackArrowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureBackArrowView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView$2;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 253
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$2;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-static {v0}, Lcom/miui/home/recents/GestureBackArrowView;->access$100(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 254
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$2;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureBackArrowView;->invalidate()V

    if-nez p1, :cond_0

    .line 255
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView$2;->val$show:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$2;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureBackArrowView;->access$202(Lcom/miui/home/recents/GestureBackArrowView;Z)Z

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView$2;->this$0:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-static {v0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->access$302(Lcom/miui/home/recents/GestureBackArrowView;I)I

    return-void
.end method
