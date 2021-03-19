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

    .line 282
    iput-object p1, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/util/InOutRangeDetector;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public onInRange()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onInitValue(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->onInRange()V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->onOutRange()V

    :goto_0
    return-void
.end method

.method public onOutRange()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/miui/home/recents/views/SwipeHelperForRecents$2;->this$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    invoke-static {v0}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->access$000(Lcom/miui/home/recents/views/SwipeHelperForRecents;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskViewHeader;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
