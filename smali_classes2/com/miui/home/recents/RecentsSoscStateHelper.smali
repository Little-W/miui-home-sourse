.class public Lcom/miui/home/recents/RecentsSoscStateHelper;
.super Ljava/lang/Object;
.source "RecentsSoscStateHelper.java"

# interfaces
.implements Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;
    }
.end annotation


# instance fields
.field private mIsGestureStart:Z

.field private mIsMinimized:Z

.field private mLeftOrTopBounds:Landroid/graphics/Rect;

.field private mMinimizedPosition:I

.field private mMinimizedSize:I

.field private mRecentSoscListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsVisibleBound:Landroid/graphics/Rect;

.field private mRightOrBottomBounds:Landroid/graphics/Rect;

.field private mRootBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mTouchRange:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentSoscListeners:Ljava/util/Set;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsGestureStart:Z

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    .line 39
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/GestureSoscController;->addGestureProgressListener(Lcom/miui/home/recents/GestureSoscController$GestureProgressListener;)V

    return-void
.end method

.method private isNeedAnim(II)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, p1, :cond_1

    return p0

    .line 102
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 103
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private isTaskListChanged(II)Z
    .locals 2

    const/4 p0, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    if-ne p2, p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    return v0

    :cond_3
    if-ne p1, p0, :cond_5

    if-eqz p2, :cond_4

    if-ne p2, v0, :cond_5

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private notifyRecentVisibleBoundChangedIfNeed(ZII)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iput-object v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    .line 205
    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isTaskListChanged(II)Z

    move-result p2

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/RecentsSoscStateHelper;->onRecentsVisibleBoundChanged(ZZ)V

    :cond_0
    return-void
.end method

.method private preSetMinimizedStateIfNeed(ZII)V
    .locals 1

    .line 180
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsSoscStateHelper;->preSetMinimizedState(ZII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentSoscListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPredictMinimizedPosition()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedPosition:I

    return p0
.end method

.method public getPredictRecentsVisibleBound()Landroid/graphics/Rect;
    .locals 5

    .line 136
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsMinimized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictNormalMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 142
    iget v2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedPosition:I

    if-nez v2, :cond_1

    .line 143
    iget v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    iget-object v2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    iget-object v3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    sub-int/2addr v3, v4

    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    sub-int/2addr v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const-string v0, "RecentsSoscStateHelper"

    const-string v1, "getPredictRecentsVisibleBound: in minimized, get state fail"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    return-object p0

    .line 152
    :cond_5
    iget v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    if-nez v0, :cond_6

    .line 153
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRightOrBottomBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_6
    if-ne v0, v1, :cond_7

    .line 155
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mLeftOrTopBounds:Landroid/graphics/Rect;

    return-object p0

    .line 157
    :cond_7
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPredictState()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    return p0
.end method

.method public getRecentsVisibleBound()Landroid/graphics/Rect;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isPredictHalfSplitMode()Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPredictMinimized()Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsMinimized:Z

    return p0
.end method

.method public isPredictNormalMode()Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPredictSplitMode()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onRecentsVisibleBoundChanged$0$RecentsSoscStateHelper(ZZ)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentSoscListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;

    if-eqz p1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    invoke-interface {v1, v2, p2}, Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;->onRecentsVisibleBoundChangedWithAnim(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    invoke-interface {v1, v2, p2}, Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;->onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGestureEnd(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZIIZ)V
    .locals 2

    const/4 p9, 0x0

    .line 170
    iput-boolean p9, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsGestureStart:Z

    .line 171
    iget v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    .line 172
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSplitMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/recents/RecentsSoscStateHelper;->preSetSoscState(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 175
    :cond_0
    invoke-direct {p0, p6, p7, p8}, Lcom/miui/home/recents/RecentsSoscStateHelper;->preSetMinimizedStateIfNeed(ZII)V

    .line 176
    invoke-direct {p0, p9, v0, p5}, Lcom/miui/home/recents/RecentsSoscStateHelper;->notifyRecentVisibleBoundChangedIfNeed(ZII)V

    return-void
.end method

.method public onGestureStart(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZII)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsGestureStart:Z

    .line 163
    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/recents/RecentsSoscStateHelper;->preSetSoscState(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 164
    invoke-direct {p0, p7, p8, p9}, Lcom/miui/home/recents/RecentsSoscStateHelper;->preSetMinimizedStateIfNeed(ZII)V

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p1, p6, p5}, Lcom/miui/home/recents/RecentsSoscStateHelper;->notifyRecentVisibleBoundChangedIfNeed(ZII)V

    return-void
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 0

    .line 51
    iget p6, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    .line 52
    iput-object p1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    .line 53
    iput-object p2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mLeftOrTopBounds:Landroid/graphics/Rect;

    .line 54
    iput-object p3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRightOrBottomBounds:Landroid/graphics/Rect;

    .line 55
    iput p4, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    .line 56
    iput-boolean p5, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsMinimized:Z

    .line 57
    iput p7, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedPosition:I

    .line 58
    iput p8, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPreSoScStateChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecentsSoscStateHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, p4, p6}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isNeedAnim(II)Z

    move-result p1

    invoke-direct {p0, p1, p6, p4}, Lcom/miui/home/recents/RecentsSoscStateHelper;->notifyRecentVisibleBoundChangedIfNeed(ZII)V

    return-void
.end method

.method public onRecentsVisibleBoundChanged(ZZ)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecentsVisibleBoundChanged: bound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentsVisibleBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isAnim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsSoscStateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$RecentsSoscStateHelper$CKd2__pH5i4RwtjWT1SWHuUg6tU;-><init>(Lcom/miui/home/recents/RecentsSoscStateHelper;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public preSetMinimizedState(ZII)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsMinimized:Z

    .line 89
    iput p2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedPosition:I

    .line 90
    iput p3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preSetMinimizedState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsSoscStateHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public preSetSoscState(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mTouchRange:I

    .line 80
    iput-object p2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    .line 81
    iput-object p3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mLeftOrTopBounds:Landroid/graphics/Rect;

    .line 82
    iput-object p4, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRightOrBottomBounds:Landroid/graphics/Rect;

    .line 83
    iput p5, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preSetSoScState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsSoscStateHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRecentSoscListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSoScState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 0

    .line 65
    iget-boolean p5, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsGestureStart:Z

    if-eqz p5, :cond_0

    return-void

    .line 66
    :cond_0
    iget p5, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    .line 67
    iput-object p1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    .line 68
    iput-object p2, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mLeftOrTopBounds:Landroid/graphics/Rect;

    .line 69
    iput-object p3, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRightOrBottomBounds:Landroid/graphics/Rect;

    .line 70
    iput p4, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    .line 71
    iput-boolean p7, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsMinimized:Z

    .line 72
    iput p8, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedPosition:I

    .line 73
    iput p9, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSoScState: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecentsSoscStateHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p4, p5}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isNeedAnim(II)Z

    move-result p1

    invoke-direct {p0, p1, p5, p4}, Lcom/miui/home/recents/RecentsSoscStateHelper;->notifyRecentVisibleBoundChangedIfNeed(ZII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsSoscStateHelper{, mRootBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRootBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLeftOrTopBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mLeftOrTopBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRightOrBottomBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mRightOrBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mTouchRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMinimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mIsMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMinimizedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinimizedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/RecentsSoscStateHelper;->mMinimizedSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
