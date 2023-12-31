.class public abstract Lcom/miui/home/launcher/ButtonDropTarget;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;


# static fields
.field private static final DRAG_OVER_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field protected static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected NOTCH_DELTA:I

.field private mActive:Z

.field private mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTranslationDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    sput-object v0, Lcom/miui/home/launcher/ButtonDropTarget;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0605d7

    const v2, 0x7f0605d6

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/ButtonDropTarget;->DRAG_OVER_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 31
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuState;

    sget-object v1, Lcom/miui/home/launcher/ButtonDropTarget;->DRAG_OVER_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const-string v2, "drag_over"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/ButtonDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->NOTCH_DELTA:I

    .line 35
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->setPaddingTop()V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public changeToDragOverState(Z)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->updateContainer(Lcom/miui/home/launcher/multiselect/TopMenuState;Z)V

    return-void
.end method

.method protected getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 81
    sget-object p0, Lcom/miui/home/launcher/ButtonDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideIfNeed()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide uninstall drop target, isActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ButtonDropTarget;->changeToGoneState(Z)V

    :cond_0
    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mActive:Z

    return p0
.end method

.method public isDragOverState()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ButtonDropTarget;->isState(Lcom/miui/home/launcher/multiselect/TopMenuState;)Z

    move-result p0

    return p0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isNormalState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isDragOverState()Z

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

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->cancelAnnounce()V

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->showIndicateBackground(Z)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mTranslationDelta:I

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DropTargetBar;->animTargetContainer(I)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ButtonDropTarget;->changeToDragOverState(Z)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->showIndicateBackground(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DropTargetBar;->animTargetContainer(I)V

    const/4 p1, 0x1

    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->changeToNormalState(Z)V

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mActive:Z

    return-void
.end method

.method public setDropTargetBar(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-void
.end method

.method public setPaddingTop()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v0

    .line 41
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 42
    iget v1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->NOTCH_DELTA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mTranslationDelta:I

    return-void
.end method

.method public showIfNeed()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ButtonDropTarget;->changeToNormalState(Z)V

    :cond_0
    return-void
.end method
