.class public Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SmallWindowSelectedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/smallwindow/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static ITEM_VIEW_TYPE_ITEM:I = 0x0

.field public static SELECTED_LIST_MAX_SIZE:I = 0xa


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/smallwindow/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutId:I

.field private mListener:Lcom/miui/home/smallwindow/BadgeCheckedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/miui/home/smallwindow/BadgeCheckedListener;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mLayoutId:I

    .line 25
    iput-object p3, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mListener:Lcom/miui/home/smallwindow/BadgeCheckedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;)Lcom/miui/home/smallwindow/BadgeCheckedListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mListener:Lcom/miui/home/smallwindow/BadgeCheckedListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/smallwindow/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 63
    sget p1, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->ITEM_VIEW_TYPE_ITEM:I

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/miui/home/smallwindow/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/ItemInfo;

    .line 39
    sget v1, Lcom/miui/home/smallwindow/R$id;->icon:I

    invoke-virtual {p1, v1}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 40
    sget v2, Lcom/miui/home/smallwindow/R$id;->badge:I

    invoke-virtual {p1, v2}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/smallwindow/ItemInfo;

    invoke-virtual {v2}, Lcom/miui/home/smallwindow/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/smallwindow/ItemInfo;

    invoke-virtual {p2}, Lcom/miui/home/smallwindow/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v0}, Lcom/miui/home/smallwindow/ItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 45
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/miui/home/smallwindow/R$drawable;->item_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x8

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/miui/home/smallwindow/R$drawable;->remove:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_0
    new-instance p2, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;Lcom/miui/home/smallwindow/ItemInfo;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/smallwindow/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/smallwindow/BaseViewHolder;
    .locals 3

    .line 30
    sget v0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->ITEM_VIEW_TYPE_ITEM:I

    if-ne p2, v0, :cond_0

    .line 31
    new-instance p2, Lcom/miui/home/smallwindow/BaseViewHolder;

    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/smallwindow/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setItemInfoList(Ljava/util/ArrayList;)V
    .locals 7

    .line 76
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    if-ge p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->mItemInfoList:Ljava/util/ArrayList;

    new-instance v6, Lcom/miui/home/smallwindow/ItemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/smallwindow/ItemInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
