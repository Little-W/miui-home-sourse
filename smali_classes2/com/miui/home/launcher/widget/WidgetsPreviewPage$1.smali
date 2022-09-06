.class Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;
.super Ljava/lang/Object;
.source "WidgetsPreviewPage.java"

# interfaces
.implements Lcom/miui/home/launcher/widget/WidgetDetailsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;->this$0:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;->this$0:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->access$100(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;->this$0:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->access$000(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetDetailsView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->setVisibility(I)V

    return-void
.end method

.method public onJumpClick(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;->this$0:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->access$000(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetDetailsView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;->this$0:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->access$100(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;->this$0:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->access$000(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetDetailsView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->setDetailsView(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
