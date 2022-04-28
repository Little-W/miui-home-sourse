.class Lcom/miui/home/launcher/WorkspaceThumbnailView$2;
.super Ljava/lang/Object;
.source "WorkspaceThumbnailView.java"

# interfaces
.implements Lcom/miui/home/launcher/WorkspaceThumbnailView$FoldSwitchScreenAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/WorkspaceThumbnailView;->switchScreenWithFoldAnim()V
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

    .line 243
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public switchScreenAnimFinish()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$202(Lcom/miui/home/launcher/WorkspaceThumbnailView;Z)Z

    return-void
.end method

.method public switchScreenInAnimEnd()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-static {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$300(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    return-void
.end method

.method public switchScreenOutAnimStart()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$202(Lcom/miui/home/launcher/WorkspaceThumbnailView;Z)Z

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$2;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    return-void
.end method
