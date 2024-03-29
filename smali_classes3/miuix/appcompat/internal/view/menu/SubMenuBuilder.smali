.class public Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;
.super Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 29
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 0

    return-void
.end method

.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .line 71
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 72
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 116
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 0

    .line 53
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .locals 0

    .line 66
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public isQwertyMode()Z
    .locals 0

    .line 39
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result p0

    return p0
.end method

.method public isShortcutsVisible()Z
    .locals 0

    .line 49
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result p0

    return p0
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 81
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 76
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mParentMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method
