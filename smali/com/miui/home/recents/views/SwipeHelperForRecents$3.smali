.class Lcom/miui/home/recents/views/SwipeHelperForRecents$3;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;Z)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->val$canBeDismissed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$3;->val$canBeDismissed:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$100(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;ZF)V

    return-void
.end method
