.class public Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;
.super Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;
.source "AppShortcutMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getMaxCountInCurrentOrientation()I
    .locals 2

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    return v1
.end method


# virtual methods
.method public getItemHeight()I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->mPreInflateViews:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return v1
.end method

.method protected getMaxShortcutItemCount()I
    .locals 1

    const/4 p0, 0x3

    const/4 v0, 0x4

    .line 24
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getMaxVisualHeight()I
    .locals 1

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxCountInCurrentOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getItemHeight()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method protected getShortcutItemLayoutResId()I
    .locals 0

    const p0, 0x7f0d008c

    return p0
.end method

.method public getVisualHeight()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getItemHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisibleItemCount()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public setBg()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisibleItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const v2, 0x7f0806c3

    .line 48
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->setItemBg(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
