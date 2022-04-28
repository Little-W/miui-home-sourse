.class Lcom/miui/home/recents/views/SwipeHelperForRecents$2;
.super Lcom/miui/home/recents/util/InOutRangeDetector;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;FF)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/util/InOutRangeDetector;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public onInRange()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onInitValue(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->onInRange()V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->onOutRange()V

    :goto_0
    return-void
.end method

.method public onOutRange()V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
