.class public Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;
.super Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;
.source "CurrentIndexMediatorFoldImpl.java"


# instance fields
.field private final mCurrenRangeID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrenRangeIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;-><init>(Lcom/miui/home/launcher/Workspace;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    return-void
.end method

.method private getCurrentScreenOrder(I)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private getPastScreenCount(II)I
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentScreenOrder(I)I

    move-result p0

    .line 136
    div-int p1, p0, p2

    .line 137
    rem-int/2addr p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr p1, p0

    return p1
.end method

.method static synthetic lambda$notifyCurrentScreenShowingItem$1(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;->onCurrentScreenShowing()V

    :cond_0
    return-void
.end method

.method private updateCurrentCellLayoutStatus(Z)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0, v1, p1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateSingleCellLayoutStatus(IZI)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getAccessibilityItemCount()I
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 112
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getSingleCellLayoutAccessibilityCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getAllIndexesOnScreen(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v1

    .line 144
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getPastScreenCount(II)I

    move-result p1

    const/4 v1, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/2addr v2, v1

    .line 147
    iget-object v3, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCurrentAllScreenID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeScreenID(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAllScreenIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRangeIndex(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, p1

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeIndex:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentRangeScreenID(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$qczZMp8fYJ6VlMUp1lZyFTMQi-A;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$qczZMp8fYJ6VlMUp1lZyFTMQi-A;-><init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 89
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrenRangeID:Ljava/util/List;

    return-object p0
.end method

.method public isInCurrentScreen(I)Z
    .locals 1

    .line 83
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getVisibleRange()I

    move-result p0

    add-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$getCurrentRangeScreenID$0$CurrentIndexMediatorFoldImpl(Ljava/lang/Integer;)Ljava/lang/Long;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide p0

    .line 88
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public notifyCurrentScreenShowingItem()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenIndex()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorFoldImpl$MK8k7q76ceR3R2UCV5ZGpVlDZ7M;

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->doForEachChildView(Landroid/view/ViewGroup;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateCurrentCellLayoutStatus(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateCurrentCellLayoutStatus(Z)V

    return-void
.end method

.method protected updateCellLayoutVisibility(I)V
    .locals 4

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mPreScreenIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mCurrentScreenIndex:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeIndex(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0, v2, v3, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateSingleCellLayoutStatus(IZI)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 50
    invoke-virtual {p0, v1, v2, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->updateSingleCellLayoutStatus(IZI)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateIndex(IZ)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateIndex(IZ)V

    return-void
.end method

.method protected updateSingleGadgetLifeCycle(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 4

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object v1

    iget-wide v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    return-void

    .line 100
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->mPreScreenIndex:I

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->getCurrentRangeScreenID(I)Ljava/util/List;

    move-result-object p0

    iget-wide v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    :cond_1
    return-void
.end method
