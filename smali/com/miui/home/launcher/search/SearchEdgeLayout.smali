.class public Lcom/miui/home/launcher/search/SearchEdgeLayout;
.super Lcom/miui/home/launcher/InsettableFrameLayout;
.source "SearchEdgeLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/search/SearchEdgeLayout$_lancet;
    }
.end annotation


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

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 39
    new-instance p2, Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/util/ViewDarkModeHelper;-><init>(Lcom/miui/home/launcher/util/ViewDarkModeHelper$DarkModeChangeListener;)V

    iput-object p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setWillNotDraw(Z)V

    .line 41
    sget p2, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700e2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mInvalidateBottomAreaHeight:F

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private canShowSearchEffect()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 250
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->canShowSearchEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 251
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 252
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 253
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

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private refreshNewSettings()V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isPullDownSearch()Z

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/settings/LauncherGestureController;->slideUpIsSearch()Z

    move-result v1

    .line 56
    iget-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/settings/LauncherGestureController;->isSupportGestureOpenHomeFeed()Z

    move-result v2

    const-string v3, "SearchEdgeLayout"

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshEnableSettings topSearch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",bottomSearch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",bottomFeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/search/SearchEdgeLayout$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_0
    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 65
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->FEED:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    .line 67
    :cond_2
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    .line 69
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    return-void
.end method

.method private setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 87
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

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 91
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

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setSize(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public endDrag(I)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onRelease(I)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    return-void
.end method

.method public isBottomGlobalSearchEnable()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    instance-of v0, v0, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;

    return v0
.end method

.method public isSearchEdgeShowing()Z
    .locals 1

    .line 257
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

    .line 96
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

    .line 262
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mDarkModeHelper:Lcom/miui/home/launcher/util/ViewDarkModeHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/ViewDarkModeHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkModeChanged(Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 211
    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->recycleVelocityTracker()V

    .line 215
    iput-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto/16 :goto_4

    .line 167
    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 170
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

    .line 171
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto/16 :goto_4

    .line 174
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 175
    iget v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    sub-int/2addr v0, v2

    .line 176
    iget-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-nez v2, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    if-le v2, v3, :cond_9

    .line 177
    iput-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    .line 178
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v1, :cond_5

    .line 179
    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->finish()V

    :cond_5
    if-lez v0, :cond_6

    .line 182
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    iput-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 185
    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->canShowEffect()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    :cond_7
    iput-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    goto :goto_0

    .line 187
    :cond_8
    iput-object v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    .line 191
    :cond_9
    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    if-eqz v1, :cond_e

    int-to-float v0, v0

    .line 192
    iget v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTouchSlop:I

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onPull(FI)V

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mActiveEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->isFinish()Z

    move-result v0

    if-nez v0, :cond_e

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->postInvalidateOnAnimation()V

    goto :goto_4

    .line 199
    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    const/16 v1, 0x3e8

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    :cond_a
    move v0, v2

    .line 205
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 207
    :cond_b
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->recycleVelocityTracker()V

    .line 208
    iput-boolean v2, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    goto :goto_4

    .line 158
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mLastMotionY:I

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    .line 160
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 162
    :cond_c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 164
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

    .line 218
    :cond_e
    :goto_4
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/InsettableFrameLayout;->onSizeChanged(IIII)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSize()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->onWindowVisibilityChanged(I)V

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    return-void
.end method

.method public refreshOldSettings()V
    .locals 2

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->SEARCH:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    goto :goto_2

    .line 80
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;->NULL:Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setEdgeEffect(Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;Lcom/miui/home/launcher/search/SearchEdgeEffect$Type;)V

    :goto_2
    return-void
.end method

.method public refreshSettings()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/miui/home/settings/LauncherGestureController;->isHomeFeedRunInOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshNewSettings()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshOldSettings()V

    :goto_0
    return-void
.end method

.method public refreshSize()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mTopEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mBottomEffect:Lcom/miui/home/launcher/search/SearchEdgeEffect;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->setSize(Lcom/miui/home/launcher/search/SearchEdgeEffect;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 224
    iget-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/miui/home/launcher/search/SearchEdgeLayout;->mIsForbidden:Z

    .line 230
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
