.class public Lcom/miui/home/smallwindow/SmallWindowEditAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SmallWindowEditAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/smallwindow/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeaderId:I

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

.field private mSelectedCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/miui/home/smallwindow/BadgeCheckedListener;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mLayoutId:I

    .line 31
    iput-object p3, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mListener:Lcom/miui/home/smallwindow/BadgeCheckedListener;

    .line 32
    iput p4, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mHeaderId:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/smallwindow/SmallWindowEditAdapter;)Lcom/miui/home/smallwindow/BadgeCheckedListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mListener:Lcom/miui/home/smallwindow/BadgeCheckedListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mItemInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemInfoList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/smallwindow/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mItemInfoList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mItemInfoList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->isHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isHeader(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/miui/home/smallwindow/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/smallwindow/BaseViewHolder;I)V
    .locals 5

    .line 50
    invoke-virtual {p0, p2}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mItemInfoList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/ItemInfo;

    .line 54
    sget v2, Lcom/miui/home/smallwindow/R$id;->icon:I

    invoke-virtual {p1, v2}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 55
    sget v3, Lcom/miui/home/smallwindow/R$id;->badge:I

    invoke-virtual {p1, v3}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 56
    sget v4, Lcom/miui/home/smallwindow/R$id;->title:I

    invoke-virtual {p1, v4}, Lcom/miui/home/smallwindow/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 58
    invoke-virtual {v0, v3}, Lcom/miui/home/smallwindow/ItemInfo;->setBadgeImage(Landroid/widget/ImageView;)V

    .line 59
    invoke-virtual {v0}, Lcom/miui/home/smallwindow/ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/smallwindow/ItemInfo;

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/ItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mSelectedCount:I

    sget p2, Lcom/miui/home/smallwindow/SmallWindowSelectedAdapter;->SELECTED_LIST_MAX_SIZE:I

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->updateBadgeImageView(ZLandroid/widget/ImageView;)V

    .line 63
    new-instance p1, Lcom/miui/home/smallwindow/SmallWindowEditAdapter$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowEditAdapter;Lcom/miui/home/smallwindow/ItemInfo;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/smallwindow/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/smallwindow/BaseViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 38
    new-instance p2, Lcom/miui/home/smallwindow/BaseViewHolder;

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mHeaderId:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/smallwindow/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 42
    new-instance p2, Lcom/miui/home/smallwindow/BaseViewHolder;

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mLayoutId:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/smallwindow/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setItemInfoList(Ljava/util/ArrayList;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mItemInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setSelectedCount(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mSelectedCount:I

    return-void
.end method

.method public updateBadgeImage(Z)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/ItemInfo;

    .line 107
    invoke-virtual {v1}, Lcom/miui/home/smallwindow/ItemInfo;->getBadgeImage()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->updateBadgeImageView(ZLandroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateBadgeImageView(ZLandroid/widget/ImageView;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/home/smallwindow/R$drawable;->add_enable:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/home/smallwindow/R$string;->content_description_button_add:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/home/smallwindow/R$drawable;->add_disable:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/home/smallwindow/R$string;->content_description_button_disable:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
