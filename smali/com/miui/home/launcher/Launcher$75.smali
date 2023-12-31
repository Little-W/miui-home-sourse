.class Lcom/miui/home/launcher/Launcher$75;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 8678
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 8681
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    .line 8682
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showBackGestureInEditingMode()Z

    move-result v1

    .line 8683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyBackGestureStatus:run usingFsGesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   focus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 8685
    invoke-static {v3}, Lcom/miui/home/launcher/Launcher;->access$8700(Lcom/miui/home/launcher/Launcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   pause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 8686
    invoke-static {v3}, Lcom/miui/home/launcher/Launcher;->access$8800(Lcom/miui/home/launcher/Launcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher"

    .line 8683
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8687
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$8900(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_R:Z

    if-eqz v2, :cond_6

    :cond_0
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 8689
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$8700(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$8800(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 8690
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8691
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string/jumbo v0, "typefrom_landscape_overview"

    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->access$9000(Lcom/miui/home/launcher/Launcher;ZLjava/lang/String;)V

    goto :goto_1

    .line 8693
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 8694
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 8695
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 8696
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result p0

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/miui/home/launcher/folder/FolderSheet;->isFolderSheetViewShow:Z

    if-nez p0, :cond_4

    .line 8697
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitAndNotMinimize()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 8693
    :cond_4
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9100(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_1

    .line 8701
    :cond_5
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$8700(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->access$9100(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_6
    :goto_1
    return-void
.end method
