.class Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;
.super Ljava/lang/Object;
.source "WidgetThumbnailView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/WidgetThumbnailView;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/WidgetThumbnailView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;->this$0:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;->this$0:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->access$000(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetThumbnailView$1;->this$0:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->access$100(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method
