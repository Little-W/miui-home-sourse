.class public Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;
.source "UserPresentAnimationCompatV12Fold.java"


# instance fields
.field mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPreparedNextScreenId:J

.field private mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    const-wide/16 v0, -0x1

    .line 24
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    .line 31
    new-instance p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold$1;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->prepareAnimationActual()V

    return-void
.end method

.method private clearPrepareLockAnim()V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->isPreparedAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetSearchBar()V

    .line 152
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetSeekBar()V

    .line 153
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetHotsets()V

    .line 154
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetCellLayout()V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetAnimationViewNum()V

    return-void
.end method

.method private getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    return-object p0
.end method

.method private getNextScreenIndex()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 133
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result p0

    if-nez p0, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;
    .locals 0

    .line 195
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/miui/home/launcher/common/ScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/home/launcher/common/ScreenMode;->NORMAL:Lcom/miui/home/launcher/common/ScreenMode;

    :goto_0
    return-object p0
.end method

.method private prepareAnimationActual()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->updatePivot()V

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->prepareCurrentScreen()V

    .line 61
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->prepareNextScreen()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsShowingAnimation:Z

    return-void
.end method

.method private prepareNextScreen()V
    .locals 4

    .line 91
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getNextScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 95
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareNextScreen ,mPreparedNextScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserPresentAnimationCompatV12Fold"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetCellLayout()V
    .locals 6

    .line 160
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 163
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 168
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    :cond_1
    return-void
.end method

.method private resetHotsets()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private resetSearchBar()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private resetSeekBar()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetView(Landroid/view/View;)V

    return-void
.end method

.method private shouldShowAnim()Z
    .locals 7

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    .line 83
    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    cmp-long p0, v5, v3

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 85
    :cond_1
    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    cmp-long p0, v5, v3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private shouldShowLockAnim(J)Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getCurrentAllScreenID()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showCurrentScreen()V
    .locals 7

    .line 114
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 115
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->shouldShowLockAnim(J)Z

    move-result v0

    const-string v1, "showCurrentScreen ,mPreparedScreenId = "

    const-string v4, "UserPresentAnimationCompatV12Fold"

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mShowConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 122
    :goto_0
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    :cond_1
    return-void
.end method

.method private showNextScreen()V
    .locals 6

    .line 102
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->shouldShowLockAnim(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNextScreen ,mPreparedNextScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPresentAnimationCompatV12Fold"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mShowConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 109
    :goto_0
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    :cond_1
    return-void
.end method

.method private updatePivot()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPivot:[I

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePivot, current mPivotX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPivot:[I

    aget p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserPresentAnimationCompatV12Fold"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkMissingIcon()V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->checkMissingIcon()V

    :cond_0
    return-void
.end method

.method public bridge synthetic endAnimation(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->endAnimation(Landroid/view/View;)V

    return-void
.end method

.method public isPreparedAnimation()Z
    .locals 4

    .line 237
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsShowingAnimation:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->isPreparedAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mAllAnimationViewNum:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/home/launcher/CellLayout;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 203
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 204
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p2

    if-nez p2, :cond_2

    .line 210
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 213
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 214
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;",
            "Lcom/miui/home/launcher/CellLayout;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 222
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 223
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public prepareAnimation()V
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation, mPreparedScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , mPreparedNextScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPresentAnimationCompatV12Fold"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->obtainCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    if-eq v0, v2, :cond_0

    const-string v2, "ScrenMode update , so clear prepared animation ! "

    .line 49
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->clearPrepareLockAnim()V

    .line 51
    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->waitDragLayerGlobalLayoutAndShowAnimation()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->prepareAnimationActual()V

    :goto_0
    return-void
.end method

.method public prepareCurrentScreen()V
    .locals 6

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numOfAnimatedView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mAllAnimationViewNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPresentAnimationCompatV12Fold"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const v0, 0x7fffffff

    .line 250
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mMinDelay:I

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->resetAnimationViewNum()V

    .line 257
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 258
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAnimation ,mPreparedScreenId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public resetAnimation()V
    .locals 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAnimation, mPreparedScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , mPreparedNextScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mPreparedNextScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPresentAnimationCompatV12Fold"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->clearPrepareLockAnim()V

    return-void
.end method

.method public showAnimation()V
    .locals 3

    const-string v0, "UserPresentAnimationCompatV12Fold"

    const-string v1, "showAnimation"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->shouldShowAnim()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Should not show lock animation , so clear prepared animation !"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->clearPrepareLockAnim()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mIsShowingAnimation:Z

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mAllAnimationViewNum:I

    .line 77
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->showNextScreen()V

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->showCurrentScreen()V

    return-void
.end method

.method public waitDragLayerGlobalLayoutAndShowAnimation()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;->mDragLayerViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
