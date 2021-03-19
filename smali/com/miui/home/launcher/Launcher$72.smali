.class Lcom/miui/home/launcher/Launcher$72;
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

    .line 7497
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7500
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_R:Z

    if-eqz v0, :cond_5

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7501
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showBackGestureInEditingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7502
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9200(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9300(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7503
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 7504
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 7505
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 7503
    :goto_1
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9400(Lcom/miui/home/launcher/Launcher;Z)V

    goto :goto_2

    .line 7508
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$72;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9200(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9400(Lcom/miui/home/launcher/Launcher;Z)V

    :cond_5
    :goto_2
    return-void
.end method
