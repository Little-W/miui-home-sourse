.class public Lcom/miui/home/launcher/search/SearchEdgeLayout;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "SearchEdgeLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;


# instance fields
.field private mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

.field private mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

.field private final mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

.field private mInvalidateBottomAreaHeight:F

.field private mIsDragging:Z

.field private mIsForbidden:Z

.field private mLastMotionY:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 41
    new-instance p2, Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/util/ViewDarkModeHelper;-><init>(Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setWillNotDraw(Z)V

    .line 43
    sget p2, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ef

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mInvalidateBottomAreaHeight:F

    return-void
.end method

.method private canShowSearchEffect()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 262
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->canShowSearchEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 263
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 264
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 265
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private refreshNewSettings()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isPullDownSearch()Z

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/settings/LauncherGestureController;->slideUpIsSearch()Z

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/settings/LauncherGestureController;->isSupportGestureOpenHomeFeed()Z

    move-result v2

    const-string v3, "SearchEdgeLayout"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshEnableSettings topSearch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",bottomFeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",bottomSearch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_0
    if-eqz v1, :cond_1

    .line 72
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 75
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->FEED:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    .line 77
    :cond_2
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 79
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    return-void
.end method

.method private setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect;->TOP:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->createEdgeEffect(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)Lcom/miui/home/launcher/search/SearchEdgeEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    .line 98
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect;->BOTTOM:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getHeight()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->createEdgeEffect(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)Lcom/miui/home/launcher/search/SearchEdgeEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    :goto_0
    return-void
.end method

.method private setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setSize(II)V

    :cond_0
    return-void
.end method

.method public static showOldSlidingSetting()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useNewSlidingSetting()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static useNewSlidingSetting()Z
    .locals 2

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public endDrag(I)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onRelease(I)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    return-void
.end method

.method public isBottomGlobalSearchEnable()Z
    .locals 1

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useNewSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->slideUpIsSearch()Z

    move-result v0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBottomSearchEnable()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchEdgeShowing()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopSearchEnable()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 274
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkModeChanged(Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 223
    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->recycleVelocityTracker()V

    .line 227
    iput-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto/16 :goto_4

    .line 179
    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 182
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->canShowSearchEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isSearchEdgeShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto/16 :goto_4

    .line 186
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 187
    iget v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    sub-int/2addr v0, v2

    .line 188
    iget-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-nez v2, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    if-le v2, v3, :cond_9

    .line 189
    iput-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    .line 190
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v1, :cond_5

    .line 191
    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->finish()V

    :cond_5
    if-lez v0, :cond_6

    .line 194
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    iput-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 197
    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->canShowEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    :cond_7
    iput-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 199
    :cond_8
    iput-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    .line 203
    :cond_9
    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v1, :cond_e

    int-to-float v0, v0

    .line 204
    iget v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onPull(FI)V

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result v0

    if-nez v0, :cond_e

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->postInvalidateOnAnimation()V

    goto :goto_4

    .line 211
    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_b

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    const/16 v1, 0x3e8

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_a
    move v0, v2

    .line 217
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 219
    :cond_b
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->recycleVelocityTracker()V

    .line 220
    iput-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto :goto_4

    .line 170
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    .line 172
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 174
    :cond_c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 176
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mInvalidateBottomAreaHeight:F

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_d

    goto :goto_3

    :cond_d
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    .line 230
    :cond_e
    :goto_4
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherFrameLayout;->onSizeChanged(IIII)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSize()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onWindowVisibilityChanged(I)V

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    return-void
.end method

.method public refreshOldSettings()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 86
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    goto :goto_2

    .line 90
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    :goto_2
    return-void
.end method

.method public refreshSettings()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->useNewSlidingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshNewSettings()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshOldSettings()V

    :goto_0
    return-void
.end method

.method public refreshSize()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 236
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    .line 242
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
