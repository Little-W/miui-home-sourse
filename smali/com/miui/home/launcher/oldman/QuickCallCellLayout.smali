.class public Lcom/miui/home/launcher/oldman/QuickCallCellLayout;
.super Lcom/miui/home/launcher/CellLayout;
.source "QuickCallCellLayout.java"


# instance fields
.field private mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->setCellPaddingTop(I)V

    return-void
.end method


# virtual methods
.method public canBeDeleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideAddContactButton()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->removeView(Landroid/view/View;)V

    const-string v0, "ElderlyMan"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove contact button, mAddQuickCallButton.parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAddContactButtonShowing()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onQuickEditModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->hideAddContactButton()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->showAddContactButton()V

    :goto_0
    return-void
.end method

.method protected setAllLayoutValues(Z)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/miui/home/launcher/CellLayout;->setAllLayoutValues(Z)V

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickCallCellVerticalSpacing()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->setHeightGap(I)V

    return-void
.end method

.method public showAddContactButton()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ElderlyMan"

    const-string v1, "one key call screen is full, don\'t show add_button"

    .line 40
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    .line 50
    iget-object v1, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mTmpXY:[I

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getLastOccupiedIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->positionIndexToCell(I[I)V

    const/4 v2, 0x0

    .line 52
    aget v2, v1, v2

    iput v2, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->cellX:I

    .line 53
    aget v1, v1, v3

    iput v1, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->cellY:I

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getScreenId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->screenId:J

    const-string v1, "ElderlyMan"

    .line 55
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

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->mAddQuickCallButton:Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, -0x1

    new-instance v2, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v2}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const-string v0, "ElderlyMan"

    const-string v1, "add_button has own parentView"

    .line 59
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showTitle()V
    .locals 2

    .line 21
    new-instance v0, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/oldman/QuickCallTitleTextView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;->addView(Landroid/view/View;)V

    return-void
.end method
