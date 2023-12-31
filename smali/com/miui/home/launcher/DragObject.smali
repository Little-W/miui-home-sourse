.class public Lcom/miui/home/launcher/DragObject;
.super Ljava/lang/Object;
.source "DragObject.java"


# instance fields
.field public dragAction:I

.field public dropAction:I

.field private mAutoDraged:Z

.field private mCurrentIndex:I

.field private mDragViews:[Lcom/miui/home/launcher/DragView;

.field private mDropAnimationCounter:I

.field private mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/miui/home/launcher/DragController$DropAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDropAnnounce:Ljava/lang/String;

.field private mIsAllDropedSuccess:Z

.field private mIsDropAnimationFinished:Z

.field private mIsDroped:Z

.field private mIsIgnoreSearchLayoutTranY:Z

.field private mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

.field private mStateAnnouncer:Lcom/miui/home/launcher/DragViewStateAnnouncer;

.field private mSuccessNum:I

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public removeDragViewsAtLast:Z

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>([Lcom/miui/home/launcher/DragView;)V
    .locals 5

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->x:I

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->y:I

    .line 24
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    .line 27
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    iput-object v0, p0, Lcom/miui/home/launcher/DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragObject;->removeDragViewsAtLast:Z

    .line 201
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    .line 242
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 244
    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getOwner()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0d013d

    invoke-virtual {v2, v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/widget/NoSpaceToast;

    iput-object v2, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    .line 245
    iget-object v2, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getOwner()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    iget-object v2, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/widget/NoSpaceToast;->setVisibility(I)V

    .line 248
    array-length v2, p1

    move-object v3, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p1, v0

    .line 249
    invoke-virtual {v4, p0}, Lcom/miui/home/launcher/DragView;->setDragGroup(Lcom/miui/home/launcher/DragObject;)V

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragView;->setNextDragView(Lcom/miui/home/launcher/DragView;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    goto :goto_0

    .line 255
    :cond_1
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    .line 256
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    .line 257
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragObject;->mIsDroped:Z

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragObject;->mIsAllDropedSuccess:Z

    return-void
.end method

.method private getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mStateAnnouncer:Lcom/miui/home/launcher/DragViewStateAnnouncer;

    return-object p0
.end method


# virtual methods
.method public addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public announce(I)V
    .locals 1

    .line 331
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public announce(Ljava/lang/CharSequence;)V
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public autoDropBack()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->setIgnoreSearchLayoutTranY()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    return-void
.end method

.method public canShowShortcutMenu()Z
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 351
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->canShowShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragSource;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public cancelAnnounce()V
    .locals 1

    .line 343
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->cancel()V

    :cond_0
    return-void
.end method

.method public forEachDragView(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/DragView;",
            ">;)V"
        }
    .end annotation

    .line 364
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    if-nez p0, :cond_0

    return-void

    .line 365
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 366
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCenterPosition()[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 270
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 271
    iget v2, p0, Lcom/miui/home/launcher/DragObject;->x:I

    iget v5, p0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v2, v5

    aput v2, v1, v4

    .line 272
    iget v2, p0, Lcom/miui/home/launcher/DragObject;->y:I

    iget v4, p0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr v2, p0

    aput v2, v1, v3

    goto :goto_0

    .line 274
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->x:I

    aput v0, v1, v4

    .line 275
    iget p0, p0, Lcom/miui/home/launcher/DragObject;->y:I

    aput p0, v1, v3

    :goto_0
    return-object v1
.end method

.method public getDragInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget p0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    if-ltz p1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 160
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragInfoList()[Lcom/miui/home/launcher/ItemInfo;
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 128
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDragSource()Lcom/miui/home/launcher/DragSource;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget p0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p0

    return-object p0
.end method

.method public getDragView()Lcom/miui/home/launcher/DragView;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget p0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getDragView(I)Lcom/miui/home/launcher/DragView;
    .locals 1

    if-ltz p1, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDraggingSize()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length p0, p0

    return p0
.end method

.method public getDropAnnounce()Ljava/lang/String;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnnounce:Ljava/lang/String;

    return-object p0
.end method

.method public getOutline()Landroid/graphics/Bitmap;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget p0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getOutline()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getRemainedDraggingSize()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, v0

    iget p0, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getXFromCenter(I)I
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public getYFromCenter(I)I
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method invalidateDragView()V
    .locals 3

    .line 371
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    if-nez p0, :cond_0

    return-void

    .line 372
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 373
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAllDropedSuccess()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragObject;->mIsAllDropedSuccess:Z

    return p0
.end method

.method public isAutoDraged()Z
    .locals 0

    .line 314
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragObject;->mAutoDraged:Z

    return p0
.end method

.method public isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDroped()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragObject;->mIsDroped:Z

    return p0
.end method

.method public isFirstObject()Z
    .locals 0

    .line 167
    iget p0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIgnoreSearchLayoutTranY()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragObject;->mIsIgnoreSearchLayoutTranY:Z

    return p0
.end method

.method public isLastObject()Z
    .locals 2

    .line 171
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length p0, p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMultiDrag()Z
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public move(II)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->moveX(I)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/DragView;->moveY(I)V

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    if-eqz v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/widget/NoSpaceToast;->move(Landroid/view/View;)V

    .line 181
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object p0, p0, v1

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const-string v1, "action_icon_move"

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V

    return-void
.end method

.method public needOutline()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget p0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->needOutline()Z

    move-result p0

    return p0
.end method

.method public nextDragView(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->setDropSucceed()V

    .line 148
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    .line 150
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    .line 151
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    return p1

    :cond_1
    return v0
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V
    .locals 5

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsDroped:Z

    const/4 v1, 0x3

    .line 79
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->dropAction:I

    .line 80
    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v1, v1

    const/4 v2, 0x0

    .line 81
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    if-ge v3, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->isDropSucceeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/miui/home/launcher/DragSource;->onDropBack(Lcom/miui/home/launcher/DragObject;)V

    .line 85
    iput-boolean v2, p0, Lcom/miui/home/launcher/DragObject;->mIsAllDropedSuccess:Z

    .line 81
    :cond_0
    iget v3, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    goto :goto_0

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 89
    instance-of v4, p1, Lcom/miui/home/launcher/Workspace;

    if-nez v4, :cond_2

    instance-of v4, p1, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-eqz v4, :cond_3

    .line 90
    :cond_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    .line 92
    :cond_3
    invoke-static {v3}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 93
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    :goto_1
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    if-ge p1, v1, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->setCanceledMode()V

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->animateToTarget()Z

    .line 93
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    goto :goto_1

    .line 100
    :cond_5
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    .line 101
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    return-void
.end method

.method public onDropAnimationFinished(Lcom/miui/home/launcher/DragView;)V
    .locals 4

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsDropAnimationFinished:Z

    .line 219
    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/NoSpaceToast;->show(Z)V

    .line 221
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getOwner()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    .line 225
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->removeDragViewsAtLast:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->isCanceledMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    if-nez p1, :cond_2

    .line 227
    iget-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 228
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->remove()V

    .line 234
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_3

    .line 235
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DragController$DropAnimationListener;

    .line 236
    invoke-interface {p1}, Lcom/miui/home/launcher/DragController$DropAnimationListener;->onDropAnimationFinish()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onDropAnimationStart(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 214
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    return-void
.end method

.method public removeDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDragAnimationListener(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DragController$DropAnimationListener;",
            ">;)V"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setIgnoreSearchLayoutTranY()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsIgnoreSearchLayoutTranY:Z

    return-void
.end method

.method public setIsAutoDraged(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragObject;->mAutoDraged:Z

    return-void
.end method

.method public setOnDropAnnounce(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnnounce:Ljava/lang/String;

    return-void
.end method

.method setStateAnnouncer(Lcom/miui/home/launcher/DragViewStateAnnouncer;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mStateAnnouncer:Lcom/miui/home/launcher/DragViewStateAnnouncer;

    return-void
.end method

.method public showNoSpaceToast(Z)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->move(Landroid/view/View;)V

    .line 264
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->show(Z)V

    :cond_0
    return-void
.end method
