.class public Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;
.super Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;
.source "AppShortcutMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/AutoAddShortcutMenuItemLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static getMaxCountInCurrentOrientation()I
    .locals 2

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    return v1
.end method


# virtual methods
.method protected getFirstViewBgResId()I
    .locals 1

    const v0, 0x7f08068f

    return v0
.end method

.method public getItemHeight()I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->mPreInflateViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return v1
.end method

.method protected getLastViewBgResId()I
    .locals 1

    const v0, 0x7f08068b

    return v0
.end method

.method protected getMaxShortcutItemCount()I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMaxVisualHeight()I
    .locals 2

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxCountInCurrentOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getShortcutItemLayoutResId()I
    .locals 1

    const v0, 0x7f0d0088

    return v0
.end method

.method public getVisualHeight()I
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getItemHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getVisibleItemCount()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
