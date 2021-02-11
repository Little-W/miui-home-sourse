.class Lcom/miui/home/recents/views/SwipeHelperForRecents$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 421
    iput-boolean p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 425
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$200(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-boolean p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->mCancelled:Z

    if-nez p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$300(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$Callback;->onChildDismissedEnd(Landroid/view/View;)V

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 430
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 432
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {p1}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$400(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 433
    iget-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$4;->val$animView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method
