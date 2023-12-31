.class public Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;
.super Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;
.source "SystemShortcutMenu.java"


# instance fields
.field private mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setPadding(IZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p0, v0, p1, v0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setPadding(IIII)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1, v0, p1, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->bindShortcutMenuItem(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070662

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setPadding(IZ)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setVisibleItemCount(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070698

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->setPadding(IZ)V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->bindMenu(Ljava/util/List;Lcom/miui/home/launcher/ItemInfo;)V

    :goto_0
    return-void
.end method

.method public getItemHeight()I
    .locals 5

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisibleItemCount()I

    move-result v2

    div-int/2addr v0, v2

    move v2, v1

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisibleItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getItemHeight(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method protected getMaxShortcutItemCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getMaxVisualHeight()I
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getItemHeight()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected getShortcutItemLayoutResId()I
    .locals 0

    const p0, 0x7f0d018c

    return p0
.end method

.method public getVisualHeight()I
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getItemHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected initPreInflateViews(Landroid/view/LayoutInflater;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->initPreInflateViews(Landroid/view/LayoutInflater;)V

    const v0, 0x7f0d008c

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->reset()V

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->reset()V

    return-void
.end method

.method public showPreInflateViews()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->mHorizontalPreInflateView:Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenu;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->showPreInflateViews()V

    :goto_0
    return-void
.end method
