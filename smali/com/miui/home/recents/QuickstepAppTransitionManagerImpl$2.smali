.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Z)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$isInMultiWindowMode:Z

.field final synthetic val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field final synthetic val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isInMultiWindowMode:Z

    iput-object p3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$526(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 554
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 555
    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 556
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onAnimationStart$525(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$202(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 534
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 535
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-eqz p1, :cond_0

    .line 536
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 569
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 547
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-nez p1, :cond_0

    return-void

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    const/4 v0, 0x0

    .line 551
    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$302(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 552
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isInMultiWindowMode:Z

    if-nez p1, :cond_1

    .line 553
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$fvPv-0vn0gkgridNn-Vtf4uLRC8;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$fvPv-0vn0gkgridNn-Vtf4uLRC8;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 560
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 561
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 564
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "openAppAnimFromHome"

    .line 518
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    const/4 v0, 0x0

    .line 520
    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$202(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 522
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isInMultiWindowMode:Z

    if-nez p1, :cond_2

    .line 523
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 525
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->endFolmeAnim()V

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 529
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    .line 532
    :cond_1
    sget-object p1, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$shortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$pEb6v3tvwOQskA1JGIg1ltz8se4;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$pEb6v3tvwOQskA1JGIg1ltz8se4;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
