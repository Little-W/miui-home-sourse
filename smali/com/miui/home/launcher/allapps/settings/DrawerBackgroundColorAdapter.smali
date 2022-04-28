.class public Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DrawerBackgroundColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/AllAppsColorMode;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/home/launcher/common/OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/OnItemClickListener<",
            "Lcom/miui/home/launcher/allapps/AllAppsColorMode;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mContext:Landroid/content/Context;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mList:Ljava/util/ArrayList;

    .line 28
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mList:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mList:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mList:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mSelectedColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;Lcom/miui/home/launcher/allapps/AllAppsColorMode;ILandroid/view/View;)V
    .locals 2

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mSelectedColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->notifyItemRangeChanged(II)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mOnItemClickListener:Lcom/miui/home/launcher/common/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p3, p1, p2}, Lcom/miui/home/launcher/common/OnItemClickListener;->onItemClick(Landroid/view/View;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getSelectedColor()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mSelectedColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 53
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;

    invoke-direct {v2, p0, v0, p2}, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$DrawerBackgroundColorAdapter$m-VlAXms-XTE2KSCHdYT9-J7Mew;-><init>(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->background:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mSelectedColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    if-ne p2, v0, :cond_0

    .line 63
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 64
    iget-object p1, p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 67
    iget-object p1, p1, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;
    .locals 3

    .line 47
    new-instance p2, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method setOnItemClickListener(Lcom/miui/home/launcher/common/OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/common/OnItemClickListener<",
            "Lcom/miui/home/launcher/allapps/AllAppsColorMode;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundColorAdapter;->mOnItemClickListener:Lcom/miui/home/launcher/common/OnItemClickListener;

    return-void
.end method
