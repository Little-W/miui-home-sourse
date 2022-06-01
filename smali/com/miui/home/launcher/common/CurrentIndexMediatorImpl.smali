.class public Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;
.super Lcom/miui/home/launcher/common/CurrentIndexMediator;
.source "CurrentIndexMediatorImpl.java"


# instance fields
.field protected mPreScreenIndex:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;-><init>(Lcom/miui/home/launcher/Workspace;)V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    return-void
.end method

.method private announceForAccessibilityIfNeed()V
    .locals 7

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->getAccessibilityItemCount()I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0016

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 139
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 138
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getSingleCellLayoutAccessibilityCount$0([ILandroid/view/View;)V
    .locals 1

    .line 154
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/miui/home/launcher/FolderIcon;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 155
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_1
    return-void
.end method

.method static synthetic lambda$notifyCurrentScreenShowingItem$1(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/interfaces/CurrentScreenShowingListener;->onCurrentScreenShowing()V

    :cond_0
    return-void
.end method

.method private updateGadgetsLifeCycle(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected doForEachChildView(Landroid/view/ViewGroup;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getAccessibilityItemCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->getSingleCellLayoutAccessibilityCount(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllIndexesOnScreen(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    const/4 v0, 0x0

    return-object v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSingleCellLayoutAccessibilityCount(I)I
    .locals 3

    const/4 v0, 0x1

    .line 152
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 153
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    new-instance v2, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$BUMow3lrrKCrq4_xehAhUWu0W4c;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$BUMow3lrrKCrq4_xehAhUWu0W4c;-><init>([I)V

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->doForEachChildView(Landroid/view/ViewGroup;Ljava/util/function/Consumer;)V

    .line 158
    aget p1, v0, v1

    return p1
.end method

.method protected initCellLayoutLifeCycle()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 95
    iget v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isInCurrentScreen(I)Z
    .locals 1

    .line 90
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyCurrentScreenShowingItem()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$CurrentIndexMediatorImpl$IbbUjUocME_UwaaM_GU294iBTwg;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->doForEachChildView(Landroid/view/ViewGroup;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->initCellLayoutLifeCycle()V

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->notifyCurrentScreenShowingItem()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 75
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 42
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    return-void
.end method

.method protected updateCellLayoutVisibility(I)V
    .locals 2

    .line 100
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    .line 101
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    return-void
.end method

.method protected updateData()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$UokQpxLuHOSCOBu1Akv-rCBBtUY;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$UokQpxLuHOSCOBu1Akv-rCBBtUY;-><init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateGadgetsLifeCycle(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    const/4 v0, 0x3

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateCellLayoutVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->notifyCurrentScreenShowingItem()V

    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->announceForAccessibilityIfNeed()V

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 64
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;

    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->checkMissingIcon()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public updateIndex(IZ)V
    .locals 1

    .line 47
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    iput v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    .line 48
    iput p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateData()V

    :cond_0
    return-void
.end method

.method protected updateSingleCellLayoutStatus(IZI)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellLayout;->onVisible(I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellLayout;->onInvisible(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateSingleGadgetLifeCycle(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 4

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 126
    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_0

    .line 128
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentScreenIndex:I

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method
