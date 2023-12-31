.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$currentTaskIndex:I

.field final synthetic val$ignoreTaskViewAlpha:Z

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$launcherRotationOnAnimStart:I

.field final synthetic val$rv:Lcom/miui/home/recents/views/RecentsView;

.field final synthetic val$shouldAppToRecentsAnimToCenter:Z

.field final synthetic val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

.field final synthetic val$taskStackLayoutStyleHorizontal:Z


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/views/TaskView;ZZLcom/miui/home/launcher/Launcher;ZIILcom/miui/home/recents/views/RecentsView;)V
    .locals 0

    .line 1516
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$shouldAppToRecentsAnimToCenter:Z

    iput-boolean p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$ignoreTaskViewAlpha:Z

    iput-object p5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-boolean p6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$taskStackLayoutStyleHorizontal:Z

    iput p7, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$launcherRotationOnAnimStart:I

    iput p8, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$currentTaskIndex:I

    iput-object p9, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$rv:Lcom/miui/home/recents/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V
    .locals 6

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1530
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    const/4 v1, 0x0

    .line 1531
    invoke-virtual {p0, v1, v1, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 1533
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    if-eqz p2, :cond_1

    if-eq p3, v0, :cond_1

    if-nez p4, :cond_1

    .line 1537
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p6

    move-object v1, p0

    move-object v2, v3

    .line 1538
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1528
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-boolean v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$taskStackLayoutStyleHorizontal:Z

    iget v4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$launcherRotationOnAnimStart:I

    iget-boolean v5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$shouldAppToRecentsAnimToCenter:Z

    iget v6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$currentTaskIndex:I

    iget-object v7, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$rv:Lcom/miui/home/recents/views/RecentsView;

    new-instance p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$HPJrVs3sRdkEiGzzZacUnc9dKMI;-><init>(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/launcher/Launcher;ZIZILcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1519
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$shouldAppToRecentsAnimToCenter:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$ignoreTaskViewAlpha:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1520
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 1521
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p0, v0, v0, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 1523
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    return-void
.end method
