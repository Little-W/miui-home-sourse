.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$isIgnoreIconAnim:Z

.field final synthetic val$isUseTranslucentAnim:Z

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/Launcher;ZLcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isUseTranslucentAnim:Z

    iput-object p3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-boolean p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isIgnoreIconAnim:Z

    iput-object p5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean v1, v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 623
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppAnimEnd()V

    .line 624
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onAnimationStart$0(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$402(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 595
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 596
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-eqz p1, :cond_0

    .line 597
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 599
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    .line 642
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 608
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-nez p1, :cond_0

    return-void

    .line 612
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 613
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 617
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    const/4 v1, 0x0

    .line 618
    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 619
    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isIgnoreIconAnim:Z

    if-nez v0, :cond_2

    .line 620
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$qSMe6qFOqJzht6zzmtsCQ75V6Ek;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$qSMe6qFOqJzht6zzmtsCQ75V6Ek;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 628
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 629
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$600(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 633
    :cond_2
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_3

    .line 634
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->abortWallpaperAnimations()V

    .line 636
    :cond_3
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "openAppAnimFromHome"

    .line 571
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 572
    iput-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    .line 573
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    const/4 v1, 0x0

    .line 574
    invoke-static {p1, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$402(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 575
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isUseTranslucentAnim:Z

    if-eqz p1, :cond_1

    .line 579
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    return-void

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 583
    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isIgnoreIconAnim:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    .line 585
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppAnimStart()V

    .line 586
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->endFolmeAnim()V

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 590
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    .line 593
    :cond_3
    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$hPWFBc7VBIGXEcxgf5ja4yo_xNs;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$hPWFBc7VBIGXEcxgf5ja4yo_xNs;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method
