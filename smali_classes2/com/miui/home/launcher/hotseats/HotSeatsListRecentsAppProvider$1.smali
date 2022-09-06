.class Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;
.super Landroid/os/Handler;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
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

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->access$100(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Z)V

    :cond_0
    return-void
.end method
