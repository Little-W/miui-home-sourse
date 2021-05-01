.class Lcom/miui/home/recents/FallbackActivityControllerHelper$1;
.super Ljava/lang/Object;
.source "FallbackActivityControllerHelper.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/FallbackActivityControllerHelper;->prepareRecentsUI(Lcom/miui/home/recents/RecentsActivity;ZZLjava/util/function/Consumer;)Lcom/miui/home/recents/ActivityControlHelper$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/FallbackActivityControllerHelper;

.field final synthetic val$callback:Ljava/util/function/Consumer;

.field final synthetic val$fromState:Z

.field final synthetic val$rv:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/FallbackActivityControllerHelper;Lcom/miui/home/recents/views/RecentsView;ZLjava/util/function/Consumer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->this$0:Lcom/miui/home/recents/FallbackActivityControllerHelper;

    iput-object p2, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$rv:Lcom/miui/home/recents/views/RecentsView;

    iput-boolean p3, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$fromState:Z

    iput-object p4, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$createActivityController$522(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)V
    .locals 4

    .line 101
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getInterpolatedProgress()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/RecentsView;->setInOverviewState(Z)V

    return-void
.end method


# virtual methods
.method public createActivityController(J)V
    .locals 5

    .line 84
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$rv:Lcom/miui/home/recents/views/RecentsView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 91
    iget-object v1, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$rv:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 95
    new-instance v1, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLcom/miui/home/launcher/util/LauncherStateSwitch;)V

    .line 99
    iget-object p1, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$rv:Lcom/miui/home/recents/views/RecentsView;

    iget-boolean p2, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$fromState:Z

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$qzACjdt2rwlHEwItaQJcyr1Q4ww;

    invoke-direct {v0, p1, v1, p2}, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$qzACjdt2rwlHEwItaQJcyr1Q4ww;-><init>(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 105
    iget-object p1, p0, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->val$callback:Ljava/util/function/Consumer;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43c80000    # 400.0f
        0x0
    .end array-data
.end method

.method public onRemoteAnimationReceived(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    return-void
.end method
