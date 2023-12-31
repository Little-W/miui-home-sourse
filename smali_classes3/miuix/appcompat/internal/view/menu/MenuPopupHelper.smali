.class public Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuItemLayout:I

.field private mOverflowOnly:Z

.field private mPopup:Lmiuix/internal/widget/ListPopup;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_item_layout:I

    sput v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    .line 70
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 73
    iput-boolean p4, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p4, p4, 0x2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_config_prefDialogWidth:I

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 76
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    .line 79
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 81
    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)I
    .locals 0

    .line 31
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    return p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dismiss(Z)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 135
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 209
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    .line 210
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 131
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    return-void
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

    .line 140
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 141
    invoke-static {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 145
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 146
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    return v0

    :cond_0
    return p3
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 7

    .line 176
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 177
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3, v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 178
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V

    .line 181
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->size()I

    move-result v2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1

    .line 183
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 184
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 189
    :goto_1
    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 191
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_2

    .line 193
    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    return-void
.end method

.method public setMenuItemLayout(I)V
    .locals 0

    .line 97
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    return-void
.end method

.method public tryShow()Z
    .locals 3

    .line 107
    new-instance v0, Lmiuix/internal/widget/ListPopup;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 108
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setMaxAllowedHeight(I)V

    .line 109
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setHasShadow(Z)V

    .line 110
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0, p0}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 111
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0, p0}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v2}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 114
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0, v2}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->getMinMarginScreen()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 117
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    .line 118
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 119
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 164
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
