.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;
.super Landroid/mysupport/v7/widget/helper/ItemTouchHelper$Callback;
.source "CategoryOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-direct {p0}, Landroid/mysupport/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/mysupport/v7/widget/RecyclerView;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 177
    invoke-virtual {p3}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearView(Landroid/mysupport/v7/widget/RecyclerView;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 167
    invoke-super {p0, p1, p2}, Landroid/mysupport/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/mysupport/v7/widget/RecyclerView;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    .line 168
    iget-object p1, p2, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 169
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->isCategoryOrderChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    .line 171
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->getOrderedCategoryList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroid/mysupport/v7/widget/RecyclerView;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 129
    invoke-virtual {p2}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 130
    invoke-static {p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 132
    :cond_0
    invoke-static {p2, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public onMove(Landroid/mysupport/v7/widget/RecyclerView;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 138
    invoke-virtual {p2}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 139
    invoke-virtual {p3}, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ge p1, p2, :cond_0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 142
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object p3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->swap(II)V

    move p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    if-le p1, p2, :cond_1

    .line 146
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object p3

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p3, p1, v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->swap(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Landroid/mysupport/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p1, Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
