.class Lcom/miui/home/launcher/widget/WidgetCell$1;
.super Ljava/lang/Object;
.source "WidgetCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/WidgetCell;->lambda$applyFromCellItem$1(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/WidgetCell;

.field final synthetic val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetCell;->mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    iget-object v0, v0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->this$0:Lcom/miui/home/launcher/widget/WidgetCell;

    iget-object v1, v1, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    iget-object v2, v2, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mDetailsPreview:Landroid/view/View;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell$1;->val$queryResult:Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    iget-object p0, p0, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/miui/home/launcher/widget/WidgetDetailsCallback;->onJumpClick(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
