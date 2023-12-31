.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCanceled:Z

.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$closingTargetView:Landroid/view/View;

.field final synthetic val$isNeedUpdateDim:Z

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$isNeedUpdateDim:Z

    iput-object p3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$closingTargetView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1951
    iput-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$1$QuickstepAppTransitionManagerImpl$5(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 2

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startClosingWindowAnimators, springAnim end, reset icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 1971
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 1972
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 1974
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1975
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSync(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onAnimationStart$0$QuickstepAppTransitionManagerImpl$5(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 2

    .line 1940
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1702(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 1941
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1942
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    if-eqz p1, :cond_0

    .line 1943
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 1945
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    .line 1989
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->isCanceled:Z

    .line 1990
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1954
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    .line 1955
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$isNeedUpdateDim:Z

    if-eqz p1, :cond_0

    .line 1956
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    .line 1958
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1961
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 1962
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$802(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1963
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1964
    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->isCanceled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1965
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$closingTargetView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/FloatingIconLayer;->hideFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    .line 1967
    :cond_2
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$closingTargetView:Landroid/view/View;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$9vMAJhkNtDyCREAjMQyYOvdufcY;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 1980
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 1981
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 1984
    :cond_4
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    const-string p1, "QuickstepAppTransitionManagerImpl"

    const-string v0, "onAnimationStart: closingWindowAnim"

    .line 1913
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MHWAnimation#  AppToHomeAnim  # startClosingWindowAnimators:QuickstepAppTransitionManagerImpl"

    .line 1914
    invoke-static {v0}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    .line 1917
    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$isNeedUpdateDim:Z

    if-eqz v0, :cond_0

    .line 1918
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1924
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 1925
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_3

    .line 1926
    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F

    .line 1927
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1928
    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1927
    :goto_0
    invoke-static {v1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1602(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F

    .line 1929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startClosingWindowAnimators, springAnim start, hide icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 1931
    invoke-interface {v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1932
    invoke-interface {v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimStart()V

    .line 1935
    :cond_3
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    .line 1937
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1938
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1702(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 1939
    sget-object p1, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$8xAi3m5cx8lu7pY6luYCDcX1TNQ;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$8xAi3m5cx8lu7pY6luYCDcX1TNQ;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method
