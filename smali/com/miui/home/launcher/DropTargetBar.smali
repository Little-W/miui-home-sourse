.class public Lcom/miui/home/launcher/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "DropTargetBar.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;,
        Lcom/miui/home/launcher/DropTargetBar$DefaultScreenPreviewVisibilityHandler;,
        Lcom/miui/home/launcher/DropTargetBar$WidgetsPreviewHandler;,
        Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;
    }
.end annotation


# instance fields
.field private lastDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

.field private mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/DropTargetBar$DefaultScreenPreviewVisibilityHandler;

.field private mDropTargetBarConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

.field private mDropTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ButtonDropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mEditModeState:I

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mIndicateBgAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatePanelBgHeight:I

.field private mIsDefaultScreenPreviewVisible:Z

.field private mIsDragging:Z

.field private mIsMenuVisible:Z

.field private mIsWidgetsPreviewVisible:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLauncherBottomMenuHandler:Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;

.field private mShortcutIconCheckChangedHandler:Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;

.field private mTargetContainer:Landroid/view/View;

.field private mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

.field private mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

.field private mWidgetsPreviewHandler:Lcom/miui/home/launcher/DropTargetBar$WidgetsPreviewHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargets:Ljava/util/List;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDragging:Z

    .line 50
    new-instance p2, Lcom/miui/home/launcher/DropTargetBar$WidgetsPreviewHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/miui/home/launcher/DropTargetBar$WidgetsPreviewHandler;-><init>(Lcom/miui/home/launcher/DropTargetBar;Lcom/miui/home/launcher/DropTargetBar$1;)V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/DropTargetBar$WidgetsPreviewHandler;

    .line 51
    new-instance p2, Lcom/miui/home/launcher/DropTargetBar$DefaultScreenPreviewVisibilityHandler;

    invoke-direct {p2, p0, v0}, Lcom/miui/home/launcher/DropTargetBar$DefaultScreenPreviewVisibilityHandler;-><init>(Lcom/miui/home/launcher/DropTargetBar;Lcom/miui/home/launcher/DropTargetBar$1;)V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/DropTargetBar$DefaultScreenPreviewVisibilityHandler;

    .line 52
    new-instance p2, Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;

    invoke-direct {p2, p0, v0}, Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;-><init>(Lcom/miui/home/launcher/DropTargetBar;Lcom/miui/home/launcher/DropTargetBar$1;)V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncherBottomMenuHandler:Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;

    .line 53
    new-instance p2, Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;

    invoke-direct {p2, p0, v0}, Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;-><init>(Lcom/miui/home/launcher/DropTargetBar;Lcom/miui/home/launcher/DropTargetBar$1;)V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mShortcutIconCheckChangedHandler:Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;

    .line 57
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicateBgAnimator:Landroid/animation/ValueAnimator;

    .line 128
    new-instance p2, Lcom/miui/home/launcher/DropTargetBar$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/DropTargetBar$2;-><init>(Lcom/miui/home/launcher/DropTargetBar;)V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    .line 284
    new-instance p2, Lcom/miui/home/launcher/DropTargetBar$3;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/DropTargetBar$3;-><init>(Lcom/miui/home/launcher/DropTargetBar;)V

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargetBarConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 61
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicatePanelBgHeight:I

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTargetActive()V

    return-void
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/DropTargetBar;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDefaultScreenPreviewVisible:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/miui/home/launcher/DropTargetBar;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/DropTargetBar;)Lcom/miui/home/launcher/UninstallDropTarget;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->showDropTargets()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/DropTargetBar;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/DropTargetBar;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/DropTargetBar;)Lcom/miui/home/launcher/UninstallDialogWrapper;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/DropTargetBar;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDragging:Z

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/DropTargetBar;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTarget()V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/DropTargetBar;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mEditModeState:I

    return p1
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/DropTargetBar;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsWidgetsPreviewVisible:Z

    return p1
.end method

.method private addDropTarget(Lcom/miui/home/launcher/ButtonDropTarget;)V
    .locals 1

    .line 95
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ButtonDropTarget;->setDropTargetBar(Lcom/miui/home/launcher/DropTargetBar;)V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isUninstallDropTargetActiveWhenNotDragging()Z
    .locals 4

    .line 162
    iget v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mEditModeState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsWidgetsPreviewVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDefaultScreenPreviewVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsMenuVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DropTargetBar"

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update uninstall active when NO drag, active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " (edit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/launcher/DropTargetBar;->mEditModeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isUninstallDialogShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWidgetPreviewShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsWidgetsPreviewVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDefaultScreenPreviewShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDefaultScreenPreviewVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isMenuVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsMenuVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private searchDropTarget()V
    .locals 1

    const v0, 0x7f0a02d1

    .line 90
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/UninstallDropTarget;

    iput-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DropTargetBar;->addDropTarget(Lcom/miui/home/launcher/ButtonDropTarget;)V

    return-void
.end method

