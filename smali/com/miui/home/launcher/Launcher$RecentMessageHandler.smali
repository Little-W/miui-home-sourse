.class Lcom/miui/home/launcher/Launcher$RecentMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 9672
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 9672
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10300(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9677
    iget-boolean p1, p1, Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;->mIsToFeedState:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$10800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/settings/LauncherGestureController;->isSlideUpContentCenter()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9678
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$10900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isOverlayAttached()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 9679
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 9681
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9682
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4100(Lcom/miui/home/launcher/Launcher;)V

    .line 9683
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    .line 9685
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9686
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureStartEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9695
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$11000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9696
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$11000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->onFsGestureStart()V

    :cond_0
    return-void
.end method
