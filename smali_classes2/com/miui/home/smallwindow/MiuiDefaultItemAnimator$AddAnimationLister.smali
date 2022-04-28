.class public Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AddAnimationLister"
.end annotation


# instance fields
.field mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;


# direct methods
.method public constructor <init>(Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 653
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 658
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 659
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 660
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 661
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$AddAnimationLister;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method
