.class public Lcom/miui/home/launcher/MinusOneScreenView;
.super Lcom/miui/home/launcher/ScreenView;
.source "MinusOneScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;
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

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/MinusOneScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/MinusOneScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    .line 49
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 102
    new-instance p1, Lcom/miui/home/launcher/MinusOneScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/MinusOneScreenView$1;-><init>(Lcom/miui/home/launcher/MinusOneScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColorQueryRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 304
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mHotHeatTouchRect:Landroid/graphics/Rect;

    .line 356
    new-instance p2, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;-><init>(Lcom/miui/home/launcher/MinusOneScreenView;Lcom/miui/home/launcher/MinusOneScreenView$1;)V

    iput-object p2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/MinusOneScreenView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/MinusOneScreenView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/MinusOneScreenView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/MinusOneScreenView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->queryBackgroundColorInChina()V

    return-void
.end method

.method private isMotionEventInHotSeat(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mHotHeatTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->getHitRect(Landroid/graphics/Rect;)V

    .line 308
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mHotHeatTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private queryBackgroundColorInChina()V
    .locals 1

    .line 115
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColorQueryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColorQueryRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowLongPress()Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    return p0
.end method

.method public computeScroll()V
    .locals 7

    .line 145
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->computeScroll()V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f050019

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 150
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v1

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 152
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 155
    iget v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    .line 156
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    .line 157
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    .line 158
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 156
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 155
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/MinusOneScreenView;->setBackgroundColor(I)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->sDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v1, p0

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 323
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 174
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 178
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAllowLongPress:Z

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 183
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAlreadyScrolled:Z

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 187
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 188
    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAlreadyScrolled:Z

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 194
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 195
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 196
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 197
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 198
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->isWidgetBeingResized()Z

    move-result v0

    if-nez v0, :cond_17

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 200
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 201
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 202
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 203
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 204
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 205
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 206
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->isStatusBarFollowingTouch()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 207
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_2

    .line 213
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-nez v0, :cond_8

    .line 214
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 218
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_9

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getTouchState()I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 221
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 222
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 226
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 227
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 228
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 233
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_b

    return v1

    .line 242
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v3, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_12

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x1f4

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 244
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    if-eqz v0, :cond_f

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 246
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 247
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    goto :goto_0

    .line 260
    :cond_c
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    goto/16 :goto_1

    .line 250
    :cond_d
    :goto_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 252
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/Workspace;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 253
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v5

    if-le v3, v5, :cond_e

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/MinusOneScreenView;->setScrollX(I)V

    .line 256
    :cond_e
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 258
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 264
    :cond_f
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView;->isMotionEventInHotSeat(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v3

    if-gt v0, v3, :cond_10

    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v3

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 267
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    const/high16 v3, -0x3c6a0000    # -300.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_12

    .line 268
    :cond_10
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 270
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v3

    if-gez v3, :cond_11

    .line 272
    iget-object v3, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Workspace;->setScrollX(I)V

    .line 274
    :cond_11
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 276
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 282
    :cond_12
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_13

    .line 283
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 287
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 288
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    if-eqz v0, :cond_14

    .line 289
    iput-boolean v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 290
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 292
    :cond_14
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 297
    :cond_15
    iget-boolean v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    if-eqz v0, :cond_16

    return v1

    .line 300
    :cond_16
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 208
    :cond_17
    :goto_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mIsSolvedByChild:Z

    .line 209
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 378
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMinusBlurRatio()F
    .locals 0

    .line 403
    iget p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mMinusBlurRatio:F

    return p0
.end method

.method protected getSnapDuration(II)I
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getSnapDuration(II)I

    move-result p0

    return p0
.end method

.method protected interceptDownWhenScrolling()Z
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAllowUseBlurAnimation()Z
    .locals 0

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isAlreadyScrolled()Z
    .locals 0

    .line 387
    iget-boolean p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mAlreadyScrolled:Z

    return p0
.end method

.method protected isSpringOverScroll()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isSpringOverScroll()Z

    move-result p0

    return p0

    .line 347
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/ScreenView;->isSpringOverScroll()Z

    move-result p0

    return p0
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->onScrollChanged(IIII)V

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f05001b

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 138
    instance-of v1, v0, Landroid/view/View$OnScrollChangeListener;

    if-eqz v1, :cond_0

    .line 139
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
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->snapToScreen(I)I

    .line 69
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.MinusOneScreenView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 383
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/MinusOneScreenView;->superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public scrollTo(II)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onMinusOneScreenViewScroll()V

    .line 334
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildScreenMeasureWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    return-void
.end method

.method sendMinusScreenUpdateBroadcast(Z)V
    .locals 2

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result p1

    const-string v1, "hasLightBgForStatusBar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p1

    const-string v1, "hasLightBgForClock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    iget p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mBackgroundColor:I

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const-string v1, "leavePersonalAssistant"

    .line 128
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 3

    .line 77
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

    .line 80
    iget-object v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->addMinusOneView()V

    .line 82
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->sendMinusScreenUpdateBroadcast(Z)V

    .line 83
    iget-object v2, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    if-eqz v1, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/MinusOneScreenView;->queryBackgroundColorInChina()V

    :cond_2
    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f05001a

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

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->setMinusOneBlurRatio(F)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 95
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->setMinusOneBlurRatio(F)V

    .line 97
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentScreenInner sendBroadcast index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.MinusOneScreenView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_5
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 392
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 393
    iget-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    iget-object p0, p0, Lcom/miui/home/launcher/MinusOneScreenView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_0
    return-void
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 0

    return-void
.end method
