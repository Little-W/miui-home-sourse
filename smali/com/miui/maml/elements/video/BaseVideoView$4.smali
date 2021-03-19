.class Lcom/miui/maml/elements/video/BaseVideoView$4;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 122
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$4;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "BaseVideoView"

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$4;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I

    .line 126
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$4;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-static {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    const/4 p1, 0x1

    return p1
.end method
