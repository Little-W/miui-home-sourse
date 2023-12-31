.class Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;
.super Landroid/os/Handler;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;-><init>(Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Landroid/os/Looper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-static {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->access$200(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_2

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->isOpenAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    const-wide/16 v0, 0x64

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->access$300(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;J)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->handleUpdateRecommendTasks(Z)V

    :cond_2
    :goto_0
    return-void
.end method
