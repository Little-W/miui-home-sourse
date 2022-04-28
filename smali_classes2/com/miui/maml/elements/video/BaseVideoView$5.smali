.class Lcom/miui/maml/elements/video/BaseVideoView$5;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 132
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 134
    iget-object p2, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    iput p3, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 135
    iget-object p2, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 136
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    iget p1, p1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    iget p1, p1, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateVideoSize()V

    :cond_0
    return-void
.end method
