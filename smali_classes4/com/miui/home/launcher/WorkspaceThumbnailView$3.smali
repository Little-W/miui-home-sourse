.class Lcom/miui/home/launcher/WorkspaceThumbnailView$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "WorkspaceThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/WorkspaceThumbnailView;->hideWithFolmeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$3;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$3;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onHideComplete()V

    return-void
.end method
