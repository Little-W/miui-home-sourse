.class Lcom/miui/home/launcher/Launcher$73;
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

    .line 7556
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 7559
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_R:Z

    if-eqz v0, :cond_6

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7560
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showBackGestureInEditingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7561
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9200(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9300(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 7562
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7563
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string v2, "typefrom_landscape_overview"

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->access$9400(Lcom/miui/home/launcher/Launcher;ZLjava/lang/String;)V

    goto :goto_1

    .line 7565
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 7566
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 7567
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 7565
    :cond_4
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9500(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_1

    .line 7571
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$73;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9200(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9500(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_6
    :goto_1
    return-void
.end method
