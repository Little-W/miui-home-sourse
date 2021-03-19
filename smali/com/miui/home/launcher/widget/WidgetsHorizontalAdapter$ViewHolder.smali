.class public Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsHorizontalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field public mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

.field final synthetic this$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;Landroid/view/View;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->this$0:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    .line 191
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    check-cast p2, Lcom/miui/home/launcher/widget/WidgetCell;

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    return-void
.end method
