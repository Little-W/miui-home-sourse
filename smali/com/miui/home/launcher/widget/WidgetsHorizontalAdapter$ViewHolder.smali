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
.field public mItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field public mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    check-cast p1, Lcom/miui/home/launcher/widget/WidgetCell;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    return-void
.end method
