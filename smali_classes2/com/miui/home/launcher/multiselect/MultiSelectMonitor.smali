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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    .line 57
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCurrentScreenIdHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CurrentScreenIdHandler;

    .line 58
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCellLayoutMessageHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$CellLayoutMessageHandler;

    .line 59
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mFolderStateChangedHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$FolderStateChangedHandler;

    .line 60
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mLauncherBottomMenuHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;

    .line 61
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mDefaultScreenPreviewVisibilityHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$DefaultScreenPreviewVisibilityHandler;

    .line 62
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    .line 270
    new-instance v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$4;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unregisterEventBusHandler()V

    return-void
.end method

.method static synthetic access$1102(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    return p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 45
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

    new-array v0, v0, [Ljava/lang/Object;

    .line 264
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

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mWidgetsPreviewHandler:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$WidgetsPreviewHandler;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 267
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
    .locals 2

    .line 65
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-object v0
.end method

.method private isGroupContainerEnable(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 329
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->checkedAllItemsInOneFolder()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->canScreenMakeRom()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$registerEventBusHandler$0(Ljava/lang/Object;)V
    .locals 1

    .line 249
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$unregisterEventBusHandler$1(Ljava/lang/Object;)V
    .locals 1

    .line 257
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needShowGroupContainerOrFinishContainer, mEditModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWidgetsPreviewLayoutVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDefaultScreenPreviewVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDefaultScreenPreviewVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMenuVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsMenuVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUninstallDialogShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDragging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.MultiSelectMonitor"

    .line 333
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
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

    .line 342
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isLauncherMenuShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogAnimShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerEventBusHandler()V
    .locals 1

    .line 248
    sget-object v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$vFm-_CZKpKAk_QP7z0L2OmiJVgY;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$vFm-_CZKpKAk_QP7z0L2OmiJVgY;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->forEachHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private unregisterEventBusHandler()V
    .locals 1

    .line 256
    sget-object v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$wo3rq_nd5TUC_ctVmR71ziveJ6U;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$MultiSelectMonitor$wo3rq_nd5TUC_ctVmR71ziveJ6U;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->forEachHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateFinishContainerState()V
    .locals 1

    .line 354
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeFinishContainerToNormalState(Z)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeFinishContainerToGoneState(Z)V

    :goto_0
    return-void
.end method

.method private updateGroupContainerState()V
    .locals 2

    .line 314
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->needShowGroupContainerOrFinishContainer(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isGroupContainerEnable(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeGroupContainerToNormalState(Z)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsWidgetsPreviewLayoutVisible:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->changeGroupContainerToGoneState(Z)V

    :goto_0
    return-void
.end method

.method private updateTopMenuContainerState()V
    .locals 0

    .line 349
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateFinishContainerState()V

    .line 350
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState()V

    return-void
.end method


# virtual methods
.method public clearAllCheckedItems()V
    .locals 2

    .line 184
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

    .line 190
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCheckedDragSources()[Lcom/miui/home/launcher/DragSource;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/DragSource;

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/ShortcutInfo;

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 367
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSelectCount()I
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public moveDragViewToFirst(Landroid/view/View;)V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragSource;

    if-nez v0, :cond_1

    return-void

    .line 142
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 144
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

    .line 145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    move-object v1, v3

    goto :goto_0

    .line 150
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 151
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
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
    :goto_2
    return-void
.end method

.method public onAppsAdded()V
    .locals 0

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 392
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unregisterEventBusHandler()V

    const/4 p0, 0x0

    .line 393
    sput-object p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    .line 236
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method public onDragItem(Landroid/view/View;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    :cond_0
    return-void
.end method

.method public onDragMultiItems()V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems()V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    .line 230
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method public onShortCutIconChecked(ZLcom/miui/home/launcher/ShortcutInfo;)V
    .locals 6

    if-eqz p2, :cond_8

    .line 84
    iget-wide v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_3

    .line 87
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 91
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 92
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_2
    iget-wide v2, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    if-eqz p1, :cond_4

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateGroupContainerState()V

    .line 107
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_5

    const/16 p0, 0xa

    .line 108
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_2

    .line 109
    :cond_5
    iget-boolean p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mIsDragging:Z

    if-nez p0, :cond_6

    .line 110
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    .line 112
    :cond_6
    :goto_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/ShortcutIconCheckChangedMessage;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/messages/ShortcutIconCheckChangedMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "can only check icon from workspace or folder"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public onShowOrHideUninstallDialog(Z)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->updateTopMenuContainerState()V

    return-void
.end method

.method public resetMultiSelectMonitor()V
    .locals 0

    const/4 p0, 0x0

    .line 397
    sput-object p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->sMultiSelectMonitor:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    return-void
.end method

.method public setTopMenu(Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    return-void
.end method

.method public unCheckShortcut(Ljava/lang/String;)V
    .locals 2

    .line 194
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

    .line 199
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    .line 211
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->mCheckedShortcutIcons:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
