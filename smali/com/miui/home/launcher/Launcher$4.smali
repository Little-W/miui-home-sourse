.class Lcom/miui/home/launcher/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 1491
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 1504
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 1505
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setRotation(I)V

    const-string v0, "Launcher"

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged: newRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 1508
    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 1510
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->access$702(Lcom/miui/home/launcher/Launcher;I)I

    .line 1511
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1512
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 1513
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 1514
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 1515
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1516
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string p1, "Launcher"

    const-string v0, "onDisplayChanged: show views"

    .line 1517
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1521
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->onDisplayRotationChanged(I)V

    .line 1526
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkIfIsOrientationChanged(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1527
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    .line 1528
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    .line 1529
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 1530
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1531
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    if-ne p1, v1, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 1535
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    goto :goto_1

    .line 1532
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    return-void

    .line 1539
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p1, p1, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onDisplayChange()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
