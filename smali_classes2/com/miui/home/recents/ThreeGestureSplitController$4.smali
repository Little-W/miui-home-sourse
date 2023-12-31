.class Lcom/miui/home/recents/ThreeGestureSplitController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThreeGestureSplitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ThreeGestureSplitController;->onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

.field final synthetic val$runningTaskId:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ThreeGestureSplitController;I)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$4;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    iput p2, p0, Lcom/miui/home/recents/ThreeGestureSplitController$4;->val$runningTaskId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 288
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$4;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    invoke-static {p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->access$300(Lcom/miui/home/recents/ThreeGestureSplitController;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 282
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 283
    iget-object p1, p0, Lcom/miui/home/recents/ThreeGestureSplitController$4;->this$0:Lcom/miui/home/recents/ThreeGestureSplitController;

    iget p0, p0, Lcom/miui/home/recents/ThreeGestureSplitController$4;->val$runningTaskId:I

    invoke-static {p1, p0}, Lcom/miui/home/recents/ThreeGestureSplitController;->access$200(Lcom/miui/home/recents/ThreeGestureSplitController;I)V

    return-void
.end method
