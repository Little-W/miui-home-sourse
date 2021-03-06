.class public Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;
.super Landroid/mysupport/v7/widget/RecyclerView$Adapter;
.source "CategoryOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;,
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;,
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;,
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/mysupport/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

.field private final mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

.field private mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer<",
            "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTouchHelper:Landroid/mysupport/v7/widget/helper/ItemTouchHelper;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    .line 40
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    .line 42
    new-instance p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    .line 43
    new-instance p1, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    invoke-virtual {p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->getDifferConfig()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/mysupport/v7/util/ListUpdateCallback;Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryList:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    return-object p0
.end method

.method private getItem(I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    return-object p1
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;->removeCategory(I)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;->editCategory(I)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->setAnimEnable(Z)V

    .line 84
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroid/mysupport/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, p1}, Landroid/mysupport/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$onBindViewHolder$3(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mCategoryListener:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryListener;->addCategory()V

    return-void
.end method


# virtual methods
.method attachToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroid/mysupport/v7/widget/helper/ItemTouchHelper;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/mysupport/v7/widget/helper/ItemTouchHelper;

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$1;)V

    invoke-direct {v0, v1}, Landroid/mysupport/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/mysupport/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroid/mysupport/v7/widget/helper/ItemTouchHelper;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mItemTouchHelper:Landroid/mysupport/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/mysupport/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->viewType:I

    return p1
.end method

.method public onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f08013a

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f10002f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$b3bIZ8D5l6LVISs_tI63U5GY-Tw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$b3bIZ8D5l6LVISs_tI63U5GY-Tw;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->drag:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->categoryInfo:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 75
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const v2, 0x7f10001c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$L_iY4y-qEfZZR9BUy8wQudRuRsA;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$L_iY4y-qEfZZR9BUy8wQudRuRsA;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$EEZmqph_qkX_Pt7mXGsvyZ4SfSE;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$EEZmqph_qkX_Pt7mXGsvyZ4SfSE;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->drag:Landroid/view/View;

    new-instance v0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$4a7DG-GtIVzcvAvmel-X13jhSJc;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$4a7DG-GtIVzcvAvmel-X13jhSJc;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;
    .locals 3

    packed-switch p2, :pswitch_data_0

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected view type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :pswitch_0
    new-instance p2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDetachedFromRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V

    .line 198
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->onDetachedFromRecyclerView()V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$CategoryOrderUpdateCallback;->setAnimEnable(Z)V

    return-void
.end method

.method submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0, p1}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method