.method private showDropTargets()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ButtonDropTarget;

    .line 313
    invoke-virtual {v1}, Lcom/miui/home/launcher/ButtonDropTarget;->showIfNeed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateUninstallDropTarget()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTargetMode()V

    .line 230
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTargetActive()V

    return-void
.end method

.method private updateUninstallDropTargetActive()V
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTarget;->isContainUninstallOrDeleteItem()Z

    move-result v0

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDropTargetActiveWhenNotDragging()Z

    move-result v0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->setActive(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateDropTargetBar()V

    return-void
.end method

.method private updateUninstallDropTargetMode()V
    .locals 8

    .line 190
    iget-boolean v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragInfoList()[Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 193
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v1, :cond_4

    aget-object v6, v0, v3

    if-nez v6, :cond_1

    goto :goto_2

    .line 195
    :cond_1
    iget-object v7, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v6, v7}, Lcom/miui/home/launcher/uninstall/UninstallController;->isUninstallValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    goto :goto_3

    :cond_2
    if-nez v4, :cond_3

    .line 199
    iget-object v7, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v6, v7}, Lcom/miui/home/launcher/uninstall/UninstallController;->isDeleteValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_5

    .line 206
    sget-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 207
    iput-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->lastDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    .line 209
    sget-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->DELETE:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 210
    iput-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->lastDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    goto :goto_4

    .line 211
    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->lastDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    goto :goto_4

    .line 214
    :cond_7
    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->lastDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 216
    :goto_4
    iget-object v3, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    if-nez v4, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    move v2, v5

    :cond_9
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/UninstallDropTarget;->setIsContainUninstallOrDeleteItem(Z)V

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->setMode(Lcom/miui/home/launcher/UninstallDropTargetMode;)V

    return-void
.end method


# virtual methods
.method animTargetContainer(I)V
    .locals 3

    .line 346
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getTargetContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getTargetContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/ButtonDropTarget;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p1, p1

    .line 349
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargetBarConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    return-object v0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 275
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mShortcutIconCheckChangedHandler:Lcom/miui/home/launcher/DropTargetBar$ShortcutIconCheckChangedHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/DropTargetBar$WidgetsPreviewHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/DropTargetBar$DefaultScreenPreviewVisibilityHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncherBottomMenuHandler:Lcom/miui/home/launcher/DropTargetBar$LauncherBottomMenuHandler;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContainer()Landroid/view/View;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mTargetContainer:Landroid/view/View;

    return-object v0
.end method

.method public getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    return-object v0
.end method

.method public getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    return-object v0
.end method

.method public getUninstallDropTarget()Lcom/miui/home/launcher/ButtonDropTarget;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    return-object v0
.end method

.method public isUninstallAnimShowing()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->isUninstallAnimShowing()Z

    move-result v0

    return v0
.end method

.method public isUninstallDialogShowing()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->isUninstallDialogShowing()Z

    move-result v0

    return v0
.end method

.method public isUninstallMode()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTarget;->isUninstallMode()Z

    move-result v0

    return v0
.end method

.method public onCancelUninstall()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->onCancelUninstall()Z

    move-result v0

    return v0
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDragging:Z

    .line 236
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInDisableEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTargetActive()V

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTarget()V

    :goto_0
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTarget()V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIsDragging:Z

    .line 182
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mEditModeState:I

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->updateUninstallDropTarget()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 68
    new-instance v0, Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;-><init>(Lcom/miui/home/launcher/DropTargetBar;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicateBgAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicateBgAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/DropTargetBar$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/DropTargetBar$1;-><init>(Lcom/miui/home/launcher/DropTargetBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const v0, 0x7f0a0291

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mTargetContainer:Landroid/view/View;

    .line 79
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->searchDropTarget()V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargetBarConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDropTarget;->setPaddingTop()V

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DropTargetBar;->onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ButtonDropTarget;

    .line 269
    invoke-virtual {v1}, Lcom/miui/home/launcher/ButtonDropTarget;->onWallpaperColorChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setup(Lcom/miui/home/launcher/DragController;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ButtonDropTarget;

    .line 101
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 104
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    return-void
.end method

.method showIndicateBackground(Z)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScreen()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicateBgAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    aput v0, v2, v3

    iget v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicatePanelBgHeight:I

    aput v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 257
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicateBgAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDialogWrapper:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->isUninstallDialogShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicateBgAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v2, [I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    aput v0, v2, v3

    aput v3, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 261
    iget-object p1, p0, Lcom/miui/home/launcher/DropTargetBar;->mIndicateBgAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDropTargetBar()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mUninstallDropTarget:Lcom/miui/home/launcher/UninstallDropTarget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTarget;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargetBarConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->isHoldLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/miui/home/launcher/DropTargetBar;->showDropTargets()V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargetBarConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->obtainLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/DropTargetBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DropTargetBar;->mDropTargetBarConflictsListener:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->releaseLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    :goto_0
    return-void
.end method
