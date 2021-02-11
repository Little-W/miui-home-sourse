.class Lcom/miui/home/launcher/Launcher$21;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


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
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 3226
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 3229
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result p1

    .line 3230
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->updateSmallWindowState(Landroid/content/Context;)V

    .line 3231
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3232
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->clearCurrentTaskInfo()V

    .line 3233
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3000(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3236
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 3237
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3238
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    :cond_1
    return-void
.end method
