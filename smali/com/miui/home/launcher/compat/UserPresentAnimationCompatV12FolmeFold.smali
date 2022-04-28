.class public Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;
.source "UserPresentAnimationCompatV12FolmeFold.java"


# instance fields
.field private final STATE_END:Lmiuix/animation/controller/AnimState;

.field private final alphaStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field private final config:Lmiuix/animation/base/AnimConfig;

.field private isPrepareOpenFoldAnim:Z

.field private mIsNotCheckMissingIcon:Z

.field private mIsScreenSizeChange:Z

.field private mIsUpdateCurrentIndex:Z

.field private mPreparedNextScreenId:J

.field private mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;

.field private final showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 45
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v0, "openFold"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 46
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 47
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 48
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->STATE_END:Lmiuix/animation/controller/AnimState;

    .line 52
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-direct {p1, v2, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 53
    new-instance p1, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-direct {p1, v2, v0}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->alphaStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 55
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->alphaStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 v2, 0x0

    new-array v3, v2, [F

    .line 56
    invoke-virtual {p1, v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v3, v2, [F

    .line 57
    invoke-virtual {p1, v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v3, v2, [F

    .line 58
    invoke-virtual {p1, v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v3, v2, [F

    .line 59
    invoke-virtual {p1, v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->showStyle:Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v3, v2, [F

    .line 60
    invoke-virtual {p1, v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->config:Lmiuix/animation/base/AnimConfig;

    .line 64
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsScreenSizeChange:Z

    .line 65
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsUpdateCurrentIndex:Z

    .line 66
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsNotCheckMissingIcon:Z

    const-wide/16 v0, -0x1

    .line 67
    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    .line 68
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->isPrepareOpenFoldAnim:Z

    .line 72
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private clearPrepareAnim()V
    .locals 6

    .line 209
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 211
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    .line 213
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedScreenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->operateAllPresentAnimationRelatedViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 215
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedScreenId:J

    :cond_1
    return-void
.end method

.method private getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;
    .locals 1

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/FoldScreenMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->NORMAL:Lcom/miui/home/launcher/common/FoldScreenMode;

    :goto_0
    return-object v0
.end method

.method private getNextScreenIndex()I
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->canBeDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->isChildrenLaidOut()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLockScreenFromLargeScreen()Z
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_after_fold_screen"

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private prepareOpenFoldAnim()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->isLockScreenFromLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/common/FoldScreenMode;->NORMAL:Lcom/miui/home/launcher/common/FoldScreenMode;

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->isPrepareOpenFoldAnim:Z

    .line 118
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->setScaleX(F)V

    .line 119
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->setScaleY(F)V

    .line 120
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->setAlpha(F)V

    return v0

    :cond_1
    return v1
.end method

.method private resetHotsets()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getUserPresentAnimationChildList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f0a02c8

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lmiuix/animation/IStateStyle;

    if-eqz v2, :cond_0

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/controller/FolmeState;

    .line 189
    invoke-virtual {v2}, Lmiuix/animation/controller/FolmeState;->clean()V

    .line 191
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->cleanView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetSearchBar()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/common/FoldScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/FoldScreenMode;

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->resetView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private showOpenFoldAnim()Z
    .locals 6

    .line 148
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->isPrepareOpenFoldAnim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iput-boolean v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->isPrepareOpenFoldAnim:Z

    const/4 v0, 0x1

    .line 150
    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->STATE_END:Lmiuix/animation/controller/AnimState;

    new-array v4, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object v5, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->config:Lmiuix/animation/base/AnimConfig;

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return v0

    :cond_0
    return v1
.end method

.method private updateAnimMode()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->calibrateFoldCurrentScreenIndex(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsUpdateCurrentIndex:Z

    .line 138
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsUpdateCurrentIndex:Z

    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsNotCheckMissingIcon:Z

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->updateScalePivot()V

    .line 140
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->clearPrepareAnim()V

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->resetSearchBar()V

    .line 142
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->resetHotsets()V

    .line 143
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsScreenSizeChange:Z

    return-void
.end method

.method private updateScalePivot()V
    .locals 5

    .line 251
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsUpdateCurrentIndex:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 252
    new-array v0, v3, [I

    aput v2, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x3

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPivot:[I

    goto :goto_0

    .line 254
    :cond_0
    new-array v0, v3, [I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v4, v3

    aput v4, v0, v2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x3

    aput v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPivot:[I

    :goto_0
    return-void
.end method


# virtual methods
.method protected addFolmeAnimListener(Lmiuix/animation/IStateStyle;Landroid/view/View;)V
    .locals 1

    .line 221
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold$1;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;Landroid/view/View;)V

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public checkMissingIcon()V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsNotCheckMissingIcon:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsNotCheckMissingIcon:Z

    return-void

    .line 279
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->checkMissingIcon()V

    return-void
.end method

.method public cleanView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->ignoreTranslation(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 241
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 244
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 245
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    return-void
.end method

.method public bridge synthetic endAnimation(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->endAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V
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

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 287
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 288
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public prepareAnimation()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->updateAnimMode()V

    .line 79
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCurrentScreenMode()Lcom/miui/home/launcher/common/FoldScreenMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mScreenMode:Lcom/miui/home/launcher/common/FoldScreenMode;

    .line 80
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->prepareOpenFoldAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsNotCheckMissingIcon:Z

    return-void

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsUpdateCurrentIndex:Z

    if-eqz v0, :cond_1

    .line 85
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsUpdateCurrentIndex:Z

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->updateScalePivot()V

    goto :goto_0

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->isPrepareOpenFoldAnim:Z

    if-eqz v0, :cond_2

    return-void

    .line 91
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getNextScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->isCellLayoutCanPrepare(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPrepareConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 95
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    .line 98
    :cond_3
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->prepareAnimation()V

    .line 99
    iput-boolean v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsScreenSizeChange:Z

    return-void
.end method

.method protected prepareUserPresentAnimation(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mIsScreenSizeChange:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a02c7

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->cleanView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 132
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->prepareUserPresentAnimation(Landroid/view/View;)V

    return-void
.end method

.method public resetAnimation()V
    .locals 6

    .line 198
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->resetHotsets()V

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 203
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    .line 205
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->resetAnimation()V

    return-void
.end method

.method public resetView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a02c8

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lmiuix/animation/IStateStyle;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeState;

    .line 177
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeState;->clean()V

    .line 179
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->resetView(Landroid/view/View;)V

    return-void
.end method

.method public showAnimation()V
    .locals 6

    .line 159
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->showOpenFoldAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedScreenId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mShowConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mResetConsumer:Ljava/util/function/Consumer;

    iget-wide v4, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->operateNextScreenViews(Ljava/util/function/Consumer;Lcom/miui/home/launcher/CellLayout;)V

    .line 168
    :goto_0
    iput-wide v2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->mPreparedNextScreenId:J

    .line 170
    :cond_2
    invoke-super {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->showAnimation()V

    return-void
.end method
