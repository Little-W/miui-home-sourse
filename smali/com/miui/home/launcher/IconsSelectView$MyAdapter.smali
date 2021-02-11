.class public Lcom/miui/home/launcher/IconsSelectView$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconsSelectView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/IconsSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field mList:Ljava/util/List;

.field final synthetic this$0:Lcom/miui/home/launcher/IconsSelectView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/IconsSelectView;Ljava/util/List;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    iget-object v1, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/home/launcher/IconsSelectView;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-static {p1}, Lcom/miui/home/launcher/IconsSelectView;->access$000(Lcom/miui/home/launcher/IconsSelectView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/IconsSelectView;->mSelectedObject:Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconsSelectView;->ok()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p4, p1, Lcom/miui/home/launcher/IconsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {p4, p3}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/miui/home/launcher/IconsSelectView;->setSelected(Landroid/view/ViewGroup;Z)V

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconsSelectView;->updateTitle()V

    :goto_0
    return-void
.end method
