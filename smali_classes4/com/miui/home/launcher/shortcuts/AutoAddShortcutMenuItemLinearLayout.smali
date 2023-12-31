.class public abstract Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AutoAddShortcutMenuItemLinearLayout.java"


# instance fields
.field protected mPreInflateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    const-string p2, "layout_inflater"

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->initPreInflateViews(Landroid/view/LayoutInflater;)V

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

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setVisibleItemCount(I)V

    const/4 v0, 0x0

    .line 43
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mVisibleItemCount:I

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->bindShortcutMenuItem(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getItemHeight()I
.end method

.method protected abstract getMaxShortcutItemCount()I
.end method

.method public abstract getMaxVisualHeight()I
.end method

.method protected abstract getShortcutItemLayoutResId()I
.end method

.method protected getVisibleItemCount()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mVisibleItemCount:I

    return p0
.end method

.method public abstract getVisualHeight()I
.end method

.method protected initPreInflateViews(Landroid/view/LayoutInflater;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getMaxShortcutItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getShortcutItemLayoutResId()I

    move-result v2

    invoke-virtual {p1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    .line 37
    iget-object v3, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setVisibleItemCount(I)V

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    .line 52
    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBg()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f0806c3

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setItemBg(II)V

    goto :goto_1

    :cond_0
    if-le v0, v2, :cond_1

    :goto_0
    if-ge v1, v0, :cond_1

    const v2, 0x7f0806c2

    .line 91
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setItemBg(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected setItemBg(II)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setItemTextColor(II)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setTitleTextColor(I)V

    return-void
.end method

.method public setTextColor()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const v2, 0x7f0605b1

    .line 99
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->setItemTextColor(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setVisibleItemCount(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mVisibleItemCount:I

    return-void
.end method

.method public shouldBeShown()Z
    .locals 0

    .line 65
    iget p0, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mVisibleItemCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showPreInflateViews()V
    .locals 3

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    .line 79
    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
