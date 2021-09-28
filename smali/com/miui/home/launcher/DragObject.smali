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

.field private mDropAnimationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
    .locals 6

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->x:I

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->y:I

    .line 25
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    .line 28
    iput v0, p0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Lcom/miui/home/launcher/DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 200
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragObject;->removeDragViewsAtLast:Z

    .line 202
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    .line 243
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragObject;->mIsDropAnimationFinished:Z

    .line 244
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    .line 245
    new-instance v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 246
    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getOwner()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/DragObject$1;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/DragObject$1;-><init>(Lcom/miui/home/launcher/DragObject;)V

    const v5, 0x7f0d00c9

    invoke-virtual {v2, v5, v3, v4}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 257
    array-length v2, p1

    move-object v3, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, p1, v0

    .line 258
    invoke-virtual {v4, p0}, Lcom/miui/home/launcher/DragView;->setDragGroup(Lcom/miui/home/launcher/DragObject;)V

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/DragView;->setNextDragView(Lcom/miui/home/launcher/DragView;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    goto :goto_0

    .line 264
    :cond_1
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    .line 265
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    .line 266
    iput-boolean v1, p0, Lcom/miui/home/launcher/DragObject;->mIsDroped:Z

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragObject;->mIsAllDropedSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/miui/home/launcher/DragObject;->mIsDropAnimationFinished:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/widget/NoSpaceToast;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/widget/NoSpaceToast;)Lcom/miui/home/launcher/widget/NoSpaceToast;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragObject;)[Lcom/miui/home/launcher/DragView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    return-object p0
.end method

.method private getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mStateAnnouncer:Lcom/miui/home/launcher/DragViewStateAnnouncer;

    return-object v0
.end method


# virtual methods
.method public announce(I)V
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public announce(Ljava/lang/CharSequence;)V
    .locals 1

    .line 333
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public autoDropBack()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->setIgnoreSearchLayoutTranY()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    return-void
.end method

.method public canShowShortcutMenu()Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 347
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->canShowShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public cancelAnnounce()V
    .locals 1

    .line 339
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/miui/home/launcher/DragObject;->getStateAnnouncer()Lcom/miui/home/launcher/DragViewStateAnnouncer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragViewStateAnnouncer;->cancel()V

    :cond_0
    return-void
.end method

.method public forEachDragView(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/DragView;",
            ">;)V"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 361
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCenterPosition()[I
    .locals 6

    const/4 v0, 0x2

    .line 278
    new-array v1, v0, [I

    .line 279
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 280
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

    .line 281
    iget v2, p0, Lcom/miui/home/launcher/DragObject;->y:I

    iget v4, p0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v2, v4

    aput v2, v1, v3

    goto :goto_0

    .line 283
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->x:I

    aput v0, v1, v4

    .line 284
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->y:I

    aput v0, v1, v3

    :goto_0
    return-object v1
.end method

.method public getDragInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;
    .locals 2

    if-ltz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 161
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDragInfoList()[Lcom/miui/home/launcher/ItemInfo;
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/home/launcher/ItemInfo;

    const/4 v1, 0x0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 133
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
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    return-object v0
.end method

.method public getDragView()Lcom/miui/home/launcher/DragView;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDragView(I)Lcom/miui/home/launcher/DragView;
    .locals 1

    if-ltz p1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDraggingSize()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, v0

    return v0
.end method

.method public getDropAnnounce()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDropAnnounce:Ljava/lang/String;

    return-object v0
.end method

.method public getOutline()Landroid/graphics/Bitmap;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRemainedDraggingSize()I
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, v0

    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getXFromCenter(I)I
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->xOffset:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    return p1

    :cond_0
    return p1
.end method

.method public getYFromCenter(I)I
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->yOffset:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    return p1

    :cond_0
    return p1
.end method

.method invalidateDragView()V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 368
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAllDropedSuccess()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsAllDropedSuccess:Z

    return v0
.end method

.method public isAutoDraged()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mAutoDraged:Z

    return v0
.end method

.method public isDragingOneObjectWhichOccupiedCellMoreThan1X1()Z
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isOccupiedCellMoreThan1x1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDroped()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsDroped:Z

    return v0
.end method

.method public isFirstObject()Z
    .locals 1

    .line 168
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIgnoreSearchLayoutTranY()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsIgnoreSearchLayoutTranY:Z

    return v0
.end method

.method public isLastObject()Z
    .locals 3

    .line 172
    iget v0, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isMultiDrag()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public move(II)V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->moveX(I)V

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/DragView;->moveY(I)V

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    if-eqz v0, :cond_0

    .line 179
    iget-object v2, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/widget/NoSpaceToast;->move(Landroid/view/View;)V

    .line 182
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v2, "action_icon_move"

    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v1, v3, v1

    .line 183
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;II)V

    return-void
.end method

.method public nextDragView(Z)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->setDropSucceed()V

    .line 149
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    .line 151
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    .line 152
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    return p1

    :cond_1
    return v0
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/DragObject;->onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Z)V
    .locals 5

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsDroped:Z

    const/4 v1, 0x3

    .line 80
    iput v1, p0, Lcom/miui/home/launcher/DragObject;->dropAction:I

    .line 81
    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v1, v1

    const/4 v2, 0x0

    .line 82
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    if-ge v3, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->isDropSucceeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/miui/home/launcher/DragSource;->onDropBack(Lcom/miui/home/launcher/DragObject;)V

    .line 86
    iput-boolean v2, p0, Lcom/miui/home/launcher/DragObject;->mIsAllDropedSuccess:Z

    .line 82
    :cond_0
    iget v3, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    goto :goto_0

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_3

    .line 91
    instance-of v4, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz v4, :cond_2

    .line 92
    check-cast p1, Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    goto :goto_1

    .line 93
    :cond_2
    instance-of v4, p1, Lcom/miui/home/launcher/HotSeats;

    if-eqz v4, :cond_3

    .line 94
    check-cast p1, Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p1}, Lcom/miui/home/launcher/HotSeats;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    .line 97
    :cond_3
    :goto_1
    invoke-static {v3}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 98
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    :goto_2
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    if-ge p1, v1, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 101
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->setCanceledMode()V

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->animateToTarget()Z

    .line 98
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    goto :goto_2

    .line 105
    :cond_5
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mSuccessNum:I

    .line 106
    iput v2, p0, Lcom/miui/home/launcher/DragObject;->mCurrentIndex:I

    return-void
.end method

.method public onDropAnimationFinished(Lcom/miui/home/launcher/DragView;)V
    .locals 4

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsDropAnimationFinished:Z

    .line 220
    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/NoSpaceToast;->show(Z)V

    .line 222
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getOwner()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    .line 226
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->removeDragViewsAtLast:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->isCanceledMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    if-nez p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 229
    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->remove()V

    .line 235
    :cond_2
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragController$DropAnimationListener;

    .line 237
    invoke-interface {v0}, Lcom/miui/home/launcher/DragController$DropAnimationListener;->onDropAnimationFinish()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onDropAnimationStart(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 215
    iget p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationCounter:I

    return-void
.end method

.method public setDragAnimationListener(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DragController$DropAnimationListener;",
            ">;)V"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnimationListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public setIgnoreSearchLayoutTranY()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/miui/home/launcher/DragObject;->mIsIgnoreSearchLayoutTranY:Z

    return-void
.end method

.method public setIsAutoDraged(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/miui/home/launcher/DragObject;->mAutoDraged:Z

    return-void
.end method

.method public setOnDropAnnounce(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mDropAnnounce:Ljava/lang/String;

    return-void
.end method

.method setStateAnnouncer(Lcom/miui/home/launcher/DragViewStateAnnouncer;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject;->mStateAnnouncer:Lcom/miui/home/launcher/DragViewStateAnnouncer;

    return-void
.end method

.method public showNoSpaceToast(Z)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/miui/home/launcher/DragObject;->mDragViews:[Lcom/miui/home/launcher/DragView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->move(Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/DragObject;->mNoSpaceToast:Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/NoSpaceToast;->show(Z)V

    :cond_0
    return-void
.end method
