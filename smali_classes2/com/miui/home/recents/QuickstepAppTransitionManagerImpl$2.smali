.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Ljava/lang/Runnable;I)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field final synthetic val$currentDisplayRotation:I

.field final synthetic val$currentRotation:I

.field final synthetic val$finalCurrentRotationIconLoc:Landroid/graphics/Rect;

.field final synthetic val$homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field final synthetic val$homeRotation:I

.field final synthetic val$isIgnoreIconAnim:Z

.field final synthetic val$isUseTranslucentAnim:Z

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field final synthetic val$radiusScale:F

.field final synthetic val$springAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field final synthetic val$transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field final synthetic val$useSimpleAnim:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/view/View;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;IIFZ)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    .line 725
    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    move v1, p2

    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isUseTranslucentAnim:Z

    move-object v1, p3

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    move-object v1, p4

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$springAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    move-object v1, p5

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    move v1, p6

    iput v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$currentRotation:I

    move-object v1, p7

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-object v1, p8

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v1, p9

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v1, p10

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move v1, p11

    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$useSimpleAnim:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$finalCurrentRotationIconLoc:Landroid/graphics/Rect;

    move v1, p13

    iput v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$currentDisplayRotation:I

    move/from16 v1, p14

    iput v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$homeRotation:I

    move/from16 v1, p15

    iput v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$radiusScale:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isIgnoreIconAnim:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v1, 0x0

    .line 726
    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$1$QuickstepAppTransitionManagerImpl$2(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean v1, v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_1

    .line 806
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isAnimRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 808
    :cond_1
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppAnimEnd()V

    .line 809
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$900(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$onAnimationStart$0$QuickstepAppTransitionManagerImpl$2(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$702(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 765
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 766
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-eqz p1, :cond_0

    .line 767
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 769
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 835
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "QuickstepAppTransitionManagerImpl"

    const-string v2, "AnimOpen, home onAnimationCancel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 836
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    .line 837
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 783
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    .line 785
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 786
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    const-string v0, "QuickstepAppTransitionManagerImpl"

    if-nez p1, :cond_1

    const-string p0, "AnimOpen, home onAnimationEnd mIsOpenAnimRunning return"

    .line 789
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 792
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->setIsOpenAnimRunning(Z)V

    const-string p1, "AnimOpen, home onAnimationEnd"

    .line 793
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 796
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 801
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 802
    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isIgnoreIconAnim:Z

    if-nez v0, :cond_3

    .line 803
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$qSMe6qFOqJzht6zzmtsCQ75V6Ek;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$qSMe6qFOqJzht6zzmtsCQ75V6Ek;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 813
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 814
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 815
    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->isReleaseOpenFloatingIconLayer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 816
    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 820
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    if-nez p1, :cond_5

    .line 821
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_4

    .line 822
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->abortWallpaperAnimations()V

    .line 824
    :cond_4
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 827
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 828
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/AppPairController;->onAnimationEnd(Landroid/view/View;)V

    .line 830
    :cond_6
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void

    :cond_7
    :goto_0
    const-string p0, "AnimOpen, home onAnimationEnd WeakReference is empty"

    .line 797
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    const-string v2, "AnimOpen, home onAnimationStart"

    .line 730
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MHWAnimation#  OpenAppAnimFromHome  # startOpeningWindowAnimators:QuickstepAppTransitionManagerImpl"

    .line 731
    invoke-static {v1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 732
    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->isCancel:Z

    .line 733
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 736
    :cond_0
    iget-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isUseTranslucentAnim:Z

    if-eqz v1, :cond_1

    .line 737
    iget-object v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    return-void

    .line 740
    :cond_1
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 741
    sget-boolean v2, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    const/4 v15, 0x0

    if-eqz v2, :cond_4

    .line 742
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$springAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 743
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v2

    iget-object v5, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$v:Landroid/view/View;

    iget v6, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$currentRotation:I

    iget-object v7, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v8, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v9, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v10, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 744
    iget-boolean v4, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$useSimpleAnim:Z

    if-eqz v4, :cond_2

    move-object v11, v15

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v4}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$600(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v4

    move-object v11, v4

    .line 745
    :goto_0
    iget-boolean v4, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$useSimpleAnim:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v4}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object v4

    move-object v12, v4

    goto :goto_1

    :cond_3
    move-object v12, v15

    :goto_1
    iget-object v13, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$finalCurrentRotationIconLoc:Landroid/graphics/Rect;

    iget v14, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$currentDisplayRotation:I

    iget v4, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$homeRotation:I

    iget v3, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$radiusScale:F

    const/16 v17, 0x0

    move/from16 v16, v3

    const/4 v3, 0x0

    move/from16 v18, v4

    move-object v4, v1

    move/from16 v15, v18

    .line 743
    invoke-virtual/range {v2 .. v17}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setControl(ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/FloatingIconView;Lcom/miui/home/recents/FloatingIconLayer;Landroid/graphics/Rect;IIFZ)V

    .line 748
    :cond_4
    iget-boolean v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$isIgnoreIconAnim:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_5

    .line 750
    invoke-interface {v1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppAnimStart()V

    .line 751
    invoke-interface {v1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->endFolmeAnim()V

    .line 754
    :cond_5
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_6

    .line 755
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    .line 758
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 759
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 760
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 761
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$702(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 763
    :cond_7
    sget-object v2, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$hPWFBc7VBIGXEcxgf5ja4yo_xNs;

    invoke-direct {v3, v0, v1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$hPWFBc7VBIGXEcxgf5ja4yo_xNs;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 775
    :cond_8
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 776
    iget-object v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppPairController;->onAnimationStart()V

    :cond_9
    :goto_2
    return-void
.end method
