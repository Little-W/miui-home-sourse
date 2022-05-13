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

    .line 1060
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/views/TaskView;)V
    .locals 2

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1074
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    const/4 v1, 0x0

    .line 1075
    invoke-virtual {p0, v1, v1, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1072
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$Wvtq87JumeAOSY_qmuFZA_MNUNA;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$4$Wvtq87JumeAOSY_qmuFZA_MNUNA;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1063
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1064
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 1065
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;->val$targetTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {p1, v0, v0, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 1067
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    return-void
.end method
