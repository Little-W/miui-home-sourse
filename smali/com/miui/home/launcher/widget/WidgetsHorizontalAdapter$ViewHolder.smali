.class public Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsHorizontalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field public mTextView:Landroid/widget/TextView;

.field public mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    check-cast p1, Lcom/miui/home/launcher/widget/WidgetCell;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    .line 97
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    const v0, 0x7f0a0164

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 98
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    const v0, 0x7f0a0167

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method
