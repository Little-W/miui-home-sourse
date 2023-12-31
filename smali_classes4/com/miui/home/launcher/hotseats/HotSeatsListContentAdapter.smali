.class public Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HotSeatsListContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;,
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;,
        Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/hotseats/HotSeatsList;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 60
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p0

    return-object p0
.end method

.method private getSearchIconWithColorMode(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "ic_dock_search.png"

    .line 147
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    const p1, 0x7f08029a

    goto :goto_0

    :cond_0
    const p1, 0x7f080299

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method private setItemIconAvailable(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 211
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->setAlpha(F)V

    .line 212
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->setScaleX(F)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->setScaleY(F)V

    .line 214
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setTranslucentAlphaToItem(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getCantAddToLauncherDraggingItem()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    if-ne p2, p0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 207
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method


# virtual methods
.method public canDropOver(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 249
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    const/16 p1, 0x10

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemCount()I
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    return p0
.end method

.method public synthetic lambda$onCreateViewHolder$0$HotSeatsListContentAdapter(Landroid/view/View;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f010034

    const v0, 0x7f010035

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->overridePendingTransition(II)V

    return-void
.end method

.method public synthetic lambda$onCreateViewHolder$1$HotSeatsListContentAdapter(Lcom/miui/home/launcher/ShortcutIcon;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getSearchIconWithColorMode(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onBindViewHolder(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;I)V
    .locals 3

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_6

    const/16 v1, 0x80

    if-eq v0, v1, :cond_5

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 170
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 171
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/PairShortcutIcon;

    .line 172
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/home/launcher/PairShortcutIcon;->bindGroupShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/PairShortcutInfo;Landroid/view/ViewGroup;)V

    .line 173
    iget-object p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setTranslucentAlphaToItem(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    goto/16 :goto_0

    .line 201
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellBackground;

    .line 189
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 192
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    iget-object p0, p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellBackground;->setCellTranslate(I)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f0801cf

    .line 196
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 195
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 183
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    .line 184
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setItemIconAvailable(Lcom/miui/home/launcher/ItemIcon;)V

    .line 185
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p2, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->bindShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 177
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    .line 178
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setItemIconAvailable(Lcom/miui/home/launcher/ItemIcon;)V

    .line 179
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/FolderIcon;->bindFolderInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 162
    :cond_5
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 163
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 164
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setItemIconAvailable(Lcom/miui/home/launcher/ItemIcon;)V

    .line 165
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/home/launcher/ShortcutIcon;->bindShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/ViewGroup;)V

    .line 167
    iget-object p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->setTranslucentAlphaToItem(Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d0071

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x40

    const v5, 0x7f0d003f

    if-eq p2, v2, :cond_7

    const/4 v2, 0x4

    if-eq p2, v2, :cond_6

    const/16 v2, 0x8

    if-eq p2, v2, :cond_5

    const/16 v2, 0x10

    if-eq p2, v2, :cond_4

    const/16 v2, 0x20

    if-eq p2, v2, :cond_3

    if-eq p2, v4, :cond_2

    const/16 v1, 0x80

    if-eq p2, v1, :cond_1

    const/16 v1, 0x100

    if-ne p2, v1, :cond_0

    const v1, 0x7f0d0089

    .line 130
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v2, p1}, Lcom/miui/home/launcher/PairShortcutIcon;->create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/PairShortcutIcon;

    move-result-object p1

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/PairShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/PairShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, v1, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 115
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    goto/16 :goto_0

    .line 111
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0d003e

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 106
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0d0040

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 107
    move-object p0, p1

    check-cast p0, Lcom/miui/home/launcher/CellBackground;

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    goto :goto_0

    :cond_4
    const p1, 0x7f0d0043

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 102
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    const p1, 0x7f0d0078

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/FolderIcon;->create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 88
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 72
    :cond_7
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getSearchIconWithColorMode(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v1, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 75
    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$XFA2Wf3FOS5uZ79KjRklPRWVyJY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$XFA2Wf3FOS5uZ79KjRklPRWVyJY;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$iGiX3qwEejNxWTcFxtnHEcm6n_M;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$iGiX3qwEejNxWTcFxtnHEcm6n_M;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setColorModeChangedListener(Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;)V

    :goto_0
    if-ne p2, v4, :cond_8

    .line 139
    new-instance p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V

    return-object p0

    .line 141
    :cond_8
    new-instance p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;

    invoke-direct {p0, v0, p1, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;)V

    return-object p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onViewAttachedToWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 220
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onViewDetachedFromWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 228
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 229
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method
