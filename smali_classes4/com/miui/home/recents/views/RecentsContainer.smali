.class public Lcom/miui/home/recents/views/RecentsContainer;
.super Landroid/widget/FrameLayout;
.source "RecentsContainer.java"

# interfaces
.implements Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/RecentsContainer$RecentsHandler;
    }
.end annotation


# instance fields
.field private final mAllInsets:Landroid/graphics/Rect;

.field mBackground:Landroid/widget/FrameLayout;

.field private mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

.field private mCurrentOrientation:I

.field private mExitMultiModeBtn:Landroid/widget/Button;

.field private mExternalRam:F

.field private mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

.field private mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

.field private mFreeAtFirst:J

.field public mFreeBeforeClean:J

.field private mHandler:Landroid/os/Handler;

.field private mIsAddExitMultiModeBtn:Z

.field private mIsExitRecentsAnimating:Z

.field private mIsFsAppToHomeAnimating:Z

.field private mIsInLandscapeOverview:Z

.field private mIsInMultiWindowMode:Z

.field private mIsLauncherStableVisible:Z

.field private mIsLauncherVisible:Z

.field private mIsNeedSkipTouch:Z

.field private mIsOneKeyCleanAnimating:Z

.field private mIsOpenExternalRam:I

.field private mIsShowMemInfo:Z

.field private mLauncherStableVisibleChecker:Ljava/lang/Runnable;

.field private mMemoryAndClearContainer:Landroid/view/ViewGroup;

.field private mOpenExternalRamObserver:Landroid/database/ContentObserver;

.field private mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

.field private mRecentsContainerRotation:I

.field private mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsView:Lcom/miui/home/recents/views/RecentsView;

.field private mSeparatorForMemoryInfo:Landroid/view/View;

.field private mShowMemInfoObserver:Landroid/database/ContentObserver;

