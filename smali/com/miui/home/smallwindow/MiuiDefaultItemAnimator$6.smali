.class Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->animateChangeImpl(Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/View;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->val$changeInfo:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    .line 330
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->val$changeInfo:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 335
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 336
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->val$changeInfo:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 337
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->mNewChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->val$changeInfo:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$6;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method
