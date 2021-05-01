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

    .line 1577
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
    .locals 4

    .line 1590
    invoke-static {}, Lcom/miui/launcher/utils/DisplayManagerGlobalUtils;->getRotation()I

    move-result p1

    .line 1591
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setRotation(I)V

    const-string v0, "Launcher"

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged: newRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 1594
    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1593
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 1596
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->access$702(Lcom/miui/home/launcher/Launcher;I)I

    .line 1597
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1598
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$800(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 1599
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 1600
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 1601
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 1602
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1603
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

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

    .line 1604
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1608
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->onDisplayRotationChanged(I)V

    .line 1610
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1611
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onDisplayRotationChanged(I)V

    .line 1616
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p1, p1, Lcom/miui/home/launcher/Launcher;->mDeviceProfile:Lcom/miui/home/launcher/DeviceProfile;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 1617
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 1618
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->checkIfIsOrientationChanged(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1619
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    .line 1620
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    .line 1621
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DeviceConfig;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 1622
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1623
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    if-ne p1, v1, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    if-eq v0, p1, :cond_5

    goto :goto_0

    .line 1627
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    goto :goto_1

    .line 1624
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    return-void

    .line 1631
    :cond_7
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
