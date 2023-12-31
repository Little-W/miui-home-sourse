.class public abstract Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.super Ljava/lang/Object;
.source "OverlaySwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/touch/SwipeDetector$Listener;
.implements Lcom/miui/home/launcher/util/SwipeTouchController;


# instance fields
.field protected final mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

.field protected mDisallowIntercept:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field protected mNoIntercept:Z

.field protected mWindowShift:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDisplay()Landroid/view/Display;

    move-result-object v1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 36
    :goto_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 37
    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne p2, v1, :cond_1

    .line 38
    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    goto :goto_1

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    goto :goto_1

    .line 42
    :cond_2
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    .line 44
    :goto_1
    new-instance v0, Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/home/launcher/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/touch/SwipeDetector$Listener;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    return-void
.end method

.method public static synthetic lambda$PGE3Drd_Yd5ake-zK4oapYtQq-w(Lcom/miui/home/launcher/touch/SwipeDetector;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    return-void
.end method


# virtual methods
.method protected abstract canInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract getReconnectSlop()I
.end method

.method protected abstract getSwipeDirection()I
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 72
    iput-boolean v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    return v2

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDisallowIntercept:Z

    if-eqz v0, :cond_1

    return v2

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 79
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    .line 80
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_2

    return v2

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getSwipeDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 86
    iput-boolean v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    return v2

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 92
    :cond_4
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_5

    return v2

    .line 96
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(FF)Z
    .locals 0

    .line 119
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p2, :cond_0

    .line 120
    iget p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    div-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollChange(FZ)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollInteractionEnd()V

    goto :goto_1

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDisplacement()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getReconnectSlop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 133
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;-><init>(I)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string p1, "Launcher.OverlaySwipe"

    const-string p2, "reconnect on drag end"

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/miui/home/launcher/overlay/-$$Lambda$OverlaySwipeController$PGE3Drd_Yd5ake-zK4oapYtQq-w;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/-$$Lambda$OverlaySwipeController$PGE3Drd_Yd5ake-zK4oapYtQq-w;-><init>(Lcom/miui/home/launcher/touch/SwipeDetector;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DragLayer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->cancelAppToHomeAnim()V

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p0, :cond_0

    .line 113
    invoke-interface {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollInteractionBegin()V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 58
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    .line 65
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDisallowIntercept:Z

    :cond_0
    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    return-void
.end method
