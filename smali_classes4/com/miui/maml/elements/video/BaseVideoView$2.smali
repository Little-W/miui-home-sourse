.class Lcom/miui/maml/elements/video/BaseVideoView$2;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/video/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I

    .line 104
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 106
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getDuration()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$500(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 107
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$600(Lcom/miui/maml/elements/video/BaseVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$700(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method
