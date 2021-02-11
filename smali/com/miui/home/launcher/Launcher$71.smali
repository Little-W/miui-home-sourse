.class Lcom/miui/home/launcher/Launcher$71;
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

    .line 7383
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7386
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9300(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7387
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showBackGestureInEditingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7388
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9400(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9500(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7389
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 7390
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 7391
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 7389
    :goto_1
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9600(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_2

    .line 7394
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$71;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9400(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9600(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_4
    :goto_2
    return-void
.end method
