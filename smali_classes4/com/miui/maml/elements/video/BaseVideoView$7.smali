.class Lcom/miui/maml/elements/video/BaseVideoView$7;
.super Ljava/lang/Object;
.source "BaseVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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

    .line 161
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$7;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$7;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->pause()V

    :goto_0
    return-void
.end method
