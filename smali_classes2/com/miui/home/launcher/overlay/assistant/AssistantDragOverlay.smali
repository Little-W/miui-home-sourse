.class public Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;
.super Ljava/lang/Object;
.source "AssistantDragOverlay.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;,
        Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;
    }
.end annotation


# instance fields
.field private mAddingView:Landroid/view/View;

.field private mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private volatile mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mPickerDragToAssistantSupported:Z

.field private mUIExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field protected mWasOverlayAttached:Z

.field private mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

.field private mWorkSpace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWasOverlayAttached:Z

    .line 94
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 95
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 96
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    .line 97
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 98
    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 99
    new-instance p1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mUIExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 100
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 101
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_0

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->cancelDrag()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)Landroid/view/MotionEvent;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/DragLayer;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onDragComplete(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method private addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V
    .locals 9

    .line 554
    iput-wide p3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 555
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x1

    .line 556
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 557
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v1}, Lcom/miui/home/launcher/DragController;->createDrawableHolder(Landroid/graphics/drawable/Drawable;II)Landroid/view/View;

    move-result-object v0

    .line 558
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 560
    new-instance v5, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;

    const-string v3, "picker"

    invoke-direct {v5, p0, v3, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$3;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/String;Lcom/miui/home/launcher/ItemInfo;)V

    .line 573
    iput-wide p3, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 574
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v3

    new-array v4, v2, [Landroid/view/View;

    aput-object v0, v4, v1

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    return-void
.end method

.method private blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 664
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 665
    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 667
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private cancelDrag()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingFromAssistant(Z)V

    .line 461
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method public static synthetic lambda$onOverlayCall$2(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 199
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onOverlayCall$3(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 0

    .line 240
    iget-object p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onOverlayCall$4(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Landroid/os/Bundle;)V
    .locals 1

    .line 240
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getMaMlItems()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$jnMPMGbMTlzvnin_08erR5ESQdk;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$jnMPMGbMTlzvnin_08erR5ESQdk;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 241
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->deleteFiles(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)V

    return-void
.end method

.method public static synthetic lambda$onOverlayCall$5(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-string p1, "drop_result"

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "drop_result"

    const/4 v0, -0x1

    .line 275
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onOverlayCall$6(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onPickerAddWidget(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public static synthetic lambda$onOverlayCall$7(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method static synthetic lambda$onOverlayCall$8(Landroid/os/Bundle;)V
    .locals 0

    .line 299
    invoke-static {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->getMaMls(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$10(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$11(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-string v2, "AssistantDragOverlay"

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_PICKER_ADD screenId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 354
    new-instance v2, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-direct {v2}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;-><init>()V

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->start(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    .line 357
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$12(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Z)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_1

    const-string v0, "AssistantDragOverlay"

    const-string v1, "METHOD_DRAG_PREPARE"

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->setDraggingFromAssistant(Z)V

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    .line 371
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 372
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 374
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->clearForceFadeOut()V

    .line 378
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$13(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->cancelDrag()V

    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$14(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$15(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$16(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "transfer_start_activity_intent"

    .line 399
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "transfer_start_activity_widget_id"

    const/4 v2, -0x1

    .line 400
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 403
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 404
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 407
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v4, :cond_0

    .line 413
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    :cond_0
    if-lez v2, :cond_1

    if-ne v2, p1, :cond_1

    .line 420
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->setPendingStartAppPackage(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-string p1, "extra_is_clear_cache_agent"

    const/4 v2, 0x0

    .line 426
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 430
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$17(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetReplaceHandler;->replaceWidget(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$onOverlayInvoke$9(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->onDragStart(Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$onPickerAddWidget$18(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 547
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->refreshScrollBound()Z

    .line 548
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Workspace;->updateCurrentIndex(I)V

    .line 549
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    invoke-direct {p0, p3, p1, v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V

    return-void
.end method

.method static synthetic lambda$runOnMainThread$19(Ljava/util/function/Consumer;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 652
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic lambda$updateOverlayState$0(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 175
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v0, "support_picker_drop_target_switch"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "picker_drop_target_switch_support"

    .line 176
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$updateOverlayState$1(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/Boolean;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPickerDragToAssistantSupported:Z

    .line 179
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPickerDragToAssistantSupported:Z

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->updateOverlayState(Z)V

    return-void
.end method

.method private mockMoveEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;
    .locals 19

    const-string v0, "drag_event"

    move-object/from16 v1, p1

    .line 632
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 634
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    add-long v7, v1, v3

    .line 636
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v10, v1, v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float v11, v1, v2

    .line 637
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v12

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSize()F

    move-result v13

    .line 638
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v15

    .line 639
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    const/4 v9, 0x2

    .line 634
    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;
    .locals 1

    const-string v0, "drag_event"

    .line 627
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 628
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    return-object p1
.end method

.method private onDragComplete(Lcom/miui/home/launcher/DragObject;)V
    .locals 6

    .line 582
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const-string v1, "AssistantDragOverlay"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragComplete screenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->getCellChild(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    .line 586
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 587
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    if-eqz p1, :cond_1

    .line 588
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;->setAnimationRect(Landroid/graphics/Rect;)V

    :cond_1
    return-void

    .line 593
    :cond_2
    instance-of v2, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v2, :cond_3

    .line 594
    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    const v2, 0x7f0a03dd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_1
    const/4 v2, 0x2

    .line 595
    new-array v2, v2, [I

    .line 596
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 598
    aget v1, v2, v1

    int-to-float v3, v1

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    .line 600
    aget v2, v2, v4

    int-to-float v4, v2

    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScaleY()F

    move-result v0

    mul-float/2addr p1, v0

    add-float/2addr v4, p1

    float-to-int p1, v4

    .line 603
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    if-eqz v0, :cond_4

    .line 604
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;->setAnimationRect(Landroid/graphics/Rect;)V

    .line 606
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mAddingView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    return-void
.end method

.method private onDragStart(Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 473
    :cond_0
    monitor-enter p0

    .line 474
    :try_start_0
    iput-object v0, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    const-string v2, "AssistantDragOverlay"

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragStart "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {v7, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->obtainMotionEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragLayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 477
    iget-object v2, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {v7, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mockMoveEvent(Landroid/os/Bundle;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 479
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const-string v3, "preview_left"

    .line 480
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v3, "preview_top"

    .line 481
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v3, "preview_width"

    .line 482
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "preview_height"

    .line 483
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 484
    invoke-virtual {v15, v12, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 486
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 487
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 488
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 489
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 488
    invoke-virtual {v15, v2, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const-string v3, "drag_source"

    .line 491
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 492
    new-instance v16, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;

    iget-boolean v1, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPickerDragToAssistantSupported:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$2;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Ljava/lang/String;ZLcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    .line 511
    iget-object v1, v7, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v9, v15

    move-object/from16 v11, p1

    move-object v0, v14

    move v14, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move/from16 v16, v2

    invoke-virtual/range {v8 .. v16}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/graphics/drawable/Drawable;ZLcom/miui/home/launcher/ItemInfo;IIFLcom/miui/home/launcher/DragSource;I)Z

    .line 513
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 514
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const-string v1, "AssistantDragOverlay"

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragStart failure itemInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onPickerAddWidget(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 530
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 532
    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCurrentValidDropScreen(II)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 534
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V

    return-void

    .line 538
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 539
    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->isScreenHasValidArea(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->updateCurrentIndex(I)V

    .line 541
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->addWidgetToScreen(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Workspace;J)V

    return-void

    .line 545
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    .line 546
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v3, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$v-5uxnJ6CA4ad5iHHUgATx3z5dQ;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/Workspace;ILcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v2, v1, v3}, Lcom/miui/home/launcher/Launcher;->insertNewScreen(ILjava/lang/Runnable;)V

    return-void
.end method

.method private runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mUIExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$EDtHgu-F1EzBQ5fvYBCVtjEB0C4;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$EDtHgu-F1EzBQ5fvYBCVtjEB0C4;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 654
    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 656
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateOverlayState()V
    .locals 3

    .line 174
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ObhwzROmis32Y-XC4AZf6eXmL50;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ObhwzROmis32Y-XC4AZf6eXmL50;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$okcswDzhHcR5l4efnsXD0XkCY-c;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$okcswDzhHcR5l4efnsXD0XkCY-c;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCellChild(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    .line 611
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 612
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 613
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    if-ne v2, p2, :cond_0

    return-object v1

    .line 617
    :cond_0
    instance-of v3, v2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    if-eqz v3, :cond_1

    instance-of v3, p2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    if-eqz v3, :cond_1

    .line 618
    check-cast v2, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->getAppWidgetId()I

    move-result v2

    move-object v3, p2

    check-cast v3, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/widget/MIUIAppWidgetInfo;->getAppWidgetId()I

    move-result v3

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onOverlayCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    const-string p2, "drag_end_with_result"

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 195
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez p1, :cond_1

    const-string p1, "AssistantDragOverlay"

    const-string p2, "METHOD_DRAG_END_WITH_RESULT mPaItemInfo is null"

    .line 196
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ERyzESCiqgl8a70Mqd6xNzk5GXw;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ERyzESCiqgl8a70Mqd6xNzk5GXw;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 203
    :cond_1
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    invoke-direct {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    .line 204
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$1;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 224
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 p3, -0x1

    if-eqz p1, :cond_6

    .line 225
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 226
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz p1, :cond_2

    const-string p1, "drop_result"

    .line 227
    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_3

    const-string p1, "drop_result"

    .line 229
    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p1, :cond_5

    .line 234
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 235
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ltz v1, :cond_4

    const-string p3, "drop_result"

    .line 236
    iget p1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v1, "drop_result"

    .line 238
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$SSlDJarxtv_bKDHpa8NdTTMw2Jw;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$SSlDJarxtv_bKDHpa8NdTTMw2Jw;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    invoke-direct {p0, p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    goto :goto_0

    :cond_5
    const-string p1, "AssistantDragOverlay"

    const-string v1, "unknown item type"

    .line 246
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "drop_result"

    .line 247
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string p1, "AssistantDragOverlay"

    const-string v1, "widget drag added fail"

    .line 250
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "drop_result"

    .line 251
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 254
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDropTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$BlockingTask;

    return-object p2

    :cond_7
    const-string p2, "dragging_with_result"

    .line 262
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mPaItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-nez p1, :cond_8

    const-string p1, "AssistantDragOverlay"

    const-string p2, "METHOD_DRAGGING_WITH_RESULT mPaItemInfo is null"

    .line 265
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit p0

    return-object v0

    .line 268
    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$gOSQQzcnylUEzrGgFQEgk5ZyfOQ;

    invoke-direct {p1, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$gOSQQzcnylUEzrGgFQEgk5ZyfOQ;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 268
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    const-string p2, "prepare_add_widget"

    .line 283
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 284
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 286
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    .line 287
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$PUimQdej3EZ4L2Bg7-TIJcVjwm0;

    invoke-direct {p3, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$PUimQdej3EZ4L2Bg7-TIJcVjwm0;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_a
    const-string p2, "drag_end_prepare"

    .line 292
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 293
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    .line 294
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$paoBvZjZqF5tugkFMSMjOpkl-54;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$paoBvZjZqF5tugkFMSMjOpkl-54;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 295
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->blockRunOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    :cond_b
    const-string p2, "get_maml_list"

    .line 298
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 299
    sget-object p1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$TvyVrLiVL2_-pyC-_M-YTCy-b9o;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->runOnMainThread(Ljava/util/function/Consumer;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p2, "support_picker_drop_target_switch"

    .line 302
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_d

    .line 303
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "picker_drop_target_switch_support"

    .line 304
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_d
    const-string p2, "support_picker_continue_add"

    .line 308
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 309
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "picker_continue_add_support"

    .line 310
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_e
    return-object v0
.end method

.method public onOverlayInvoke(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "deliver_picker_motion_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "notify_maml_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "transfer_start_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "drag_cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "edit_mode_change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xb

    goto :goto_0

    :sswitch_5
    const-string v0, "replace_widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p2, 0xc

    goto :goto_0

    :sswitch_6
    const-string v0, "open_classic_picker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "drag_prepare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "drag_pointer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "dragging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v2

    goto :goto_0

    :sswitch_a
    const-string v0, "drag_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "drag_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v3

    goto :goto_0

    :sswitch_c
    const-string v0, "add_widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v1

    :cond_1
    :goto_0
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 453
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ydg2WBSQf5UqFv12KNCyy2NsWxs;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$Ydg2WBSQf5UqFv12KNCyy2NsWxs;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 450
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string p2, "state_open"

    invoke-virtual {p3, p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->changeMIUIWidgetEditMode(Z)V

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "picker_motion_event"

    .line 438
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    if-nez p1, :cond_2

    return-void

    .line 442
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_3

    .line 443
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->setCanDragToAssistant(Z)V

    goto :goto_1

    .line 444
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eq p2, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 445
    :cond_4
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->setCanDragToAssistant(Z)V

    .line 447
    :cond_5
    :goto_1
    sget-object p2, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;

    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p3, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->deliverTouchEvent(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 435
    :pswitch_3
    invoke-static {p3}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->upgradeMaMls(Landroid/os/Bundle;)V

    goto :goto_2

    .line 398
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$nipn5_PHB9Ttpl3HpDWLygxaE7g;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$nipn5_PHB9Ttpl3HpDWLygxaE7g;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 395
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$_jihNYuv4sRYyZET2g26pkauTZE;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$_jihNYuv4sRYyZET2g26pkauTZE;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 389
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ohNwPlgGhw7FfBUnCMZkxUvxSyQ;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$ohNwPlgGhw7FfBUnCMZkxUvxSyQ;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 386
    :pswitch_7
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$OSUTmw5hhVzZf_Rzfl7rFQ9B49M;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$OSUTmw5hhVzZf_Rzfl7rFQ9B49M;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_8
    const-string p1, "assistant_enable"

    .line 364
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 365
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p3, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$4i9_bfB8U0WlyIRjI3IpJE0DGg4;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$4i9_bfB8U0WlyIRjI3IpJE0DGg4;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Z)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :pswitch_9
    const/4 p1, 0x0

    .line 345
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWidgetAddTask:Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay$WidgetAddTask;

    .line 346
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$oumO5C37hCNDPv7gUk9NsW8Vkp0;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$oumO5C37hCNDPv7gUk9NsW8Vkp0;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 335
    :pswitch_a
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$0F67jETJPcZGAM9TfJhTKccXbOQ;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$0F67jETJPcZGAM9TfJhTKccXbOQ;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 326
    :pswitch_b
    monitor-enter p0

    .line 327
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    move-result-object p1

    .line 328
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$dL8PQOMtHyOB8vsqQt4kvlf9N6w;

    invoke-direct {v0, p0, p1, p3}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragOverlay$dL8PQOMtHyOB8vsqQt4kvlf9N6w;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;Lcom/miui/home/launcher/ItemInfo;Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f03e85e -> :sswitch_c
        -0x3f3b6269 -> :sswitch_b
        -0x3225d4b0 -> :sswitch_a
        -0x322222b1 -> :sswitch_9
        -0x4b861ce -> :sswitch_8
        0x2e6cfc -> :sswitch_7
        0x29920f70 -> :sswitch_6
        0x3141f22f -> :sswitch_5
        0x32965717 -> :sswitch_4
        0x3b7b7be5 -> :sswitch_3
        0x3db5b120 -> :sswitch_2
        0x6f6cb05f -> :sswitch_1
        0x79cd3ec8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOverlayScrollEnd(F)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->onOverlayAnimResume()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWorkSpace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->onOverlayAnimPause()V

    :goto_0
    return-void
.end method

.method public onOverlayUpdate(II)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->updateOverlayState()V

    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_0

    .line 152
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mWasOverlayAttached:Z

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onServiceStateChanged(Z)V

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->updateOverlayState()V

    return-void
.end method

.method public setDragCallback(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragOverlay;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    return-void
.end method
