.class Lcom/miui/home/launcher/WorkspaceThumbnailView$1;
.super Ljava/lang/Object;
.source "WorkspaceThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/WorkspaceThumbnailView;
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

    .line 198
    iput-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 200
    instance-of v0, p1, Lcom/miui/home/launcher/ThumbnailContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-static {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$000(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    check-cast p1, Lcom/miui/home/launcher/ThumbnailContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailContainer;->getContent()Lcom/miui/home/launcher/CellScreen;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-static {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$100(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->snapToScreen(Lcom/miui/home/launcher/CellScreen;)I

    .line 203
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-static {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->access$200(Lcom/miui/home/launcher/WorkspaceThumbnailView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/miui/home/launcher/WorkspaceThumbnailView$1;->this$0:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine(Z)V

    :cond_0
    return-void
.end method