.field private mTmp:[F

.field private mTotalMemory:J

.field private mTxtMemoryContainer:Landroid/view/ViewGroup;

.field private mTxtMemoryInfo1:Landroid/widget/TextView;

.field private mTxtMemoryInfo2:Landroid/widget/TextView;

.field private final mVisualRotationAllInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/RecentsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 128
    new-instance p2, Lcom/miui/home/recents/views/RecentsContainer$RecentsHandler;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/views/RecentsContainer$RecentsHandler;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    .line 147
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 149
    iput p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    .line 355
    new-instance p3, Lcom/miui/home/recents/views/RecentsContainer$3;

    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, p0, p4}, Lcom/miui/home/recents/views/RecentsContainer$3;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    .line 363
    new-instance p3, Lcom/miui/home/recents/views/RecentsContainer$4;

    iget-object p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, p0, p4}, Lcom/miui/home/recents/views/RecentsContainer$4;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mOpenExternalRamObserver:Landroid/database/ContentObserver;

    .line 415
    iput-boolean p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 1133
    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTmp:[F

    .line 1160
    new-instance p3, Lcom/miui/home/recents/views/RecentsContainer$10;

    invoke-direct {p3, p0}, Lcom/miui/home/recents/views/RecentsContainer$10;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 1310
    new-instance p3, Lcom/miui/home/recents/views/RecentsContainer$13;

    invoke-direct {p3, p0}, Lcom/miui/home/recents/views/RecentsContainer$13;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    iput-object p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    .line 168
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide p3

    const-wide/16 v0, 0x400

    div-long/2addr p3, v0

    iput-wide p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTotalMemory:J

    .line 169
    invoke-static {}, Lcom/miui/home/recents/views/RecentsContainer;->getBdSize()F

    move-result p3

    iput p3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExternalRam:F

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "isExternalRamOn"

    invoke-static {p3, p4, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOpenExternalRam:I

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 173
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    .line 174
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    const p3, 0x7f06012d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 175
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Lcom/miui/home/recents/views/RecentsContainer;->addView(Landroid/view/View;II)V

    .line 178
    :cond_0
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz p1, :cond_1

    .line 179
    new-instance p1, Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/CircleAndTickAnimView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cleanInRecents()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/views/RecentsContainer;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFreeAtFirst:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/views/RecentsContainer;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTotalMemory:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/view/View;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSeparatorForMemoryInfo:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitSplitScreen()V

    return-void
.end method

.method static synthetic access$1602(Lcom/miui/home/recents/views/RecentsContainer;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/views/RecentsContainer;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/home/recents/views/RecentsContainer;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowMemInfo:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/home/recents/views/RecentsContainer;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOpenExternalRam:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/RecentsView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->getWhiteList(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/os/Handler;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->doClearAnim()V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/home/recents/views/RecentsContainer;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOneKeyCleanAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->endForClear()V

    return-void
.end method

.method private canTxtMemInfoShow()Z
    .locals 0

    .line 806
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->canTxtMemInfoShowIgnoreSmallWindow()Z

    move-result p0

    return p0
.end method

.method private canTxtMemInfoShowIgnoreSmallWindow()Z
    .locals 1

    .line 810
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isMemInfoShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cancelCheckLauncherStableVisible()V
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkIfRemoveForegroundTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 939
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->getForegroundSmallWindows()Ljava/util/Set;

    move-result-object v0

    .line 940
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/ForegroundTaskHelper;->getFullScreenTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 941
    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/views/RecentsContainer;->isSameTaskId(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 942
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/ForegroundTaskHelper;->clearFullScreenTask()V

    .line 944
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 945
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/ForegroundTaskHelper;->removeForegroundSmallWindow(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_1
    return-void
.end method

.method private cleanInRecents()V
    .locals 3

    .line 466
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getFreeMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFreeAtFirst:J

    iput-wide v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFreeBeforeClean:J

    .line 468
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->deepClean()V

    .line 470
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/DismissAllTaskViewsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static createSystemInsetsFromWindowInsets(Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 4

    .line 1042
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 1043
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1044
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 1045
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private deepClean()V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/views/RecentsContainer$5;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/views/RecentsContainer$5;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doClearAnim()V
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->refreshMemoryInfo()V

    .line 566
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$6;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$6;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->animatorStart(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private endForClear()V
    .locals 4

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$7;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$7;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private exitOverviewIfNeed()V
    .locals 2

    .line 536
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 540
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 547
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method private exitSplitScreen()V
    .locals 2

    .line 1285
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 1287
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    goto :goto_0

    .line 1289
    :cond_0
    sget-object p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz p0, :cond_1

    .line 1291
    invoke-virtual {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->exitSplitScreen()V

    const-string p0, "RecentsContainer"

    const-string v0, "exit splitScreen mode ---- click exit button."

    .line 1292
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getBdSize()F
    .locals 3

    :try_start_0
    const-string v0, "persist.miui.extm.bdsize"

    .line 634
    invoke-static {v0}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 638
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBdSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1298
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7eb

    const/16 v4, 0x28

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x31

    .line 1305
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "ExitMultiModeBtn"

    .line 1306
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private getRecentsContainerVisualRotationAllInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 0

    .line 988
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 989
    invoke-static {p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRectFromRotation0(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 3

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x0

    .line 608
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x2800

    cmp-long p3, p1, p3

    if-lez p3, :cond_1

    const-wide/16 p3, 0x400

    .line 612
    div-long/2addr p1, p3

    cmp-long p3, p1, p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_0

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f1102b3

    new-array v1, v0, [Ljava/lang/Object;

    .line 616
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p4

    const-string p1, "%d"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p4

    .line 614
    invoke-virtual {p0, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f1102b2

    new-array v1, v0, [Ljava/lang/Object;

    .line 620
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, p4

    const-string p1, "%.1f"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p4

    .line 618
    invoke-virtual {p0, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1102b0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getWhiteList(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 519
    :goto_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method private isClearContainerVisible()Z
    .locals 1

    .line 818
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowModeCompatAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getStackTaskCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMemInfoShow()Z
    .locals 0

    .line 822
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsShowMemInfo:Z

    return p0
.end method

.method private isSameTaskId(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 950
    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUseFixedRotationTransform()Z
    .locals 0

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$notifyRecentTaskState$1(ZLandroid/content/Context;)V
    .locals 2

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRecentTaskState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.powerkeeper"

    .line 786
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.powerkeeper.RECENT_TASK"

    .line 787
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isEnter"

    .line 788
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 789
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private loadTaskThenSendMultiWindowChangedEvent(Z)V
    .locals 4

    .line 1384
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    .line 1385
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1386
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 1387
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1388
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1390
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    .line 1391
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1394
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;

    invoke-direct {v3, p1, v1, v0}, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/shared/recents/model/TaskStack;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1396
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    .line 1397
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    .line 1398
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateViewShowWhenSoscHalfSplitState()V

    goto :goto_1

    .line 1401
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateViewShowWhenSplitSelectState(Lcom/miui/home/launcher/Launcher;)V

    :goto_1
    return-void
.end method

.method private modifyRecentsDecorationsMargin(Landroid/graphics/Rect;)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyRecentsDecorationsMargin, margin changed, margin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 456
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 457
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 458
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 459
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private notifyRecentTaskState(Landroid/content/Context;Z)V
    .locals 1

    .line 783
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;

    invoke-direct {v0, p2, p1}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$JiPqxddf4VeYBuSVZVJQtauDAqU;-><init>(ZLandroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onMultiWindowModeChangedEqualOrGreaterThanT(Z)V
    .locals 0

    .line 1379
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->loadTaskThenSendMultiWindowChangedEvent(Z)V

    return-void
.end method

.method private onMultiWindowModeChangedLessThanT(Z)V
    .locals 2

    .line 1365
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->loadTaskThenSendMultiWindowChangedEvent(Z)V

    .line 1366
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    .line 1367
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    .line 1368
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1369
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 1371
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V

    .line 1372
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterMultiWindowMode(Lcom/miui/home/launcher/Launcher;Z)V

    .line 1373
    iget-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRotation()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 1374
    invoke-direct {p0, v0, v0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRecentsContainer(III)V

    :cond_1
    return-void
.end method

.method private recalculateAllInsetsIfNeed(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1

    .line 969
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateAllInsetsWhenLauncherCanRotate(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private recalculateAllInsetsWhenLauncherCanRotate(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 2

    .line 954
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getNotchHeight(Landroid/content/Context;)I

    move-result v0

    .line 955
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowGestureLine()Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    return-object p1

    .line 961
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, p0, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    .line 959
    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v0, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private recalculateSystemInsetsTop(II)I
    .locals 1

    .line 439
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 440
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v0

    goto :goto_1

    .line 443
    :cond_1
    invoke-static {p2}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 444
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 446
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result p0

    if-nez p0, :cond_0

    :cond_3
    :goto_1
    return p1
.end method

.method private registerContentObservers()V
    .locals 4

    .line 371
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_recents_show_mem_info"

    .line 372
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 371
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 375
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isExternalRamOn"

    .line 376
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mOpenExternalRamObserver:Landroid/database/ContentObserver;

    .line 375
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 380
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private removeExitMultiModeBtnIfNeeded()V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1253
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1254
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    :cond_0
    return-void
.end method

.method private removeRecentMenuIfNeed()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    :cond_0
    return-void
.end method

.method private resetToNormalState()V
    .locals 1

    .line 1472
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    return-void
.end method

.method private rotateRecentsContainer(III)V
    .locals 2

    .line 188
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 189
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotX(F)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotY(F)V

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    .line 207
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43870000    # 270.0f

    .line 200
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    int-to-float v0, p1

    .line 202
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42b40000    # 90.0f

    .line 195
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    int-to-float v1, p2

    .line 196
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    .line 212
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rotateRecentsContainer, recentsRotation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", widthAndHeight=["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rotateRecentsContainerWhenRtl(III)V
    .locals 3

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 218
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p1

    .line 220
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotX(F)V

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setPivotY(F)V

    const/4 v2, 0x1

    if-eq p3, v2, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 236
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    .line 237
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    .line 238
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43870000    # 270.0f

    .line 229
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    neg-int v0, p2

    int-to-float v0, v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    .line 231
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    const/high16 v2, 0x42b40000    # 90.0f

    .line 224
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    .line 241
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rotateRecentsContainerWhenRtl, recentsRotation="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", widthAndHeight=["

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static rotateRectFromRotation0(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3

    .line 995
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 1007
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1004
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1001
    :cond_1
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 998
    :cond_2
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0
.end method

.method private setCurrentOrientation(I)V
    .locals 1

    .line 406
    iput p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentOrientation, mCurrentOrientation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setRecentsViewAndDecorationsInsets(Landroid/graphics/Rect;I)V
    .locals 1

    .line 1013
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, p2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateSystemInsetsTop(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsContainerVisualRotationAllInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1015
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1016
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "visualRotationInsets changed, from="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", to="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RecentsContainer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1019
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsView;->setVisulaRotationSystemInsets(Landroid/graphics/Rect;)V

    .line 1020
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mVisualRotationAllInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->modifyRecentsDecorationsMargin(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private setupVisible()V
    .locals 2

    .line 794
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowModeCompatAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    .line 797
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->setupVisible()V

    .line 800
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateClearContainerVisible()V

    .line 801
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 802
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->canTxtMemInfoShow()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private startCheckLauncherStableVisible()V
    .locals 3

    .line 1348
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cancelCheckLauncherStableVisible()V

    .line 1349
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private translationDecorationViewByScroll(Landroid/view/View;IZ)V
    .locals 3

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1136
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTmp:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 1137
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTmp:[F

    aget v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_0

    move p0, v2

    goto :goto_0

    .line 1139
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getFirstTaskViewYWhenNoScroll()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_0
    add-int/2addr p0, p2

    .line 1140
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    .line 1141
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p3, :cond_1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p0, p2

    const/4 p3, 0x0

    .line 1143
    invoke-static {p0, p3, p2}, Lcom/miui/home/recents/util/Utilities;->clamp(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private unRegisterContentObservers()V
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mShowMemInfoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 385
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mOpenExternalRamObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAllInsets(Landroid/graphics/Rect;I)V
    .locals 2

    .line 977
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateAllInsetsIfNeed(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 978
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAllInsets, from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 983
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/views/RecentsContainer;->setRecentsViewAndDecorationsInsets(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method private updateDecorationsTranslationY(I)V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/home/recents/views/RecentsContainer;->translationDecorationViewByScroll(Landroid/view/View;IZ)V

    .line 1121
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsDecorations;->getRecentsRelayContainer()Lcom/miui/home/recents/relay/RelayIconInRecents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/relay/RelayIconInRecents;->isShowRelayIcon()Z

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/home/recents/views/RecentsContainer;->translationDecorationViewByScroll(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private updateExitMultiModeBtnVisible()V
    .locals 5

    .line 1259
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowModeCompatAndroidT()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 1262
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    if-nez v0, :cond_3

    .line 1263
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d006f

    const/4 v4, 0x0

    .line 1264
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    .line 1265
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Landroid/view/View;

    .line 1266
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    aput-object v3, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 1268
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    new-instance v3, Lcom/miui/home/recents/views/RecentsContainer$12;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/views/RecentsContainer$12;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1274
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1275
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    .line 1278
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1279
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsAddExitMultiModeBtn:Z

    if-eqz p0, :cond_5

    const/16 p0, 0x8

    .line 1280
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateRecentRotationIfNeed(Z)V
    .locals 1

    .line 1511
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1514
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation(I)V

    :cond_0
    return-void
.end method

.method private updateRecentsContainerRotation(I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setRecentsViewAndDecorationsInsets(Landroid/graphics/Rect;I)V

    .line 412
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateTaskStackViewTranslation()V

    return-void
.end method

.method private updateRotation(I)V
    .locals 2

    .line 748
    iput p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    .line 749
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez p1, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitLandscapeOverview()V

    .line 753
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 755
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInLandscapeOverview:Z

    :cond_3
    return-void
.end method

.method private updateTaskStackViewTranslation()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateViewShowWhenSoscHalfSplitState()V
    .locals 2

    .line 1406
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 1408
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation(I)V

    :cond_0
    return-void
.end method

.method private updateViewShowWhenSplitSelectState(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1414
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->setAllAppsSheetShowOrHide()V

    .line 1416
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V

    .line 1417
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1418
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 1419
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissRecentsToHome()V
    .locals 1

    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome(Z)V

    return-void
.end method

.method dismissRecentsToHome(Z)V
    .locals 2

    const-string v0, "RecentsContainer"

    const-string v1, "dismissRecentsToHome"

    .line 900
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(ZZ)Z

    .line 902
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->startHome()V

    const p0, 0x7f110026

    .line 903
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    return-void
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()V
    .locals 1

    const/4 v0, 0x0

    .line 877
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;)V

    return-void
.end method

.method dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 881
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;Z)V

    return-void
.end method

.method dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;Z)V
    .locals 7

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissRecentsToLaunchTargetTaskOrHome,ignorePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    .line 887
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSplitSelectState()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v1, p1}, Lcom/miui/home/recents/views/TaskView;->containIgnorePackageName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 890
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZZZ)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 892
    invoke-virtual {v1, p0}, Lcom/miui/home/recents/views/TaskView;->launchTask(Z)V

    goto :goto_0

    .line 895
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome()V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1227
    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    const-string v1, "RecentsContainer"

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsFsAppToHomeAnimating:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsExitRecentsAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1236
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isForbidLaunchSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "don\'t dispatch touch because: isForbidLaunchSplit = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1241
    :cond_1
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 1242
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1243
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1244
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->endAppToRecentsAnimIfNeeded()V

    .line 1247
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1230
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "don\'t dispatch touch because mIsNeedSkipTouch = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsFsAppToHomeAnimating = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsFsAppToHomeAnimating:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsExitRecentsAnimating = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsExitRecentsAnimating:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1233
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsNeedSkipTouch(Z)V

    return p1
.end method

.method public exitLandscapeOverview()V
    .locals 1

    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->showLandscapeOverviewGestureView(Z)V

    .line 775
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInLandscapeOverview:Z

    return-void
.end method

.method public getFormatedMemory(JZZ)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x400

    .line 668
    div-long/2addr p1, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-gez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x7f110478

    new-array p4, v3, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    .line 673
    iget p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOpenExternalRam:I

    if-ne p4, v3, :cond_1

    iget p4, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExternalRam:F

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_1

    .line 674
    new-instance p4, Ljava/text/DecimalFormat;

    const-string v0, "#0.0"

    invoke-direct {p4, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mExternalRam:F

    float-to-double v4, v2

    invoke-virtual {p4, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    if-eqz p3, :cond_2

    long-to-double p1, p1

    div-double/2addr p1, v4

    .line 679
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    mul-double/2addr p1, v6

    double-to-long p1, p1

    goto :goto_0

    :cond_2
    long-to-double p1, p1

    mul-double/2addr p1, v6

    div-double/2addr p1, v4

    .line 682
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    :goto_0
    const-wide/16 p3, 0xa

    .line 684
    div-long v4, p1, p3

    .line 685
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110475

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p1, p3

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFreeMemory()J
    .locals 4

    const-string p0, "RecentsContainer"

    .line 694
    :try_start_0
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getFreeMemory"

    .line 696
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    .line 700
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreeMemory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x400

    .line 701
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getRecentMenuView()Lcom/miui/home/recents/views/RecentMenuView;
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    return-object p0
.end method

.method public getRecentsRotation()I
    .locals 0

    .line 272
    iget p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    return p0
.end method

.method public getRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object p0
.end method

.method public getStackTaskCount()I
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideFakeNavBarForHidingGestureLine(Z)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setAlpha(F)V

    return-void
.end method

.method public isInLandscapeOverview()Z
    .locals 0

    .line 716
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInLandscapeOverview:Z

    return p0
.end method

.method public isLandscapeVisually()Z
    .locals 1

    .line 276
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    return p0

    .line 279
    :cond_0
    iget p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedSkipTouch()Z
    .locals 0

    .line 423
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    return p0
.end method

.method public isOneKeyCleanAnimating()Z
    .locals 0

    .line 1487
    iget-boolean p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOneKeyCleanAnimating:Z

    return p0
.end method

.method public killProcess(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 1217
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$11;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer$11;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onRecentsVisibleBoundChangedWithAnim$2$RecentsContainer(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsDecorations;->updateRecentsDecorationsLayout(Landroid/graphics/Rect;)V

    .line 1504
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->removeRecentMenuIfNeed()V

    .line 1505
    invoke-direct {p0, p2}, Lcom/miui/home/recents/views/RecentsContainer;->updateRecentRotationIfNeed(Z)V

    .line 1506
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    return-void
.end method

.method public synthetic lambda$onSmallestScreenWidthChanged$0$RecentsContainer()Lkotlin/Unit;
    .locals 0

    .line 528
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitOverviewIfNeed()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1035
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplyWindowInsets, insets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-static {p1}, Lcom/miui/home/recents/views/RecentsContainer;->createSystemInsetsFromWindowInsets(Landroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateAllInsets(Landroid/graphics/Rect;I)V

    .line 1038
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 835
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->addRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 836
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 838
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 840
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    const/4 v0, 0x0

    .line 841
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    .line 842
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->startCheckLauncherStableVisible()V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    .line 848
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->registerContentObservers()V

    .line 849
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    goto :goto_1

    .line 868
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/ForegroundTaskHelper;->startForegroundSmallWindows()V

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome()V

    .line 872
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "backGesture"

    goto :goto_0

    :cond_2
    const-string p0, "clickBackKey"

    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 390
    iget v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 391
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setCurrentOrientation(I)V

    .line 392
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    .line 393
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    .line 394
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 395
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 392
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 397
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    invoke-direct {p0, v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateAllInsets(Landroid/graphics/Rect;I)V

    .line 401
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateTaskStackViewTranslation()V

    :cond_0
    return-void
.end method

.method public onDarkModeChange()V
    .locals 3

    .line 1476
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentMenuView;->onDarkModeChange()V

    .line 1477
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    const v1, 0x7f0801c9

    const v2, 0x7f08067c

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setDrawables(II)V

    .line 1478
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1479
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->onDarkModeChanged()V

    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 779
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->notifyRecentTaskState(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 854
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 855
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->removeRecentSoscListener(Lcom/miui/home/recents/RecentsSoscStateHelper$RecentSoscListener;)V

    .line 856
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mLauncherStableVisibleChecker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 860
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->unRegisterContentObservers()V

    .line 861
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->removeExitMultiModeBtnIfNeeded()V

    return-void
.end method

.method public onDisplayRotationChanged(I)V
    .locals 1

    .line 427
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsNeedSkipTouch(Z)V

    .line 428
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->removeRecentMenuIfNeed()V

    return-void
.end method

.method public onExitState()V
    .locals 2

    .line 761
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->notifyRecentTaskState(Landroid/content/Context;Z)V

    .line 766
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->resetToNormalState()V

    .line 767
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->onExitState()V

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitLandscapeOverview()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 306
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a02aa

    .line 307
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    const v0, 0x7f0a03b4

    .line 308
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a03b5

    .line 309
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo1:Landroid/widget/TextView;

    const v0, 0x7f0a03b6

    .line 310
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mTxtMemoryInfo2:Landroid/widget/TextView;

    const v0, 0x7f0a0314

    .line 311
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mSeparatorForMemoryInfo:Landroid/view/View;

    const v0, 0x7f0a0217

    .line 312
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a00cd

    .line 313
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/CircleAndTickAnimView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    const v0, 0x7f0a02a4

    .line 314
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsDecorations;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    const v0, 0x7f0a02a2

    .line 315
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentMenuView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    .line 316
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    :cond_0
    const v0, 0x7f0a0152

    .line 320
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/FakeNavigationBarView;

    iput-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    .line 321
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$1;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$2;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 343
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsInMultiWindowMode:Z

    .line 345
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setCurrentOrientation(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 247
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure, rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRecentsContainerRotation(I)V

    .line 251
    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, p2

    move p2, p1

    move p1, v3

    .line 256
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRecentsContainerWhenRtl(III)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/RecentsContainer;->rotateRecentsContainer(III)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setRecentsViewAndDecorationsInsets(Landroid/graphics/Rect;I)V

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setRotation(F)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationX(F)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setTranslationY(F)V

    .line 267
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMessageEvent(Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1050
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/TaskStackChangedEvent;->mTaskIds:Ljava/util/Set;

    .line 1052
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsView;->isAnyWorldCirculateTaskIdInvalid(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1053
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome(Z)V

    .line 1054
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1101b1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1322
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;->getLifecycle()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1343
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "should not arrive here, do NOT add type for LauncherLifecycleMessage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1329
    :cond_1
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    .line 1330
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    .line 1331
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->startCheckLauncherStableVisible()V

    goto :goto_1

    .line 1324
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    .line 1325
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    .line 1326
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->startCheckLauncherStableVisible()V

    goto :goto_1

    .line 1337
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherVisible:Z

    .line 1338
    iput-boolean v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsLauncherStableVisible:Z

    .line 1339
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cancelCheckLauncherStableVisible()V

    .line 1340
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateExitMultiModeBtnVisible()V

    :goto_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1075
    iget-boolean p1, p1, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;->mFromRemoveAllTask:Z

    if-nez p1, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/CleanInRecentsEvents;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1060
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->cleanInRecents()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/DeleteTaskDataEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 916
    iget-object v0, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 917
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 918
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 917
    invoke-static {v1, v0, v2}, Lcom/miui/home/recents/util/KeepAliveUtil;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    iget-object v0, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 924
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    const/4 v2, 0x0

    .line 925
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/shared/recents/model/Task;Z)V

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecentsContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-boolean p1, p1, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->remainProcess:Z

    if-nez p1, :cond_1

    .line 930
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->killProcess(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 932
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->isUseRemberWindows()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 933
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->checkIfRemoveForegroundTask(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1186
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1187
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->setAlpha(F)V

    .line 1188
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 1189
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1191
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    .line 1192
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    goto :goto_0

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1195
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->showLandscapeOverviewGestureView(Z)V

    :cond_2
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x0

    .line 1206
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    .line 1207
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1153
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1156
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsDecorations;->setAlpha(F)V

    .line 1157
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x104

    .line 1178
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    const-wide/16 v2, 0xc8

    .line 1179
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeInAnim(JJ)V

    .line 1180
    iget-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1181
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsEnterRecentsZoomAnim(Lcom/miui/home/recents/views/RecentsView;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x0

    .line 1212
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    .line 1213
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeInAnim(JJ)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1201
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->resetToNormalState()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/HideMemoryAndDockEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xb4

    .line 1103
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ScrollerFlingFinishEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1089
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 1090
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    iget-object p1, p1, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1, v2, v3, p1}, Lcom/miui/home/launcher/util/PackageManagerHelper;->createAppDetailActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    .line 1092
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 1093
    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isAddToLauncher(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1094
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsContainer"

    const-string v0, "ShowApplicationInfo"

    .line 1097
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1108
    invoke-virtual {p1}, Lcom/miui/home/recents/messages/ShowMemoryAndDockEvent;->showDock()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xb4

    .line 1109
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/StackScrollChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1115
    iget p1, p1, Lcom/miui/home/recents/messages/StackScrollChangedEvent;->mTaskStackViewScrollY:I

    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->updateDecorationsTranslationY(I)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/smallwindow/messages/DismissRecentToHome;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToHome()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1065
    invoke-virtual {p1}, Lcom/miui/home/smallwindow/messages/StartSmallWindowEvent;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->dismissRecentsToLaunchTargetTaskOrHome(Ljava/lang/String;Z)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1357
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    .line 1358
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChangedEqualOrGreaterThanT(Z)V

    goto :goto_0

    .line 1360
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChangedLessThanT(Z)V

    :goto_0
    return-void
.end method

.method public onRecentsVisibleBoundChanged(Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public onRecentsVisibleBoundChangedWithAnim(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1502
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$nKmiCVDVH0TUx5hxWH9Qx1hTt28;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$nKmiCVDVH0TUx5hxWH9Qx1hTt28;-><init>(Lcom/miui/home/recents/views/RecentsContainer;Landroid/graphics/Rect;Z)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/folme/FolmeUtils;->hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSmallestScreenWidthChanged()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFoldScreenModeObserver:Lcom/miui/home/launcher/common/FoldScreenModeObserver;

    if-eqz v0, :cond_0

    .line 527
    new-instance v1, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$OA8OUATYFUQtNSSxciCnvsQNiFU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$OA8OUATYFUQtNSSxciCnvsQNiFU;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/FoldScreenModeObserver;->runWhenScreenModeChange(Lkotlin/jvm/functions/Function0;)Z

    .line 532
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentMenuView;->onSmallestScreenWidthChanged()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1491
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->exitLandscapeOverview()V

    .line 1492
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method

.method public final prepareFsGestureEnterRecents()V
    .locals 2

    .line 1171
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 1172
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshMemoryInfo()V
    .locals 2

    .line 643
    new-instance v0, Lcom/miui/home/recents/views/RecentsContainer$8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer$8;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    new-instance v1, Lcom/miui/home/recents/views/RecentsContainer$9;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/views/RecentsContainer$9;-><init>(Lcom/miui/home/recents/views/RecentsContainer;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsContainer before requestLayout isParentLayoutRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "parent null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const-string p0, "RecentsContainer after requestLayout"

    .line 295
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIsExitRecentsAnimating(Z)V
    .locals 0

    .line 1430
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsExitRecentsAnimating:Z

    return-void
.end method

.method public setIsFsAppToHomeAnimating(Z)V
    .locals 0

    .line 1425
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsFsAppToHomeAnimating:Z

    return-void
.end method

.method public setIsNeedSkipTouch(Z)V
    .locals 1

    .line 418
    iput-boolean p1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsNeedSkipTouch:Z

    .line 419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNeedSkipTouch="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 6

    .line 720
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setEnabled(Z)V

    .line 721
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->notifyRecentTaskState(Landroid/content/Context;Z)V

    .line 722
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->stopAnimator(Z)V

    .line 723
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 724
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->refreshMemoryInfo()V

    .line 725
    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->setupVisible()V

    .line 726
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-boolean v0, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    if-nez v0, :cond_1

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    .line 727
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeInAnim(JJ)V

    if-eqz p1, :cond_0

    move-wide v2, v4

    .line 728
    :cond_0
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeInAnim(JJ)V

    .line 730
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 731
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 732
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-boolean v0, v0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreOverviewAnim:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 733
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    .line 736
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mIsOneKeyCleanAnimating:Z

    .line 737
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation()V

    return-void
.end method

.method public setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentMenuView:Lcom/miui/home/recents/views/RecentMenuView;

    if-eqz p0, :cond_0

    .line 1082
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentMenuView;->setTaskStackView(Lcom/miui/home/recents/views/TaskStackView;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentsContainer setVisibility :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnGlobalListenerError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public showFakeNavBar(Z)V
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mFakeNavBar:Lcom/miui/home/recents/views/FakeNavigationBarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/FakeNavigationBarView;->setVisibility(I)V

    return-void
.end method

.method public showLandscapeOverviewGestureView(Z)V
    .locals 4

    .line 705
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 706
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    .line 707
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showLandscapeOverviewGestureView: show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecentsContainer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->showFakeNavBar(Z)V

    .line 710
    iget-boolean v1, v1, Lcom/miui/home/recents/BaseRecentsImpl;->mHideGestureLine:Z

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->hideFakeNavBarForHidingGestureLine(Z)V

    .line 711
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->hideNavBarButton(Z)V

    :cond_0
    return-void
.end method

.method public startBackgroundFadeInAnim(JJ)V
    .locals 3

    .line 1434
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    .line 1436
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 1437
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1439
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1440
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startBackgroundFadeOutAnim(JJ)V
    .locals 3

    .line 1446
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1448
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    .line 1449
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1451
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1452
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startRecentsContainerFadeInAnim(JJ)V
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 1459
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1460
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 1461
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startRecentsContainerFadeOutAnim(JJ)V
    .locals 2

    .line 1465
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsDecorations:Lcom/miui/home/recents/views/RecentsDecorations;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsDecorations;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    .line 1466
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1467
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mClearAnimView:Lcom/miui/home/recents/views/CircleAndTickAnimView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {p1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    .line 1468
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public updateClearContainerVisible()V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/miui/home/recents/views/RecentsContainer;->isClearContainerVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateInsetsForLayoutAlgorithm()V
    .locals 3

    .line 1025
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1026
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mAllInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    invoke-direct {p0, v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->recalculateSystemInsetsTop(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1027
    iget v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsContainerRotation:I

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsContainerVisualRotationAllInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1028
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1029
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer;->mRecentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackView;->updateInsetsForLayoutAlgorithm(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 1

    .line 741
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->updateRotation(I)V

    :cond_0
    return-void
.end method
