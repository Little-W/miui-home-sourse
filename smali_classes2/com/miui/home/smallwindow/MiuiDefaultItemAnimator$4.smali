.class Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->resetView(Landroid/view/View;)V

    .line 250
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 251
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$4;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method
