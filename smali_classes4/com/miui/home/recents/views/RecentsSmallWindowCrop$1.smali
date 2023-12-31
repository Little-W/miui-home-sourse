.class Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsSmallWindowCrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->exitTopWindowCrop(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

.field final synthetic val$completeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsSmallWindowCrop;Ljava/lang/Runnable;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;->this$0:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;->val$completeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;->val$completeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 225
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop$1;->this$0:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
