.class Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;
.super Ljava/lang/Object;
.source "BottomItemsDragSource.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;

.field final synthetic val$imgPreview:Landroid/widget/ImageView;

.field final synthetic val$itemData:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;Landroid/widget/ImageView;Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;->this$1:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;->val$imgPreview:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;->val$itemData:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;->this$1:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;

    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;->val$imgPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;->val$itemData:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$MyAdapter$1;->val$itemData:Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;

    iget-object v2, v2, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource$ItemData;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;->access$100(Lcom/miui/home/launcher/upsidescene/BottomItemsDragSource;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ItemInfo;)V

    const/4 p1, 0x1

    return p1
.end method
