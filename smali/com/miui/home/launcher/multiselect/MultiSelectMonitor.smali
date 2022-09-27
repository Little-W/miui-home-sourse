.class public Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;,
        Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;
    }
.end annotation


# static fields
.field private static volatile sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# instance fields
.field private mCellLayoutMessageHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

.field private mCheckedShortcutIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/DragSource;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScreenIdHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

.field private mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

.field private mEditModeState:I

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mFolderStateChangedHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

.field private mIsDefaultScreenPreviewVisible:Z

.field private mIsDragging:Z

.field private mIsMenuVisible:Z

.field private mIsWidgetsPreviewLayoutVisible:Z

.field private mLauncherBottomMenuHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

.field private mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

.field private mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCurrentScreenIdHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    .line 57
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCellLayoutMessageHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    .line 58
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mFolderStateChangedHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    .line 59
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mLauncherBottomMenuHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    .line 60
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    .line 61
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    .line 269
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unregisterEventBusHandler()V

    return-void
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    return p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->registerEventBusHandler()V

    return-void
.end method

.method private forEachHandler(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    .line 263
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mFolderStateChangedHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCellLayoutMessageHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCurrentScreenIdHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mLauncherBottomMenuHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 266
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
    .locals 2

    .line 64
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 69
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 69
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-object v0
.end method

.method private isGroupContainerEnable(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->checkedAllItemsInOneFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->canCurrentScreenMakeRom()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$registerEventBusHandler$0(Ljava/lang/Object;)V
    .locals 1

    .line 248
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$unregisterEventBusHandler$1(Ljava/lang/Object;)V
    .locals 1

    .line 256
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z
    .locals 3

    const-string v0, "Launcher.MultiSelectMonitor"

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needShowGroupContainerOrFinishContainer, mEditModeState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsWidgetsPreviewLayoutVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDefaultScreenPreviewVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMenuVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isUninstallDialogShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDragging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isLauncherMenuShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogAnimShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private registerEventBusHandler()V
    .locals 1

    .line 247
    sget-object v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$vFm-_CZKpKAk_QP7z0L2OmiJVgY;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$vFm-_CZKpKAk_QP7z0L2OmiJVgY;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->forEachHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private unregisterEventBusHandler()V
    .locals 1

    .line 255
    sget-object v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$wo3rq_nd5TUC_ctVmR71ziveJ6U;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$wo3rq_nd5TUC_ctVmR71ziveJ6U;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->forEachHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateFinishContainerState()V
    .locals 2

    .line 353
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeFinishContainerToNormalState(Z)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeFinishContainerToGoneState(Z)V

    :goto_0
    return-void
.end method

.method private updateGroupContainerState()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isGroupContainerEnable(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeGroupContainerToNormalState(Z)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeGroupContainerToGoneState(Z)V

    :goto_0
    return-void
.end method

.method private updateTopMenuContainerState()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateFinishContainerState()V

    .line 349
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState()V

    return-void
.end method


# virtual methods
.method public clearAllCheckedItems()V
    .locals 2

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCheckedDragSources()[Lcom/miui/home/launcher/DragSource;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/DragSource;

    .line 126
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/ShortcutInfo;

    .line 120
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

    const/4 v0, 0x1

    .line 366
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectCount()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public moveDragViewToFirst(Landroid/view/View;)V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    if-eqz p1, :cond_5

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragSource;

    if-nez v0, :cond_1

    return-void

    .line 141
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 149
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 150
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragSource;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public onAppsAdded()V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 391
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unregisterEventBusHandler()V

    const/4 v0, 0x0

    .line 392
    sput-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    .line 235
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method public onDragItem(Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    :cond_0
    return-void
.end method

.method public onDragMultiItems()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    .line 229
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method public onShortCutIconChecked(ZLcom/miui/home/launcher/ShortcutInfo;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 90
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_2
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 94
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    if-eqz p1, :cond_4

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState()V

    .line 106
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_5

    const/16 p1, 0xa

    .line 107
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_2

    .line 108
    :cond_5
    iget-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    if-nez p1, :cond_6

    .line 109
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    .line 111
    :cond_6
    :goto_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/common/messages/ShortcutIconCheckChangedMessage;

    invoke-direct {p2}, Lcom/miui/home/launcher/common/messages/ShortcutIconCheckChangedMessage;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 98
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "can only check icon from workspace or folder"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onShowOrHideUninstallDialog(Z)V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method public resetMultiSelectMonitor()V
    .locals 1

    const/4 v0, 0x0

    .line 396
    sput-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-void
.end method

.method public setTopMenu(Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    return-void
.end method

.method public unCheckShortcut(Ljava/lang/String;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    .line 198
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
