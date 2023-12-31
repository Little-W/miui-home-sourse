.class Lcom/miui/maml/elements/MusicController$2;
.super Landroid/media/session/MediaController$Callback;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicController;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/MusicController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    const-string v0, "MAML_MusicController"

    const-string v1, "onMetadataChanged"

    .line 74
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    const-string v0, "MAML_MusicController"

    const-string v1, "onPlaybackStateChanged"

    .line 60
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 64
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackActionUpdate(J)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    const-string v0, "MAML_MusicController"

    const-string v1, "onSessionDestroyed"

    .line 45
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onSessionDestroyed()V

    :cond_0
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "MAML_MusicController"

    const-string p1, "onSessionEvent"

    .line 54
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
