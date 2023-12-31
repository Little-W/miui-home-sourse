.class Lcom/miui/home/launcher/Launcher$SearchBarObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchBarObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 4367
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 4368
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 4373
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Launcher"

    const-string v0, "SearchBarObserver onChange"

    .line 4376
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->reloadSearchBarIfNeed()V

    .line 4378
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$2600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->refreshSearchIcon()V

    return-void
.end method
