.class public Lcom/miui/home/launcher/MinusOneScreenView;
.super Lcom/miui/home/launcher/ScreenView;
.source "MinusOneScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/Insettable;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;,
        Lcom/miui/home/launcher/MinusOneScreenView$_lancet;
    }
.end annotation


# instance fields
.field private mAllowLongPress:Z

.field private mAlreadyScrolled:Z

.field private mBackgroundColor:I

.field private mBackgroundColorQueryRunnable:Ljava/lang/Runnable;

.field private mHotHeatTouchRect:Landroid/graphics/Rect;

.field private mIsSolvedByChild:Z

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;

.field private mMinusBlurRatio:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/MinusOneScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/MinusOneScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    .line 48
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 103
    new-instance p1, Lcom/miui/home/launcher/MinusOneScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/MinusOneScreenView$1;-><init>(Lcom/miui/home/launcher/MinusOneScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColorQueryRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 306
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mHotHeatTouchRect:Landroid/graphics/Rect;

    .line 358
    new-instance p2, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;-><init>(Lcom/miui/home/launcher/MinusOneScreenView;Lcom/miui/home/launcher/MinusOneScreenView$1;)V

    iput-object p2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/MinusOneScreenView;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/MinusOneScreenView;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$003(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$004(Lcom/miui/home/launcher/MinusOneScreenView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView;->setAlpha$___twin___(F)V

    return-void
.end method

.method static synthetic access$005(Lcom/miui/home/launcher/MinusOneScreenView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView;->setVisibility$___twin___(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/MinusOneScreenView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/MinusOneScreenView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->queryBackgroundColorInChina()V

    return-void
.end method

.method private isMotionEventInHotSeat(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mHotHeatTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeats;->getHitRect(Landroid/graphics/Rect;)V

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mHotHeatTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private queryBackgroundColorInChina()V
    .locals 1

    .line 116
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColorQueryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColorQueryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setAlpha$___twin___(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setAlpha(F)V

    return-void
.end method

.method private setVisibility$___twin___(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public allowLongPress()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 7

    .line 146
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->computeScroll()V

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f050010

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 151
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v1

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 153
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 156
    iget v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    .line 157
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    .line 158
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    .line 159
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 157
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 156
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/MinusOneScreenView;->setBackgroundColor(I)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v3, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 325
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 175
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 179
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 184
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAlreadyScrolled:Z

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 188
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 189
    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAlreadyScrolled:Z

    .line 193
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 194
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 195
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 196
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 197
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 198
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 199
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->isWidgetBeingResized()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 200
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 201
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 202
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 203
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 204
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 205
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 206
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 207
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 208
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->isStatusBarFollowingTouch()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 209
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_2

    .line 215
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-nez v0, :cond_8

    .line 216
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 220
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_9

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 223
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 224
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 228
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 229
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 230
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 235
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_b

    return v1

    .line 244
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v3, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_12

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x1f4

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 246
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    if-eqz v0, :cond_f

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 248
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 249
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    goto :goto_0

    .line 262
    :cond_c
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    goto/16 :goto_1

    .line 252
    :cond_d
    :goto_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 253
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 254
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/Workspace;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v5

    if-le v3, v5, :cond_e

    .line 256
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/MinusOneScreenView;->setScrollX(I)V

    .line 258
    :cond_e
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 260
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 266
    :cond_f
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView;->isMotionEventInHotSeat(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v3

    if-gt v0, v3, :cond_10

    .line 268
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v3

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 269
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const/high16 v3, -0x3c6a0000    # -300.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_12

    .line 270
    :cond_10
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 273
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v3

    if-gez v3, :cond_11

    .line 274
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Workspace;->setScrollX(I)V

    .line 276
    :cond_11
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 278
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 284
    :cond_12
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_13

    .line 285
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 289
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 290
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    if-eqz v0, :cond_14

    .line 291
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 292
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 294
    :cond_14
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 299
    :cond_15
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    if-eqz v0, :cond_16

    return v1

    .line 302
    :cond_16
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 210
    :cond_17
    :goto_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 211
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 385
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMinusBlurRatio()F
    .locals 1

    .line 410
    iget v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mMinusBlurRatio:F

    return v0
.end method

.method protected getSnapDuration(II)I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getSnapDuration(II)I

    move-result p1

    return p1
.end method

.method protected interceptDownWhenScrolling()Z
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowUseBlurAnimation()Z
    .locals 1

    .line 406
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseNoRecentsBlurAnimation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAlreadyScrolled()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAlreadyScrolled:Z

    return v0
.end method

.method protected isSpringOverScroll()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isSpringOverScroll()Z

    move-result v0

    return v0

    .line 349
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->isSpringOverScroll()Z

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->onScrollChanged(IIII)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f050012

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 139
    instance-of v1, v0, Landroid/view/View$OnScrollChangeListener;

    if-eqz v1, :cond_0

    .line 140
    move-object v2, v0

    check-cast v2, Landroid/view/View$OnScrollChangeListener;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/View$OnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public openMinusOne()V
    .locals 4

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    .line 68
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.MinusOneScreenView"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MinusOneScreenView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 390
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/MinusOneScreenView;->superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public scrollTo(II)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onMinusOneScreenViewScroll()V

    .line 336
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    return-void
.end method

.method sendMinusScreenUpdateBroadcast(Z)V
    .locals 2

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "hasLightBgForStatusBar"

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "hasLightBgForClock"

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "backgroundColor"

    .line 127
    iget v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "leavePersonalAssistant"

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView$_lancet;->com_miui_home_launcher_aop_LogHooker_setScreenViewAlpha(Lcom/miui/home/launcher/MinusOneScreenView;F)V

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 3

    .line 76
    iget v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mCurrentScreenIndex:I

    if-eq v0, p1, :cond_5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 79
    iget-object v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->addMinusOneView()V

    .line 81
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->sendMinusScreenUpdateBroadcast(Z)V

    .line 82
    iget-object v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    if-eqz v1, :cond_2

    .line 84
    invoke-direct {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->queryBackgroundColorInChina()V

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->isAllowUseBlurAnimation()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 90
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 91
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mMinusBlurRatio:F

    .line 92
    iget v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mMinusBlurRatio:F

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->setMinusOneBlurRatio(F)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 95
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->setMinusOneBlurRatio(F)V

    :cond_4
    :goto_1
    const-string v0, "Launcher.MinusOneScreenView"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentScreenInner sendBroadcast index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MinusOneScreenView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_5
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    .line 362
    invoke-static {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 399
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 400
    iget-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView$_lancet;->com_miui_home_launcher_aop_LogHooker_setScreenViewVisibility(Lcom/miui/home/launcher/MinusOneScreenView;I)V

    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 0

    return-void
.end method
