.class public Lcom/miui/home/settings/IconCustomizePreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "IconCustomizePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconSizeProvider:Lcom/miui/home/launcher/common/ScaleIconSizeProvider;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mIconSizeProvider:Lcom/miui/home/launcher/common/ScaleIconSizeProvider;

    .line 30
    iget-object p1, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mIconSizeProvider:Lcom/miui/home/launcher/common/ScaleIconSizeProvider;

    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->setScale(F)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->onBindViewHolder(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 55
    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$000(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$100(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/LauncherIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$100(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mIconSizeProvider:Lcom/miui/home/launcher/common/ScaleIconSizeProvider;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setIconSizeProvider(Lcom/miui/home/launcher/common/IconSizeProvider;)V

    .line 58
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$000(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f11020b

    const v1, 0x7f11020e

    invoke-static {p2, p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0029

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    new-instance p2, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;-><init>(Lcom/miui/home/settings/IconCustomizePreviewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setIconScale(F)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mIconSizeProvider:Lcom/miui/home/launcher/common/ScaleIconSizeProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->setScale(F)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->notifyDataSetChanged()V

    return-void
.end method
