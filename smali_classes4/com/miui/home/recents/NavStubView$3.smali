.class Lcom/miui/home/recents/NavStubView$3;
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

    .line 1020
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$3;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$3;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1023
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$3;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 1024
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$3;->val$tv:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
