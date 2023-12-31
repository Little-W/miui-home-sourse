.class public Lcom/miui/home/launcher/UninstallDropTarget;
.super Lcom/miui/home/launcher/ButtonDropTarget;
.source "UninstallDropTarget.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;


# static fields
.field public static final DELETE:Lcom/miui/home/launcher/UninstallDropTargetMode;

.field private static final DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field public static final UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;


# instance fields
.field private mIsContainUninstallOrDeleteItem:Z

.field private mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0605d8

    const v2, 0x7f0605d7

    const v3, 0x7f0605d6

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(IIII)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 36
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "pressed"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 38
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "drag_over"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 40
    new-instance v0, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;

    invoke-direct {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 41
    new-instance v0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;

    invoke-direct {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->DELETE:Lcom/miui/home/launcher/UninstallDropTargetMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return-void
.end method

.method private changeIconAndLabel()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getIconResId()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getIconResIdLightWallpaper()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->setImageResource(II)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getLabelResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 84
    sget-object p0, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110074

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 79
    sget-object p0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method public isContainUninstallOrDeleteItem()Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return p0
.end method

.method public isUninstallMode()Z
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    sget-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$UninstallDropTarget(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->isNormalState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    const-string/jumbo p0, "uninstall"

    .line 56
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditModeTopMenuClickEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    const v0, 0x7f11006b

    .line 104
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performReadyDrop(Landroid/view/View;)V

    .line 106
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setSelected(Z)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragView;->setSelected(Z)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    .line 97
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragApkToCenterDeleteDropTargetEvent(I)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    const/4 p0, 0x1

    .line 91
    iput-boolean p0, p1, Lcom/miui/home/launcher/DragObject;->removeDragViewsAtLast:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->onFinishInflate()V

    .line 53
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTarget$qJxMniHCtauvIobyuPq4h5TVoN8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTarget$qJxMniHCtauvIobyuPq4h5TVoN8;-><init>(Lcom/miui/home/launcher/UninstallDropTarget;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIsContainUninstallOrDeleteItem(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return-void
.end method

.method public setMode(Lcom/miui/home/launcher/UninstallDropTargetMode;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    if-eq v0, p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->changeIconAndLabel()V

    :cond_0
    return-void
.end method

.method public showIfNeed()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->changeToNormalState(Z)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->changeToGoneState(Z)V

    :cond_1
    :goto_0
    return-void
.end method
