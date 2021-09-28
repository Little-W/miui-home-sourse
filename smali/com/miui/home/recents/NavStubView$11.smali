.class Lcom/miui/home/recents/NavStubView$11;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startAppToHomeInGestureThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/RectF;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$currentDisplayRotation:I

.field final synthetic val$homeRotation:I

.field final synthetic val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field final synthetic val$startRectF:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 2744
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$11;->val$startRectF:Landroid/graphics/RectF;

    iput p3, p0, Lcom/miui/home/recents/NavStubView$11;->val$homeRotation:I

    iput p4, p0, Lcom/miui/home/recents/NavStubView$11;->val$currentDisplayRotation:I

    iput-object p5, p0, Lcom/miui/home/recents/NavStubView$11;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$2(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 3

    .line 2800
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppToHomeInGestureThread, mAppToHomeAnim2 end, reset icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 2802
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, p1}, Lcom/miui/home/recents/NavStubView;->access$4800(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 2803
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 2806
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz p1, :cond_1

    .line 2807
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4900(Lcom/miui/home/recents/NavStubView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSync(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onAnimationStart$0(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 3

    .line 2759
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 2760
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    const/4 v2, 0x0

    .line 2759
    invoke-static {v1, p1, v2}, Lcom/miui/home/recents/FloatingIconLayer;->getValidFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 2761
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAppToHomeInGestureThread, mAppToHomeAnim2 start, create mFloatingIconLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAnimatingToLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 2762
    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$5000(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2761
    .line 2763
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz p1, :cond_1

    .line 2764
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5000(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2765
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 2767
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$onAnimationStart$1(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 3

    .line 2775
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppToHomeInGestureThread, mAppToHomeAnim2 start, hide icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 2777
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2778
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 2785
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startAppToHomeInGestureThread, mAppToHomeAnim2 cancel"

    .line 2786
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$11;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    const/4 p1, 0x1

    .line 2787
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$11;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 2792
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$11;->isCancel:Z

    if-eqz p1, :cond_0

    return-void

    .line 2796
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$4700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 2797
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 2799
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$uEij4yANS_PNJGvs8REWl7xFJNQ;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$uEij4yANS_PNJGvs8REWl7xFJNQ;-><init>(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2813
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 4

    const-string p1, "appToHomeAnimFromGesture"

    .line 2749
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 2750
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startAppToHomeInGestureThread, mAppToHomeAnim2 start"

    .line 2751
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->val$startRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getStartRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/util/Utilities;->getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 2752
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/NavStubView$11;->val$homeRotation:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView$11;->val$currentDisplayRotation:I

    invoke-static {v1, v2, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 2753
    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$4200(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$4300(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    .line 2752
    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->access$4400(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 2755
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4500(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 2756
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p1, :cond_0

    .line 2757
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$4502(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2758
    sget-object p1, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$11;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$Kitbq2QGdiN0lzfPVOIkbQ3nKbY;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$Kitbq2QGdiN0lzfPVOIkbQ3nKbY;-><init>(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2773
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$4700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 2774
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$_VJESePTCqDVf6JMGppeUAHhePc;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$_VJESePTCqDVf6JMGppeUAHhePc;-><init>(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
