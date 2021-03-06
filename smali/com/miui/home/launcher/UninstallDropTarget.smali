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

    .line 35
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0601e7

    const v2, 0x7f0601e6

    const v3, 0x7f0601e5

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(IIII)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 37
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "pressed"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 39
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "drag_over"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 41
    new-instance v0, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;

    invoke-direct {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 42
    new-instance v0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;

    invoke-direct {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->DELETE:Lcom/miui/home/launcher/UninstallDropTargetMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return-void
.end method

.method private changeIconAndLabel()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getIconResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getLabelResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->setTextId(I)V

    return-void
.end method

.method private getDisableReason()I
    .locals 1

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1000f5

    return v0

    :cond_0
    const v0, 0x7f1000f2

    return v0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/UninstallDropTarget;Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->isNormalState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    const-string p1, "uninstall"

    .line 57
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditModeTopMenuClickEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->isDisableState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->getDisableReason()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 1

    .line 91
    sget-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100067

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 1

    .line 86
    sget-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object v0
.end method

.method public isContainUninstallOrDeleteItem()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return v0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    const p1, 0x7f10005e

    .line 116
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    .line 104
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragApkToCenterDeleteDropTargetEvent(I)V

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->removeDraggedSprite()V

    const/4 p1, 0x1

    return p1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    return p1
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p1, Lcom/miui/home/launcher/DragObject;->removeDragViewsAtLast:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->onFinishInflate()V

    .line 54
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTarget$qJxMniHCtauvIobyuPq4h5TVoN8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$UninstallDropTarget$qJxMniHCtauvIobyuPq4h5TVoN8;-><init>(Lcom/miui/home/launcher/UninstallDropTarget;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIsContainUninstallOrDeleteItem(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return-void
.end method

.method public setMode(Lcom/miui/home/launcher/UninstallDropTargetMode;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    if-eq v0, p1, :cond_0

    .line 74
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->changeIconAndLabel()V

    :cond_0
    return-void
.end method

.method public showIfNeed()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->changeToNormalState(Z)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->changeToDisableState(Z)V

    :cond_1
    :goto_0
    return-void
.end method
