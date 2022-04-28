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

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 58
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onCreateViewHolder$0(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Landroid/view/View;)V
    .locals 3

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f010030

    const v1, 0x7f010031

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public canDropOver(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0x40

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onBindViewHolder(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;I)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_7

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected view type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellBackground;

    .line 163
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellBackground;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    iget-object p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setCellTranslate(I)V

    goto :goto_2

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p2, 0x7f0800e8

    .line 170
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellBackground;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 157
    :cond_3
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 158
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    .line 159
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p2, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->bindShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 152
    :cond_4
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    .line 153
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0, p2}, Lcom/miui/home/launcher/FolderIcon;->bindFolderInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_2

    .line 144
    :cond_5
    :goto_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 145
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/home/launcher/ShortcutIcon;->bindShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/ViewGroup;)V

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mSeatsList:Lcom/miui/home/launcher/hotseats/HotSeatsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getDraggingItem()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 149
    iget-object p1, p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->itemView:Landroid/view/View;

    if-ne p2, v0, :cond_6

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d005c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x40

    const v5, 0x7f0d0039

    if-eq p2, v2, :cond_6

    const/4 v2, 0x4

    if-eq p2, v2, :cond_5

    const/16 v2, 0x8

    if-eq p2, v2, :cond_4

    const/16 v2, 0x10

    if-eq p2, v2, :cond_3

    const/16 v2, 0x20

    if-eq p2, v2, :cond_2

    if-eq p2, v4, :cond_1

    const/16 v1, 0x80

    if-ne p2, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, v1, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 112
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    goto/16 :goto_1

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected view type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d003d

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_1

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d003e

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/CellBackground;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellBackground;->setImageAlpha(I)V

    goto/16 :goto_1

    :cond_3
    const p1, 0x7f0d0040

    .line 97
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    const p1, 0x7f0d0061

    .line 91
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v1, v0}, Lcom/miui/home/launcher/FolderIcon;->create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 86
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 70
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    const-string v1, "ic_dock_search.png"

    .line 71
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_8

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v2, 0x7f0801b4

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v2, 0x7f0801b3

    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    :cond_8
    invoke-virtual {p1, v1, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 76
    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$XFA2Wf3FOS5uZ79KjRklPRWVyJY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$XFA2Wf3FOS5uZ79KjRklPRWVyJY;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    if-ne p2, v4, :cond_9

    .line 130
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;

    invoke-direct {p2, v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V

    return-object p2

    .line 132
    :cond_9
    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;

    invoke-direct {p2, v0, p1, v3}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;)V

    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onViewAttachedToWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V
    .locals 1

    .line 181
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 182
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onViewDetachedFromWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 190
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->getContent()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DropTarget;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    :cond_0
    return-void
.end method
