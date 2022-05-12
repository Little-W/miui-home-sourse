.class Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsTopWindowCrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsTopWindowCrop;->exitWithAnim(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

.field final synthetic val$completeRunnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsTopWindowCrop;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowCrop;

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;->val$completeRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;->val$completeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowCrop$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
