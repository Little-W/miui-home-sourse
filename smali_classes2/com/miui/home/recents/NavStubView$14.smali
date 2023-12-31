.class Lcom/miui/home/recents/NavStubView$14;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startHalfAppToHomeInGestureThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/RectF;II)V
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

.field final synthetic val$isVerticalClip:Z

.field final synthetic val$startRectF:Landroid/graphics/RectF;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;IIZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;)V
    .locals 0

    .line 4607
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$14;->val$startRectF:Landroid/graphics/RectF;

    iput p3, p0, Lcom/miui/home/recents/NavStubView$14;->val$homeRotation:I

    iput p4, p0, Lcom/miui/home/recents/NavStubView$14;->val$currentDisplayRotation:I

    iput-boolean p5, p0, Lcom/miui/home/recents/NavStubView$14;->val$isVerticalClip:Z

    iput-object p6, p0, Lcom/miui/home/recents/NavStubView$14;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p7, p0, Lcom/miui/home/recents/NavStubView$14;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationStart$1(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 3

    .line 4645
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHalfAppToHomeInGestureThread, mAppToHomeAnim2 start, hide icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 4647
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4648
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$2$NavStubView$14(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;)V
    .locals 3

    .line 4669
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHalfAppToHomeInGestureThread, mAppToHomeAnim2 end, reset icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 4671
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, p1}, Lcom/miui/home/recents/NavStubView;->access$6100(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    .line 4672
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 4675
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz p1, :cond_1

    .line 4676
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSync(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onAnimationStart$0$NavStubView$14(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 3

    .line 4628
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4629
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    const/4 v2, 0x0

    .line 4628
    invoke-static {v1, p1, v2}, Lcom/miui/home/recents/FloatingIconLayer;->getValidFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 4630
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isStart()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 4631
    :cond_0
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startHalfAppToHomeInGestureThread, mAppToHomeAnim2 start, create mFloatingIconLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p1, p1, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_1

    .line 4635
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 4637
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 4655
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startHalfAppToHomeInGestureThread, mAppToHomeAnim2 cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$14;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    const/4 p1, 0x1

    .line 4657
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$14;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 3

    .line 4662
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$14;->isCancel:Z

    if-eqz p1, :cond_0

    return-void

    .line 4666
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->finishHalfAppToHome(Z)V

    .line 4668
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$14;->val$targetView:Landroid/view/View;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$jkZgbNC874bJnOb6yS-0IZk3k1Y;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$jkZgbNC874bJnOb6yS-0IZk3k1Y;-><init>(Lcom/miui/home/recents/NavStubView$14;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4682
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 9

    const-string p1, "MHWAnimation#  AppToHomeAnimFromGesture  # startHalfAppToHomeInGestureThread:NavStubView"

    .line 4612
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 4613
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startHalfAppToHomeInGestureThread, mAppToHomeAnim2 start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->val$startRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getStartRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/util/Utilities;->getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 4615
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget v1, p0, Lcom/miui/home/recents/NavStubView$14;->val$homeRotation:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView$14;->val$currentDisplayRotation:I

    invoke-static {v1, v2, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4616
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5200(Lcom/miui/home/recents/NavStubView;)F

    move-result v2

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4617
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4900(Lcom/miui/home/recents/NavStubView;)F

    move-result v3

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4618
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5300(Lcom/miui/home/recents/NavStubView;)F

    move-result v4

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4619
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5600(Lcom/miui/home/recents/NavStubView;)F

    move-result v5

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4620
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5700(Lcom/miui/home/recents/NavStubView;)F

    move-result v6

    iget-boolean v7, p0, Lcom/miui/home/recents/NavStubView$14;->val$isVerticalClip:Z

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4622
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)I

    move-result v8

    .line 4615
    invoke-static/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFFFFZI)Landroid/graphics/RectF;

    .line 4624
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 4625
    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz p1, :cond_0

    .line 4626
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5902(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 4627
    sget-object p1, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$14;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$59vfbym7AkpyjM95z_8wWyZPFv4;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$59vfbym7AkpyjM95z_8wWyZPFv4;-><init>(Lcom/miui/home/recents/NavStubView$14;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4643
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    .line 4644
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$14;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$e40EZaOLOrDrQpjqeovqRKShlDY;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$14$e40EZaOLOrDrQpjqeovqRKShlDY;-><init>(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
