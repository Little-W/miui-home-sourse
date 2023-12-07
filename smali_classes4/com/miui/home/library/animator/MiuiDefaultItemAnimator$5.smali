.class Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->animateChangeImpl(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/View;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->val$changeInfo:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object p0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->val$changeInfo:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object p0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 313
    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 314
    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->val$changeInfo:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 315
    iget-object p1, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->mOldChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->val$changeInfo:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object p0, p0, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator$5;->this$0:Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;

    invoke-virtual {p0}, Lcom/miui/home/library/animator/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method
