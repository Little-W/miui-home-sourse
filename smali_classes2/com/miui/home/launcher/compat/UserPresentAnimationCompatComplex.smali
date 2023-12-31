.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
.source "UserPresentAnimationCompatComplex.java"


# instance fields
.field protected mAllAnimationViewNum:I

.field protected mIsShowingAnimation:Z

.field protected final mPrepareConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreparedScreenId:J

.field protected final mResetConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final mShowConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    .line 111
    new-instance p1, Lcom/miui/home/launcher/compat/-$$Lambda$1IjkbeWbkR66ZFEqTyymtiDZ9FA;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/-$$Lambda$1IjkbeWbkR66ZFEqTyymtiDZ9FA;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPrepareConsumer:Ljava/util/function/Consumer;

    .line 113
    new-instance p1, Lcom/miui/home/launcher/compat/-$$Lambda$JulaMBTdELcgm--ivXAD0lzKrn4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/-$$Lambda$JulaMBTdELcgm--ivXAD0lzKrn4;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mShowConsumer:Ljava/util/function/Consumer;

    .line 115
    new-instance p1, Lcom/miui/home/launcher/compat/-$$Lambda$LHLCr5798S0ioKJC76RTu4nsKt8;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/compat/-$$Lambda$LHLCr5798S0ioKJC76RTu4nsKt8;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public checkMissingIcon()V
    .locals 3

    const-string v0, "Launcher.UserPresentAnimation"

    const-string v1, "checkMissingIcon"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewNum()V

    return-void
.end method

.method protected ignoreTranslation(Landroid/view/View;)Z
    .locals 0

    .line 122
    instance-of p0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    return p0
.end method

.method public isPreparedAnimation()Z
    .locals 4

    .line 43
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingAnimation()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    return p0
.end method

.method protected operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
    .locals 3
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

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 95
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 97
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->getUserPresentAnimationChildList()Ljava/util/List;

    move-result-object p2

    .line 100
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 101
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 104
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 106
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-nez p2, :cond_4

    .line 107
    iget-object p0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public prepareAnimation()V
    .locals 6

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numOfAnimatedView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
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

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 36
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAnimation ,mPreparedScreenId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method abstract prepareUserPresentAnimation(Landroid/view/View;)V
.end method

.method public resetAnimation()V
    .locals 6

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 73
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->resetAnimationViewNum()V

    :cond_0
    return-void
.end method

.method protected resetAnimationViewNum()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    .line 148
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    return-void
.end method

.method public resetView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_4

    const v0, 0x7f0a03cc

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->ignoreTranslation(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_2

    .line 135
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_3

    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 140
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_4

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    return-void
.end method

.method public showAnimation()V
    .locals 8

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " numOfAnimatedView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.UserPresentAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mIsShowingAnimation:Z

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mAllAnimationViewNum:I

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mShowConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mResetConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 58
    :goto_0
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->mPreparedScreenId:J

    :cond_1
    return-void
.end method

.method abstract showUserPresentAnimation(Landroid/view/View;)V
.end method
