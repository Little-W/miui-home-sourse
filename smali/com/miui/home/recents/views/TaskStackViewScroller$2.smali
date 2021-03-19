.class Lcom/miui/home/recents/views/TaskStackViewScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskStackViewScroller;

.field final synthetic val$postRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller$2;->this$0:Lcom/miui/home/recents/views/TaskStackViewScroller;

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewScroller$2;->val$postRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller$2;->val$postRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller$2;->this$0:Lcom/miui/home/recents/views/TaskStackViewScroller;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->access$000(Lcom/miui/home/recents/views/TaskStackViewScroller;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    return-void
.end method
