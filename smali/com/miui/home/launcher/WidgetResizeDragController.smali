.class public Lcom/miui/home/launcher/WidgetResizeDragController;
.super Ljava/lang/Object;
.source "WidgetResizeDragController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/TouchController;


# instance fields
.field private mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mOldPositions:[F

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mScaledUpsideScreenOutTouch:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DragLayer;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 16
    iput v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mScaledUpsideScreenOutTouch:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mResizeFrames:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 31
    iput-object p3, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget p2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mScaledUpsideScreenOutTouch:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mScaledUpsideScreenOutTouch:I

    .line 33
    iput-object p4, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 144
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppWidgetResizeFrame;

    .line 145
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getLeft()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->getTop()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    iput-object v3, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    .line 148
    iput v1, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mXDown:I

    .line 149
    iput p1, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mYDown:I

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addResizeFrame(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 2

    .line 124
    new-instance p1, Lcom/miui/home/launcher/AppWidgetResizeFrame;

    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DragLayer;)V

    .line 126
    new-instance p2, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;-><init>(II)V

    const/4 p3, 0x1

    .line 127
    iput-boolean p3, p2, Lcom/miui/home/launcher/SuperDraglayer$LayoutParams;->customPosition:Z

    .line 129
    iget-object p3, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p3, p1, p2}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object p2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 132
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppWidgetResizeFrame;

    .line 115
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->commitResize()V

    .line 116
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WidgetResizeDragController;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 78
    new-array v0, v2, [F

    .line 79
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    aput v2, v0, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    goto/16 :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSceneAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 84
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 85
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    aget v2, v2, v4

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mScaledUpsideScreenOutTouch:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    aget v2, v2, v1

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mScaledUpsideScreenOutTouch:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 88
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFreeStyleExists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 89
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isTouchStateNotInScroll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iput-object v3, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->finishCurrentGesture()V

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->showSceneScreen()V

    return v1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    aget v2, v2, v4

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mScaledUpsideScreenOutTouch:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    aget v2, v2, v1

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mScaledUpsideScreenOutTouch:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 99
    iput-object v3, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    return v1

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    if-eqz v0, :cond_4

    .line 106
    iput-object v3, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mOldPositions:[F

    .line 108
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetResizeDragController;->clearAllResizeFrames()V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/WidgetResizeDragController;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    if-eqz v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mXDown:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mYDown:I

    sub-int/2addr v2, v0

    invoke-virtual {v3, v1, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {v3}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->onTouchUp()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mCurrentResizeFrame:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return v4

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/WidgetResizeDragController;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
