.class Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "BottomItemsDragSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field mItemDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->mItemDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->mItemDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 72
    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->mItemDatas:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    .line 74
    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    invoke-static {p2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->access$000(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0d006d

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0a02b9

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a014b

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    iget-object v1, p1, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->title:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-boolean v1, v1, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->mIsShowName:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :cond_0
    iget-object p3, p1, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object p3, p1, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    new-instance p3, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;

    invoke-direct {p3, p0, v0, p1}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;-><init>(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;Landroid/widget/ImageView;Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method
