.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$targetTaskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 861
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 862
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 863
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 854
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 855
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_0
    return-void
.end method
