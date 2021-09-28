.class public Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WidgetsHorizontalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mWidgetPreviewLoader:Lcom/miui/home/launcher/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 49
    iput-object p3, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 50
    new-instance p2, Lcom/miui/home/launcher/WidgetPreviewLoader;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/WidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mWidgetPreviewLoader:Lcom/miui/home/launcher/WidgetPreviewLoader;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mItemInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;I)V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mItemInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 63
    iput-object v0, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 65
    iget-object v1, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    .line 66
    iget-object v2, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mWidgetCell:Lcom/miui/home/launcher/widget/WidgetCell;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mWidgetPreviewLoader:Lcom/miui/home/launcher/WidgetPreviewLoader;

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/miui/home/launcher/widget/WidgetCell;->applyFromCellItem(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader;)V

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v1}, Lcom/miui/home/launcher/widget/WidgetCell;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070389

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 70
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMarginStart(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;
    .locals 2

    .line 56
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0111

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItemInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->mItemInfos:Ljava/util/ArrayList;

    return-void
.end method
