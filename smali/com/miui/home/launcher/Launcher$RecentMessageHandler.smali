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

    .line 8586
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 8586
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 8590
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10800(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8591
    iget-boolean p1, p1, Lcom/miui/home/recents/messages/ChangeLauncherStateEvent;->mIsToFeedState:Z

    if-eqz p1, :cond_1

    .line 8592
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8593
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4300(Lcom/miui/home/launcher/Launcher;)V

    .line 8594
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    .line 8596
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8597
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$5000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_1
    return-void
.end method
