.class public Lcom/miui/home/launcher/oldman/QuickCallCellLayout;
.super Lcom/miui/home/launcher/CellLayout;
.source "QuickCallCellLayout.java"


# instance fields
.field private mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

.field private mTitle:Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->setCellPaddingTop(I)V

    return-void
.end method


# virtual methods
.method public canBeDeleted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hideAddContactButton()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->removeView(Landroid/view/View;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove contact button, mAddQuickCallButton.parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ElderlyMan"

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAddContactButtonShowing()Z
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onQuickEditModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->hideAddContactButton()V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showAddContactButton()V

    :goto_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/miui/home/launcher/CellLayout;->onWallpaperColorChanged()V

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mTitle:Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06056f

    goto :goto_0

    :cond_0
    const v1, 0x7f060570

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setAllLayoutValues(Z)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickCallCellVerticalSpacing()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->setHeightGap(I)V

    return-void
.end method

.method public showAddContactButton()V
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->isFull()Z

    move-result v0

    const-string v1, "ElderlyMan"

    if-eqz v0, :cond_0

    const-string p0, "one key call screen is full, don\'t show add_button"

    .line 43
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    .line 53
    iget-object v2, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mTmpXY:[I

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getLastOccupiedIndex()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3, v2}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->positionIndexToCell(I[I)V

    const/4 v3, 0x0

    .line 55
    aget v3, v2, v3

    iput v3, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->cellX:I

    .line 56
    aget v2, v2, v4

    iput v2, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->cellY:I

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->screenId:J

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add contact button at ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->cellY:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, -0x1

    new-instance v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v2}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const-string p0, "add_button has own parentView"

    .line 62
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showTitle()V
    .locals 2

    .line 24
    new-instance v0, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mTitle:Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mTitle:Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->addView(Landroid/view/View;)V

    return-void
.end method
