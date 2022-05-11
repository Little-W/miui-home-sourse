.class Lcom/miui/home/recents/NavStubView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->lambda$resetTaskView$6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$tv:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$2;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 719
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$2;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 720
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$2;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
