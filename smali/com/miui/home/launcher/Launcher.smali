.class public final Lcom/miui/home/launcher/Launcher;
.super Lcom/miui/home/launcher/BaseActivity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DragController$DropAnimationListener;
.implements Lcom/miui/home/launcher/ItemIcon$OnSlideVerticallyListener;
.implements Lcom/miui/home/launcher/LauncherModel$Callbacks;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$RecentMessageHandler;,
        Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;,
        Lcom/miui/home/launcher/Launcher$OnResumeCallback;,
        Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;,
        Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;,
        Lcom/miui/home/launcher/Launcher$FsCallback;,
        Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;,
        Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;,
        Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;,
        Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;,
        Lcom/miui/home/launcher/Launcher$PerformLaunchAction;,
        Lcom/miui/home/launcher/Launcher$SearchBarObserver;,
        Lcom/miui/home/launcher/Launcher$DualClockObserver;,
        Lcom/miui/home/launcher/Launcher$LocaleConfiguration;,
        Lcom/miui/home/launcher/Launcher$IconContainer;
    }
.end annotation


# static fields
.field private static final MIUI_HOME_SPLASH_PATH:Ljava/lang/String;

.field private static sConfigurationChanged:Z = false

.field private static sEnteredSceneScreen:Z = false

.field private static final sIsClipTransitionDevice:Z

.field private static sIsDefaultThemeApplied:Z = false

.field private static sPrefShowIconShadow:Z = false


# instance fields
.field private mAdded:Z

.field private mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

.field private mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private final mAllLoadedShortcut:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLocateFolderScrollOffset:I

.field private mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

.field private mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

.field private mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private mAssistantOpen:Z

.field private mAssistantOpenObserver:Landroid/database/ContentObserver;

.field private mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

.field private mBackCoverChanged:Z

.field private mBackHomeAnimationStop:Ljava/lang/Runnable;

.field private final mBoostResetRunnable:Ljava/lang/Runnable;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCloseFolderRunnable:Ljava/lang/Runnable;

.field private mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

.field private mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

.field private mCreatedSuccessfully:Z

.field private mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

.field private mCurrentDisplayRotation:I

.field private mCurrentLightSpeedIconPackageName:Ljava/lang/String;

.field private mCurrentOrientation:I

.field private mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

.field private mDarkenWallpaperObserver:Landroid/database/ContentObserver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

.field private mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

.field private mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

.field private final mDeleteCellScreenMessageHandler:Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

.field private mDesiredHomePackageName:Ljava/lang/String;

.field private mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

.field mDialogComponent:Ljava/lang/String;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mDragLayerBackground:Lcom/miui/home/launcher/Background;

.field private mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

.field private mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

.field private mDualClockObserver:Landroid/database/ContentObserver;

.field private mDuringMinusOneStartActivityForResult:Z

.field private mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

.field private mEditingModeExiting:Z

.field private mEditingState:I

.field private mElderlyManObserver:Landroid/database/ContentObserver;

.field private mErrorBar:Lcom/miui/home/launcher/ErrorBar;

.field private mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

.field private mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

.field private mFolderCling:Lcom/miui/home/launcher/FolderCling;

.field private mFolderDeltaAlpha:F

.field private mFolderDeltaScaleX:F

.field private mFolderDeltaScaleY:F

.field private mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

.field private mFreeStyleExists:Z

.field private mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

.field private mFsGesturePivotX:I

.field private mFsGesturePivotY:I

.field private mFsGestureServiceBinded:Z

.field private final mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

.field public mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalEdgeObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHasLaunchedAppFromFolder:Z

.field private mHideLandscapeShortcutMenuLayer:Z

.field private mHomeDataCreateTime:J

.field private mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

.field private mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

.field private mHotSeats:Lcom/miui/home/launcher/HotSeats;

.field private mHotseatEditingEnter:Landroid/view/animation/Animation;

.field private mHotseatEditingExit:Landroid/view/animation/Animation;

.field private mIconAnimatingAbort:Z

.field private mIconImageRect:Landroid/graphics/Rect;

.field private mIconLocation:[I

.field private mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

.field private mInAutoFilling:Z

.field private mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

.field private mIsAppLocating:Z

.field private mIsAppWidgetHostStartedListening:Z

.field private mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

.field private mIsChangingLockWallpaper:Z

.field private mIsDefaultIconObserver:Landroid/database/ContentObserver;

.field private mIsFolderAnimating:Z

.field private mIsFolderOpenedBeforeResume:Z

.field private mIsIconCopyAnimating:Z

.field private mIsLauncherReady:Z

.field private mIsMultiProcessMinusScreenShowing:Z

.field private mIsNewIntentNow:Z

.field private mIsPause:Z

.field private mIsStartingLockWallpaperPreviewActivity:Z

.field private mIsVisible:Z

.field private mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mLastHomeClickedTime:J

.field private mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

.field private mLastMotionEventLocation:Ljava/lang/String;

.field private mLastPauseTimeForNewInstall:J

.field private mLastPausedTime:J

.field private mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

.field private mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

.field private mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

.field private mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

.field private mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

.field private mLauncherView:Landroid/view/View;

.field private mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

.field private mLoadMinusOneRetryCount:I

.field private mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

.field private mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

.field private mLockScreenCellObserver:Landroid/database/ContentObserver;

.field private mLockWallpaperObserver:Landroid/database/ContentObserver;

.field private mLongClickInBackgroundMessageHandler:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

.field private mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

.field private mMinusViewGroup:Landroid/widget/FrameLayout;

.field private mMinusoneLoading:Z

.field private mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mModuleMessageHandler:Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

.field private mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

.field private mNeedLast:Z

.field private mNewInstalledApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/Launcher$OnResumeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOverLayoutProgress:F

.field private mOverviewPanel:Landroid/view/View;

.field private mPerfectIconsObserver:Landroid/database/ContentObserver;

.field private mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

.field private mPosInvalidItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionSnap:Landroid/view/View;

.field mPreviewComponent:Ljava/lang/String;

.field private mPullDownSettingsObserver:Landroid/database/ContentObserver;

.field private mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

.field private mRecentMessageHandler:Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

.field mResetFsGestureViewState:Ljava/lang/Runnable;

.field private mReverseComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

.field private mSavedState:Landroid/os/Bundle;

.field private mSceneAnimating:Z

.field private mSceneScreenLoading:Landroid/view/ViewGroup;

.field private mSceneScreenRef:Lcom/miui/home/launcher/CustomableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/CustomableReference<",
            "Lcom/miui/home/launcher/upsidescene/SceneScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenCellsSizeObserver:Landroid/database/ContentObserver;

.field private mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

.field private mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

.field private mScrimView:Lcom/miui/home/launcher/view/ScrimView;

.field private mSearchBar:Lcom/miui/home/launcher/SearchBar;

.field private mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

.field private mSearchBarObserver:Landroid/database/ContentObserver;

.field private mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

.field private mSecurityHideObserver:Landroid/database/ContentObserver;

.field private mSecurityHideStarted:Z

.field private mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

.field private mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

.field private mShowFsTransAnimation:Z

.field private mShowStatusBar:Z

.field mShowStatusBarRunnable:Ljava/lang/Runnable;

.field private mShowUserPresentAnimation:Z

.field private mSkipResetFsGestureViewState:Z

.field private mSlideUpSettingsObserver:Landroid/database/ContentObserver;

.field private mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

.field private mSmallWindowStateObserver:Landroid/database/ContentObserver;

.field private mSoftInputMode:I

.field private mSoundEffectObserver:Landroid/database/ContentObserver;

.field private mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

.field private mSpeedOfLightObserver:Landroid/database/ContentObserver;

.field private mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

.field private mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

.field private mStartedMamlAnimation:Z

.field private mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

.field private mStatusBarClockController:Lcom/miui/launcher/utils/StatusBarClockController;

.field private final mSystemAnimationObserver:Landroid/database/ContentObserver;

.field protected mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

.field private mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

.field private mTmpPos:[I

.field private mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

.field private mToken:Landroid/os/Binder;

.field private mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

.field private mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

.field mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

.field private mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

.field private mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

.field mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

.field private mVoiceServiceObserver:Landroid/database/ContentObserver;

.field private mWaitingForMarketDetail:Z

.field private mWaitingForResult:Z

.field private mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

.field private mWidgetItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

.field private mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

.field private mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

.field private mWindowFocus:Z

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;

.field private mWorkspaceLoading:Z

.field private mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

.field private myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1057
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    .line 5413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 5414
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5413
    invoke-static {v1}, Lmiui/os/FileUtils;->normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Download/mihome_splash.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/Launcher;->MIUI_HOME_SPLASH_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 774
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    .line 400
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    .line 430
    new-instance v1, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 467
    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 469
    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v1, 0x0

    .line 471
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 484
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 485
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 486
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    const-wide/16 v2, -0x1

    .line 487
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 488
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 490
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    .line 492
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    .line 494
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 496
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v4, 0x1

    .line 497
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 498
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    const/4 v5, 0x7

    .line 499
    iput v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 507
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 512
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    .line 513
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    .line 514
    new-instance v5, Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    .line 515
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    .line 516
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    .line 517
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 524
    new-instance v5, Lcom/miui/home/launcher/common/ConflictsManager;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ConflictsManager;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    const-wide/16 v5, 0x0

    .line 526
    iput-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 527
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 528
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 531
    new-instance v5, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    invoke-direct {v5, p0, v1}, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLongClickInBackgroundMessageHandler:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    const/4 v5, 0x2

    .line 540
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    .line 543
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 556
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 558
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 560
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 566
    new-instance v6, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    invoke-direct {v6}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    .line 578
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    .line 579
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 581
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 583
    new-instance v6, Lcom/miui/home/launcher/Launcher$1;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    .line 758
    new-instance v6, Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/LauncherLifecycleLog;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    .line 762
    new-instance v6, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-direct {v6}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    .line 779
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 780
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 1377
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 1382
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1525
    new-instance v6, Lcom/miui/home/launcher/Launcher$4;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1581
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1961
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f7d70a4    # 0.99f

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v8, v6, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 1962
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v8, 0x3ea3d70a    # 0.32f

    invoke-direct {v2, v7, v8, v3, v6}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 2237
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    .line 2507
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    .line 3285
    new-instance v2, Lcom/miui/home/launcher/Launcher$20;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$20;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    .line 3308
    new-instance v2, Lcom/miui/home/launcher/Launcher$21;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$21;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    .line 3315
    new-instance v2, Lcom/miui/home/launcher/Launcher$22;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$22;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    .line 3332
    new-instance v2, Lcom/miui/home/launcher/Launcher$23;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$23;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    .line 3339
    new-instance v2, Lcom/miui/home/launcher/Launcher$24;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$24;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3347
    new-instance v2, Lcom/miui/home/launcher/Launcher$25;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$25;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3357
    new-instance v2, Lcom/miui/home/launcher/Launcher$26;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$26;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3370
    new-instance v2, Lcom/miui/home/launcher/Launcher$27;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$27;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    .line 3388
    new-instance v2, Lcom/miui/home/launcher/Launcher$28;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$28;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3396
    new-instance v2, Lcom/miui/home/launcher/Launcher$29;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$29;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    .line 3406
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    .line 3407
    invoke-static {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->createAnimation(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    .line 3409
    new-instance v2, Lcom/miui/home/launcher/Launcher$30;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$30;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    .line 3426
    new-instance v2, Lcom/miui/home/launcher/Launcher$31;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$31;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3444
    new-instance v2, Lcom/miui/home/launcher/Launcher$32;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$32;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3451
    new-instance v2, Lcom/miui/home/launcher/Launcher$33;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$33;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    .line 3462
    new-instance v2, Lcom/miui/home/launcher/Launcher$34;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$34;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    .line 3469
    new-instance v2, Lcom/miui/home/launcher/Launcher$35;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$35;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    .line 3493
    new-instance v2, Lcom/miui/home/launcher/Launcher$36;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$36;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    .line 3511
    new-instance v2, Lcom/miui/home/launcher/Launcher$37;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$37;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    .line 3519
    new-instance v2, Lcom/miui/home/launcher/Launcher$38;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$38;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    .line 3526
    new-instance v2, Lcom/miui/home/launcher/Launcher$39;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$39;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    .line 3804
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    .line 3939
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    .line 3940
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    const-string v2, ""

    .line 4159
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4379
    new-instance v2, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    .line 5226
    new-instance v2, Lcom/miui/home/launcher/Launcher$52;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$52;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    .line 5646
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$TS_5cUzUov-yCBhgtQ-HX5oBEo8;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$TS_5cUzUov-yCBhgtQ-HX5oBEo8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    .line 5790
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 5791
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 6396
    new-instance v2, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDeleteCellScreenMessageHandler:Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    .line 6398
    new-instance v2, Lcom/miui/home/launcher/Launcher$61;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$61;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    .line 7020
    new-instance v2, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 7497
    new-instance v2, Lcom/miui/home/launcher/Launcher$72;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$72;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    .line 7523
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    .line 7730
    new-instance v2, Lcom/miui/home/launcher/Launcher$75;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$75;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    .line 7839
    new-instance v2, Lcom/miui/home/launcher/Launcher$76;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$76;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    .line 7947
    new-instance v2, Lcom/miui/home/launcher/Launcher$77;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$77;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    .line 7957
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 7980
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    .line 7981
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    .line 7986
    new-instance v2, Lcom/miui/home/launcher/Launcher$FsCallback;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$FsCallback;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .line 8093
    new-instance v2, Lcom/miui/home/launcher/Launcher$79;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$79;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    const/high16 v2, -0x40800000    # -1.0f

    .line 8213
    iput v2, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    .line 8270
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 8429
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    const/4 v0, -0x1

    .line 8588
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    .line 8721
    new-instance v0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModuleMessageHandler:Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    .line 8734
    new-instance v0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRecentMessageHandler:Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    .line 775
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;-><init>(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksChinese;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksChinese;-><init>(Lcom/miui/home/launcher/Launcher;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherCallbacks(Lcom/miui/home/launcher/LauncherCallbacks;)Z

    return-void
.end method

.method private abortBackAnimationOnChange()V
    .locals 1

    const/4 v0, 0x1

    .line 6991
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 6992
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz v0, :cond_0

    .line 6993
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    :cond_0
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    const-string v0, "input_method"

    .line 1621
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1622
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Launcher;)J
    .locals 2

    .line 345
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    return-wide v0
.end method

.method static synthetic access$10000(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    return-void
.end method

.method static synthetic access$10100(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p0
.end method

.method static synthetic access$10102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/miui/home/launcher/Launcher;)Landroid/content/ServiceConnection;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 345
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p0
.end method

.method static synthetic access$10302(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 345
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p1
.end method

.method static synthetic access$10402(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    return p0
.end method

.method static synthetic access$10800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/settings/LauncherGestureController;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Launcher;)Ljava/util/ArrayList;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    return-object p0
.end method

.method static synthetic access$11101(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 345
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->inflatePaView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 345
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 345
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleX:F

    return p1
.end method

.method static synthetic access$2202(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 345
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/EditingEntryThumbnailView;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/HotSeats;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/SearchBar;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 345
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p0
.end method

.method static synthetic access$2802(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 345
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p1
.end method

.method static synthetic access$2900(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherApplication;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FitSystemWindowView;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshAllAppsIcon()V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->updateTitleTip(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->changeToBackedupLockWallpaper()V

    return-void
.end method

.method static synthetic access$4300(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->autoChangeLockWallpaper(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method static synthetic access$4500(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    return-void
.end method

.method static synthetic access$4600(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 345
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    return p0
.end method

.method static synthetic access$4700(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->notifyFancyIconPresent()V

    return-void
.end method

.method static synthetic access$4900(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/miui/home/launcher/Launcher;J)V
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->startLockWallpaperPreviewActivity(J)V

    return-void
.end method

.method static synthetic access$5300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->requestGlobalFoldersPreinstallAd()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/miui/home/launcher/Launcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/miui/home/launcher/Launcher;J)Landroid/os/Bundle;
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->generateDefaultParams(J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lcom/miui/home/launcher/Launcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 345
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/Launcher;->geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->reportLockWallpaperFail()V

    return-void
.end method

.method static synthetic access$6502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->setLockWallpaperFromProvider(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p0
.end method

.method static synthetic access$6702(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkIntentPermissions(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6902(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 345
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p0
.end method

.method static synthetic access$7000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 345
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p1
.end method

.method static synthetic access$7100(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    return-void
.end method

.method static synthetic access$7202(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method static synthetic access$7500(Lcom/miui/home/launcher/Launcher;)Landroid/view/ViewGroup;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7502(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    return p0
.end method

.method static synthetic access$7800(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$7900(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getPackageNames(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    return p0
.end method

.method static synthetic access$8000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->removeEmptyFolders()V

    return-void
.end method

.method static synthetic access$8200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$8502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/miui/home/launcher/Launcher;I)Ljava/util/ArrayList;
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getGadgetList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8700(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8800(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Runnable;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p0
.end method

.method static synthetic access$9102(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/fsgesture/IFsGestureService;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return p0
.end method

.method static synthetic access$9300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return p0
.end method

.method static synthetic access$9400(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->notifyFsGuestureHomeStatus(Z)V

    return-void
.end method

.method static synthetic access$9500(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9600(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9700(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9800(Lcom/miui/home/launcher/Launcher;FF)V
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->updateScreenAlphaAndScale(FF)V

    return-void
.end method

.method static synthetic access$9900(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object p0
.end method

.method private adaptPNotchScreen(Landroid/view/Window;)V
    .locals 2

    .line 982
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 983
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 985
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 988
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "adaptPNotchScreen"

    .line 990
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private addHomeFeedContainer()V
    .locals 3

    .line 1804
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    .line 1805
    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    .line 1807
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    .line 1808
    new-instance v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 1809
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSettings()V

    return-void
.end method

.method private addNewInstallIndicator()V
    .locals 3

    .line 5665
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5667
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5668
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherProvider;->createdFirstTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5669
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$Um9UjGlWyb78FmlZOujevpsg8QI;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Um9UjGlWyb78FmlZOujevpsg8QI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5673
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5674
    new-instance v1, Lcom/miui/home/launcher/Launcher$54;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$54;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$xwiiRLhJo7yuKPHESE97qFW-zQ8;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$xwiiRLhJo7yuKPHESE97qFW-zQ8;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 5038
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setEditingStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private afterShowUserPresentAnimation()V
    .locals 5

    .line 5844
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5848
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5849
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    .line 5850
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v2, v3}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5851
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5855
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5856
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showQuickCallCellLayoutTitle()V

    .line 5857
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->alignIconsToTopWithSaveDb()V

    .line 5858
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    goto :goto_1

    .line 5860
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->alignScreenIfNeed()V

    .line 5862
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->preloadFolderContent()V

    .line 5863
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllAppsLabel()V

    .line 5864
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addNewInstallIndicator()V

    .line 5865
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_4

    .line 5866
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllUserDeepShortcuts()V

    .line 5868
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$2jPmlHgc9b7BqzzWWBBb-G2EjF8;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$2jPmlHgc9b7BqzzWWBBb-G2EjF8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5869
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    .line 5870
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 5871
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    .line 5872
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindServiceIfNeed()V

    .line 5874
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    .line 5875
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5876
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$ievxU5UR4ll_yNclBtCF6-ZjC4E;

    invoke-direct {v4, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ievxU5UR4ll_yNclBtCF6-ZjC4E;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5881
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/common/AppCategoryManager;->initAppCategoryListAsync(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 5882
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5883
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAppsView()V

    .line 5884
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5885
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 5887
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->trackShow()V

    .line 5888
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    .line 5889
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method private alignScreenIfNeed()V
    .locals 7

    .line 5893
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->shouldAlignScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5895
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIgnoreAlignScreenList()Ljava/lang/String;

    move-result-object v0

    .line 5897
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ","

    .line 5898
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    .line 5900
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5901
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v4

    .line 5902
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_1

    .line 5903
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    .line 5904
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5907
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    .line 5908
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setShouldAlignScreen(Z)V

    :cond_4
    return-void
.end method

.method private applyingDefaultTheme()Z
    .locals 8

    const-string v0, "/data/system/theme"

    .line 4055
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4056
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4057
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 4061
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 4062
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "icons"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4063
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private autoChangeLockWallpaper(Z)V
    .locals 1

    .line 3942
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3945
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$45;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$45;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 3986
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher$45;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private bindFolderPreviewIconsChanged(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 6154
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 6155
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 6157
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 2

    .line 4872
    new-instance v0, Lcom/miui/home/launcher/CustomableReference;

    .line 4873
    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isBigScreenLowMemory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/CustomableReference;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenRef:Lcom/miui/home/launcher/CustomableReference;

    return-void
.end method

.method private cancelIconBackAnimation()V
    .locals 2

    .line 6998
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6999
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "Launcher"

    const-string v1, "cancelMiuiThumbnailAnimation"

    .line 7000
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7001
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelMiuiThumbnailAnimation(Landroid/content/Context;)V

    return-void
.end method

.method private changeScreenContent(F)V
    .locals 2

    .line 1994
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    .line 1996
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 1997
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private changeScreenContentOnClose(F)V
    .locals 0

    .line 1983
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 1984
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeScreenContentOnOpen(F)V
    .locals 0

    .line 1978
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 1979
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeToBackedupLockWallpaper()V
    .locals 2

    .line 4047
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4048
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaper(Landroid/content/Context;)V

    .line 4049
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private changeViewByFsGestureState(Landroid/view/View;FF)V
    .locals 3

    const-string v0, "Launcher"

    .line 7934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeViewByFsGestureState,  view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",  alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",  scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7937
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 7940
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 7941
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 7942
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 7943
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 7944
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private checkAllAppsLabel()V
    .locals 2

    .line 6023
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$gT5-7ZdmPWqQfR51zEq51TaLbBw;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$gT5-7ZdmPWqQfR51zEq51TaLbBw;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAllUserDeepShortcuts()V
    .locals 4

    .line 5951
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 5952
    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 5953
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$1aY21UAq-wXP1fuP3G3fjivuD-4;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$1aY21UAq-wXP1fuP3G3fjivuD-4;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$Veo1Hgm3SRzayx3BINoK8AngyyM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$Veo1Hgm3SRzayx3BINoK8AngyyM;

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkDarkMode()V
    .locals 1

    .line 8354
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8355
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method private checkDeepShortcuts(Landroid/os/UserHandle;)V
    .locals 11

    const-string v0, "Launcher"

    .line 5970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDeepShortcuts, use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " check deep shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 5973
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5974
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5975
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 5976
    invoke-virtual {v3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5980
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->queryForPinnedShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 5982
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/launcher/common/ShortcutInfoCompat;

    const-string v7, "com.android.contacts"

    .line 5983
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5984
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v0, "Launcher"

    const-string v3, "checkDeepShortcuts, contact deep shortcut don\'t match currentMode"

    .line 5985
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5990
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5991
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5992
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5993
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5994
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5996
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Launcher"

    const-string v9, "checkUserDeepShortcuts, update deepShortcut(%s, %s, %s)"

    .line 5997
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v6

    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/miui/home/launcher/ShortcutChangeTask;

    invoke-direct {v4, v8, v1, v0, p0}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_1

    .line 6002
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->makeInstallShortcutIntent(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v3

    .line 6003
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/home/launcher/Launcher$58;

    invoke-direct {v5, p0, v3, v0}, Lcom/miui/home/launcher/Launcher$58;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 6016
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    const-string v2, "Launcher"

    const-string v7, "checkUserDeepShortcuts, remove deepShortcut(%s, %s, %s)"

    .line 6017
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6018
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/home/launcher/ShortcutChangeTask;

    invoke-direct {v7, v1, v0, v1, p0}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method private checkForLocaleChange()Z
    .locals 9

    .line 1085
    new-instance v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/miui/home/launcher/Launcher$1;)V

    .line 1086
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 1088
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1090
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1091
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    iget v4, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1094
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1096
    iget v6, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1097
    iget v1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1099
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    if-ne v5, v4, :cond_1

    if-eq v1, v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    :goto_1
    if-eqz v2, :cond_2

    .line 1102
    iput-object v3, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1103
    iput v5, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1104
    iput v1, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1106
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    return v8

    :cond_2
    return v7
.end method

.method private checkIntentPermissions(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.action.CALL"

    .line 4386
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4387
    invoke-static {p0}, Lcom/miui/home/launcher/common/PermissionUtils;->checkCallPhonePermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 4388
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/PermissionUtils;->requestCallPhonePermissions(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkInvalidateGadget()V
    .locals 4

    .line 5801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5802
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .line 5803
    instance-of v3, v2, Lcom/miui/home/launcher/gadget/MtzGadget;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/gadget/MtzGadget;

    .line 5804
    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5805
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v3, :cond_0

    .line 5806
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5809
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5810
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    .line 5811
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f10021a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 5812
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private checkNewInstalledAppsBeStarted()V
    .locals 4

    .line 1583
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1584
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 1585
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1586
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1588
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1590
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1591
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1594
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/Launcher$5;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$5;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkOrientation()V
    .locals 4

    .line 8339
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8340
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    const-string v1, "Launcher"

    .line 8341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen orientation changed, newOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8342
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8343
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 8344
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenOrientationChanged()V

    .line 8346
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8347
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->requestApplyInsetsOfNavStubView()V

    .line 8349
    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    :cond_2
    return-void
.end method

.method private clearForReload()V
    .locals 3

    .line 5401
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5402
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 5403
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5404
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5405
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 5406
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_0

    .line 5408
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5409
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->removeAllScreens()V

    .line 5410
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearScreens()V

    return-void
.end method

.method private clearLastAddInfo()V
    .locals 1

    .line 2164
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 2165
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    const/4 v0, 0x0

    .line 2166
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    :cond_0
    return-void
.end method

.method private clearRemoteAnimationProvider()V
    .locals 1

    .line 8688
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8689
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 8690
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->clearRemoteAnimationProvider()V

    :cond_0
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1651
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1652
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v9, p0

    .line 2112
    iget-object v0, v9, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "completeAddAppWidget error, mLastAddInfo isn\'t class(LauncherAppWidgetProviderInfo)"

    .line 2113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2116
    :cond_0
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 2121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "appWidgetId"

    .line 2123
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Launcher"

    .line 2124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeAddAppWidget with Intent extras appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    .line 2127
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v2

    const-string v3, "Launcher"

    .line 2128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "completeAddAppWidget with mLastAddInfo appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ne v2, v1, :cond_3

    const-string v0, "Launcher"

    const-string v1, "completeAddAppWidget error, invalidate appWidgetId"

    .line 2132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void

    .line 2138
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 2140
    iget-wide v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 2141
    iget-object v2, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    const-wide/16 v4, -0x64

    iget v6, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v7, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_1

    .line 2144
    :cond_4
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v3, v9, v1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2145
    invoke-direct {v9, v1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2148
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v9, v2, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2150
    iget-object v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v9, v3, v4}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 2151
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v2, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2152
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2153
    iget-object v2, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/CellLayout;->getWidgetMeasureSpec(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2155
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v3 .. v8}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 2157
    iget-object v10, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v11, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v12, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v13, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iget v14, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v15, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v16

    .line 2157
    invoke-virtual/range {v10 .. v16}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 2160
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void
.end method

.method private completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;
    .locals 6

    .line 2063
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutProviderInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v0

    move-object v4, v3

    goto :goto_1

    .line 2065
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2066
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2067
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v5, v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v5, :cond_2

    .line 2068
    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 2071
    :goto_1
    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    const/4 v5, 0x1

    .line 2072
    invoke-direct {p0, v0, v1, v5}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    .line 2075
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1, p1, v0, v5}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2077
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    .line 2078
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2079
    invoke-virtual {p0, p1, v5, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v3
.end method

.method private completeAddShortcutToggle(I)Landroid/view/View;
    .locals 2

    .line 2098
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ToggleId"

    .line 2099
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2100
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 2101
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2102
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private disconnectFsGuestureService()V
    .locals 3

    .line 8116
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "com.miui.home"

    .line 8118
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/fsgesture/IFsGestureService;->unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8120
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 8123
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-void
.end method

.method private doAllEventBusHandlers(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc

    .line 8170
    new-array v0, v0, [Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 8171
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 8170
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$WRjHccNuN6TkfE5iq0ZzJFffiV0;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$WRjHccNuN6TkfE5iq0ZzJFffiV0;-><init>(Ljava/util/function/Consumer;)V

    .line 8173
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private doSelfProtect()V
    .locals 3

    .line 740
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    .line 741
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->setProcessForeground(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setProcessForeground"

    .line 743
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V
    .locals 10

    .line 4770
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->moveDragViewToFirst(Landroid/view/View;)V

    .line 4771
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 4772
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedDragSources()[Lcom/miui/home/launcher/DragSource;

    move-result-object v9

    .line 4774
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4775
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 4777
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 4778
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 4777
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/FolderCling;->beforeDragStart(I)V

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-nez p2, :cond_1

    .line 4781
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v3, 0x0

    .line 4782
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDragIconScaleRatio()F

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p3

    mul-float v4, p2, p3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v0

    move-object v5, v9

    .line 4781
    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/launcher/DragController;->startDrag([Lcom/miui/home/launcher/ShortcutInfo;ZF[Lcom/miui/home/launcher/DragSource;IIZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4784
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4788
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    .line 4789
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v9

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    goto :goto_1

    .line 4792
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2, v0, v9, v3, v2}, Lcom/miui/home/launcher/DragController;->autoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;II)V

    .line 4794
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 4798
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->afterDragStart()V

    .line 4800
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragMultiItems()V

    return-void
.end method

.method private dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V
    .locals 1

    .line 4758
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4759
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Folder;->startDrag(Landroid/view/View;)V

    goto :goto_0

    .line 4761
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V

    .line 4763
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_1

    .line 4764
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->saveCheckedStatus()V

    .line 4766
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragItem(Landroid/view/View;)V

    return-void
.end method

.method private fadeInOrOutScreenContentWhenFolderAnimate(Z)V
    .locals 3

    .line 1965
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 1966
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 1968
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_1

    .line 1970
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 1971
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 1972
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 1973
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    :goto_1
    return-void
.end method

.method private findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 3128
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method private findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 8

    const-wide/16 v1, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 3132
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Launcher;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method private findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3136
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 3137
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 3142
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p7, :cond_2

    const p1, 0x7f1001ca

    .line 3145
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    return-object p2

    .line 3150
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    const/4 p3, 0x0

    .line 3151
    aget p3, p1, p3

    iput p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    const/4 p3, 0x1

    .line 3152
    aget p1, p1, p3

    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 3153
    iput p5, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 3154
    iput p6, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const/16 p1, -0x64

    .line 3155
    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 3156
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-object p2
.end method

.method private geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 3795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showTime"

    .line 3796
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "currentWallpaperInfo"

    .line 3797
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wallpaperInfos"

    .line 3798
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adWallpaperInfos"

    .line 3799
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dialogComponent"

    .line 3800
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private generateDefaultParams(J)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGadgetList(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation

    .line 6802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6803
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .line 6804
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 6805
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 6806
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getLastLaunchShortcutIcon(Ljava/util/List;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Lcom/miui/home/launcher/ShortcutInfo;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 6946
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 6949
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x1

    .line 6950
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6951
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6952
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getLastLaunchTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getLastLaunchTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 8422
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 8423
    instance-of v0, p0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8424
    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0

    .line 8426
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;
    .locals 1

    .line 6680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6683
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6684
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeepShortcutInfo;

    :goto_0
    return-object p1

    .line 6681
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "packageName or deepShortcutId must not null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DeepShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 6700
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6701
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v8, Lcom/miui/home/launcher/-$$Lambda$Launcher$5oStLthEjh3Sgo8Z9SjCdpaBw_U;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/-$$Lambda$Launcher$5oStLthEjh3Sgo8Z9SjCdpaBw_U;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method private getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 3903
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_json"

    .line 3904
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "getNextLockWallpaperUri"

    .line 3905
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/launcher/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "result_json"

    .line 3910
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3913
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 3921
    new-instance v0, Lcom/miui/home/launcher/Launcher$44;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$44;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 3926
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher$44;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 3928
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p3, p4, p2}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const/4 p3, 0x1

    .line 3930
    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3931
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 3935
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPackageNames(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5702
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$I96hK-k9-ReaEI9ZFYiYyuiZ184;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$I96hK-k9-ReaEI9ZFYiYyuiZ184;-><init>(Ljava/util/ArrayList;)V

    .line 5703
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private getShortcutInfoWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 6649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6650
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$P8fycY9R82873zVvpI4jSzwiDKw;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$P8fycY9R82873zVvpI4jSzwiDKw;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 2514
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    return p1

    .line 2516
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2517
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getNextTypeScreenIndex()I

    move-result p1

    return p1

    .line 2519
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    return p1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .line 1646
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goOutOldLayer()V
    .locals 6

    .line 4925
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    .line 4926
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 4927
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 4929
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v4, "translationY"

    .line 4930
    new-array v2, v2, [F

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4931
    new-instance v2, Lcom/miui/home/launcher/Launcher$50;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$50;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4939
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private handleActivityNotFound(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .line 4514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4517
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "profile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4518
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v3, "profile"

    .line 4519
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    .line 4520
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4521
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getBackupState(Landroid/content/Context;)I

    move-result p1

    const-string v3, "Launcher"

    .line 4522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click backuping app("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "), state="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_1

    const p1, 0x7f100078

    .line 4524
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const p1, 0x7f100079

    .line 4526
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return v2

    .line 4531
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 4533
    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "com.xiaomi.market"

    .line 4535
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4536
    new-instance p2, Lmiui/app/AlertDialog$Builder;

    const/16 v0, 0x8

    invoke-direct {p2, p0, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100143

    .line 4537
    invoke-virtual {p2, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f100142

    .line 4538
    invoke-virtual {p2, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1000a3

    const/4 v1, 0x0

    .line 4539
    invoke-virtual {p2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1000bd

    new-instance v1, Lcom/miui/home/launcher/Launcher$46;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$46;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 4540
    invoke-virtual {p2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    .line 4551
    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    .line 4552
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->show()V

    return v2

    .line 4557
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 4558
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4559
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4560
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 4561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_5

    .line 4562
    new-instance p2, Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4563
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_5
    return v1
.end method

.method private hasAppBeUsed(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;)Z"
        }
    .end annotation

    .line 5695
    invoke-static {p2}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5696
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5697
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/launcher/common/AppUsageStat;

    invoke-virtual {p1}, Lcom/miui/launcher/common/AppUsageStat;->getLastUsedTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hideAppView()V
    .locals 2

    .line 8540
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8541
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method private inflatePaView()V
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "Launcher"

    const-string v2, "inflating PaView"

    .line 1856
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.miui.home.launcher.assistant.ui.view.AssistHolderView"

    .line 1857
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1858
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/util/AttributeSet;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1859
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 v3, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1860
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1861
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1862
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 1863
    iput v4, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1864
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget v2, v2, Lcom/miui/home/launcher/MinusOneScreenView;->mCurrentScreenIndex:I

    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->sendMinusScreenUpdateBroadcast(Z)V

    const-string v1, "Launcher"

    const-string v2, "loadPaView SUCCESS"

    .line 1865
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Launcher"

    const-string v3, "Exception"

    .line 1868
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1871
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    .line 1872
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    if-le v1, v0, :cond_1

    const-string v0, "Launcher"

    const-string v1, "restart process"

    .line 1875
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method private initConflictItems()V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1038
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1039
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1040
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1041
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1042
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    return-void
.end method

.method private initLauncher()V
    .locals 1

    .line 996
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$f1o93n0s5MOzRbZORf-L1-BaRtA;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$f1o93n0s5MOzRbZORf-L1-BaRtA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLoadingAsyncInflateManager()V
    .locals 1

    .line 5708
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    if-eqz v0, :cond_0

    .line 5709
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->shutDownNow()V

    .line 5711
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-void
.end method

.method public static final isClipTransitionDevice()Z
    .locals 1

    .line 1059
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    return v0
.end method

.method private isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z
    .locals 2

    .line 5962
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "is_elderly_man_shortcut"

    .line 5964
    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5966
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isDisableUpdateStatusBarClock()Z
    .locals 2

    .line 5260
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5261
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5262
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->isDisableUpdateStatusBarClock()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isEnableIconShadow()Z
    .locals 1

    .line 1046
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sPrefShowIconShadow:Z

    return v0
.end method

.method public static isInNormalEditing(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStatusBarShow()Z
    .locals 1

    .line 5256
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isViewInFolder(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 4702
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 4703
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$8fxjfdpJa1wlHPvgpSbLjGDnOe0(Lcom/miui/home/launcher/Launcher;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContentOnClose(F)V

    return-void
.end method

.method public static synthetic lambda$Pngo_DKKRgVfGiGEXgwlF2ulN4g(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshAllAppsIcon()V

    return-void
.end method

.method public static synthetic lambda$ZFvivUCZcNuHa1CaF6RtcxTON4c(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshProgressIcons()V

    return-void
.end method

.method public static synthetic lambda$addNewInstallIndicator$22(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 3

    .line 5670
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getNewInstalledShortcutInfos(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    .line 5669
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic lambda$addNewInstallIndicator$25(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;Ljava/util/Map;)V
    .locals 1

    .line 5680
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$keDTVvxxZ9_F_7QZ1egvUVXNwuA;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$keDTVvxxZ9_F_7QZ1egvUVXNwuA;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;)V

    .line 5681
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$gwfh-WIAC5HS0_CFMtdTspih2ec;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$gwfh-WIAC5HS0_CFMtdTspih2ec;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 5682
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$addShortcut$36(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/view/View;
    .locals 0

    .line 6501
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$addShortcut$37(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZLandroid/view/View;)V
    .locals 11

    .line 6502
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    move-object v1, p4

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    move v8, p2

    move v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZZZ)V

    return-void
.end method

.method public static synthetic lambda$addToAppsList$44(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7270
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$addToAppsList$45(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/LauncherApplication;)V
    .locals 0

    .line 7273
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->checkCanBeDeleted(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$28(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 5868
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/MarketUtils;->startUserGuide(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$29(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 2

    .line 5877
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5878
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindAddedShortcuts$34(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 1

    .line 6112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6113
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->tellAllFoldersWhenAppAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindAppsRemoved$47(Ljava/util/ArrayList;)Ljava/util/stream/Stream;
    .locals 0

    .line 7355
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindAppsRemoved$48(Ljava/util/List;)Ljava/util/stream/Stream;
    .locals 0

    .line 7356
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$bindAppsRemoved$51(Lcom/miui/home/launcher/Launcher;Ljava/util/function/Supplier;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    .line 7358
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$MFlvgKldDutEWaUs8F5Vqj4gbyo;

    invoke-direct {v0, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$MFlvgKldDutEWaUs8F5Vqj4gbyo;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7359
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$6AVkJ3X2UG6i3MUisK0aUz_IgiM;

    invoke-direct {v0, p0, p3, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$6AVkJ3X2UG6i3MUisK0aUz_IgiM;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;Ljava/util/List;)V

    .line 7362
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 7368
    instance-of p1, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez p1, :cond_0

    .line 7369
    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->bindAppInfosRemoved(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindAppsRemoved$54(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    .line 7375
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zF71W_gDMlW2XWgzmvcDzKLZd28;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zF71W_gDMlW2XWgzmvcDzKLZd28;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7376
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$WrVnFqLbuFiV0G5NRY6fcJhBmSE;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$WrVnFqLbuFiV0G5NRY6fcJhBmSE;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7379
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$bindShortcutsChangedOnAppUpdate$35(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 7

    .line 6131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6132
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AppInfo;

    .line 6134
    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 6135
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6136
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6137
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getRuntimeStatusFlags()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setRuntimeStatusFlags(I)V

    const/4 v5, 0x0

    .line 6138
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AppInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 6139
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 6140
    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6141
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setThirdApplicationConfig(Ljava/lang/String;)V

    .line 6142
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChanged(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 6143
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6144
    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6149
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->bindFolderPreviewIconsChanged(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$checkAllAppsLabel$33(Lcom/miui/home/launcher/Launcher;)V
    .locals 10

    .line 6024
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 6025
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 6026
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6027
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6028
    iget-object v0, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 6029
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 6030
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6032
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 6033
    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$Launcher$vhm6pE2djcjXdw7kKvOiSA3BhNc;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v3

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/-$$Lambda$Launcher$vhm6pE2djcjXdw7kKvOiSA3BhNc;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V

    .line 6066
    invoke-static {v9}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$checkAllUserDeepShortcuts$30(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V
    .locals 0

    .line 5954
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDeepShortcuts(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$checkAllUserDeepShortcuts$31(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "checkAllDeepShortcuts"

    .line 5955
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$doAllEventBusHandlers$56(Ljava/util/function/Consumer;Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8175
    invoke-interface {p1}, Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;->getEventBusHandlers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 8176
    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getLoadedDeepShortcutList$40(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6702
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6703
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isDeepShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 6704
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6705
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p3, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6706
    invoke-virtual {v2}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6707
    :cond_3
    check-cast v1, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic lambda$getPackageNames$26(Ljava/util/ArrayList;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 5703
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithIntent$39(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6669
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6670
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    .line 6671
    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6672
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithName$38(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6651
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6652
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6653
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6654
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6655
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6656
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShowingItem$43(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 7126
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v1

    .line 7127
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/IBackAnimView;->getLocationOnScreen([I)V

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 7129
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7130
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    .line 7132
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7134
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 7135
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez p2, :cond_4

    if-lez v1, :cond_4

    .line 7137
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 7138
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 7139
    :cond_1
    instance-of v2, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v2, :cond_2

    .line 7140
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    goto :goto_0

    .line 7141
    :cond_2
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->is720Mode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7142
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7144
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 7148
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7149
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7150
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$initLauncher$7(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 997
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 998
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerContentObservers()V

    .line 999
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    .line 1001
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->applyingDefaultTheme()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsDefaultThemeApplied:Z

    .line 1003
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsInSnapShotMode()V

    .line 1004
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->requestIsAppStoreEnabled()V

    .line 1005
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkForLocaleChange()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_1

    .line 1006
    :cond_0
    invoke-static {}, Lmiui/util/FileAccessable$Factory;->clearCache()V

    .line 1008
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaperProviderIfNeeded(Landroid/content/Context;)V

    .line 1009
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".enable_share_progress_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1011
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setCompatibilityVersionIfNeed()V

    .line 1013
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    return-void
.end method

.method static synthetic lambda$loadPaView$11(Lcom/miui/home/launcher/module/ModuleManagerCompat;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const-string p1, "com.miui.personalassistant"

    .line 1840
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$new$21(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 5647
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5648
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 5649
    :cond_0
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 5650
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 5651
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p2

    sub-int/2addr p2, p1

    return p2

    .line 5653
    :cond_1
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_2

    .line 5654
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr p2, p1

    return p2

    .line 5656
    :cond_2
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public static synthetic lambda$null$19(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5288
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->changeStatusBarMode()V

    return-void
.end method

.method public static synthetic lambda$null$23(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 5681
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->hasAppBeUsed(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/Map;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic lambda$null$24(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 5683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show indicator, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 5684
    iput v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 5685
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 5686
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 5687
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5688
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic lambda$null$32(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V
    .locals 0

    .line 6034
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemUserInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6037
    iget p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_1

    const/high16 p1, 0xc0000

    .line 6038
    invoke-virtual {p3, p4, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6043
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 6045
    :cond_1
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6048
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6049
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/miui/home/launcher/Launcher$59;

    invoke-direct {p4, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$59;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/CharSequence;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p5, :cond_3

    const-string p1, "Launcher"

    .line 6060
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "check lable is last "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "pref_key_last_label_locale"

    .line 6063
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 6061
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$null$49(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 7360
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    .line 7361
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$null$50(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7363
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getRuntimeStatusFlags()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setRuntimeStatusFlags(I)V

    const-string p1, "Launcher"

    .line 7364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove icon when bind apps removed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7365
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->needRemoveFromDB(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    .line 7366
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unCheckShortcut(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$null$52(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 1

    .line 7377
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7378
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMatched(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$null$53(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 7380
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7381
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7382
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic lambda$oQp6NMjnyK_DA-uy4MAy0awe8CM(Lcom/miui/home/launcher/Launcher;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContentOnOpen(F)V

    return-void
.end method

.method public static synthetic lambda$onClick$15(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 4300
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->checkForGameFolder(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$onCreate$0()V
    .locals 1

    .line 825
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->migrateData()V

    .line 827
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$1(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "migrateData"

    .line 829
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 873
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->tryToRegisterWidgetListener()V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "tryToRegisterWidgetListener"

    .line 874
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 880
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method static synthetic lambda$onCreate$5(Ljava/lang/Object;)V
    .locals 1

    .line 931
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$6(Ljava/lang/Object;)V
    .locals 1

    .line 935
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onDestroy$14(Ljava/lang/Object;)V
    .locals 1

    .line 2695
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2696
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onResume$10(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->hookViewRootImpl(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic lambda$onResume$8(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->startFallbackHomeInIdleHander(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onResume$9(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1359
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    return-void
.end method

.method public static synthetic lambda$onWindowFocusChanged$55(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7544
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method

.method public static synthetic lambda$refreshProgressIcons$27(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 5818
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5819
    instance-of v2, v1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v2, :cond_0

    .line 5820
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onIconChanged(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$removeDeepShortcut$41(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 6730
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p1

    .line 6729
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->unpinShortcutIfExist(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$removeFromAppsList$46(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7282
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$resetScreenContent$13(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 2006
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setupAnimations$12(Lcom/miui/home/launcher/Launcher;F)V
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getUpdateListener()Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;->onAnimationUpdate(F)V

    return-void
.end method

.method public static synthetic lambda$showStatusBar$18(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    .line 5242
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->isStatusBarShow()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 5246
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5247
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 5248
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    goto :goto_0

    :cond_1
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    :goto_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5251
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$startActivity$16(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 1

    .line 4445
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4446
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 4445
    invoke-static {p0, v0, p2, p1, p3}, Lcom/miui/launcher/utils/PortableUtils;->startMainActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$startActivityForResult$17(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 4496
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    :cond_0
    if-lt p1, v1, :cond_1

    .line 4499
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 4501
    :cond_1
    invoke-static {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->access$11101(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$updateShortcut$42(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/Intent;)V
    .locals 1

    .line 6828
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6829
    invoke-virtual {v0, p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->updateNormalShortcut(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateStatusBarClock$20(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 5288
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$DFJcRgkvN-cHZ_YMg-ZP-3TaCKk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$DFJcRgkvN-cHZ_YMg-ZP-3TaCKk;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadPaView()V
    .locals 3

    .line 1830
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    .line 1831
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    if-eqz v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "loadPaView module is loading"

    .line 1832
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1835
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1836
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    const-string v1, "Launcher"

    const-string v2, "loadPaView start"

    .line 1838
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$jMmLcqvm5g5_1XB_FkC0iZy3VEA;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$jMmLcqvm5g5_1XB_FkC0iZy3VEA;-><init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V

    new-instance v0, Lcom/miui/home/launcher/Launcher$8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private locateApp(Ljava/lang/String;)Z
    .locals 6

    .line 2448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2451
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2452
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2453
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 2456
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2457
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2460
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2461
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 2463
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2464
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    .line 2466
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    .line 2467
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2470
    :cond_5
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 2471
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 2472
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2473
    new-instance v3, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForUserId(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 2474
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2476
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2477
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 2479
    :cond_6
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2480
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v4, v5, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2482
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2483
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onStartHighlightLocatedApp()V

    return v2

    :cond_8
    const/4 v3, 0x2

    .line 2488
    new-array v3, v3, [Ljava/lang/Integer;

    .line 2489
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2488
    invoke-virtual {p0, p1, v0, v3}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 2491
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2492
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    :cond_9
    if-eqz v0, :cond_a

    .line 2494
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2495
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onStartHighlightLocatedApp()V

    return v2

    :cond_a
    return v1
.end method

.method private locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2524
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2525
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 2526
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I

    move-result v2

    .line 2527
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2528
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/lit16 v6, v5, 0x12c

    if-eqz v3, :cond_3

    .line 2529
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Workspace;->getScreenSnapMaxDuration()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    add-int/2addr v6, v7

    .line 2531
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2532
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v7, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2535
    :cond_4
    iget-wide v7, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v9, -0x64

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7

    iget-wide v7, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    .line 2543
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/home/launcher/Launcher$16;

    invoke-direct {v7, p0, v1, p1, v5}, Lcom/miui/home/launcher/Launcher$16;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;I)V

    int-to-long v5, v6

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    return v0

    .line 2537
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$15;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$15;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    int-to-long v5, v6

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    if-eqz v3, :cond_8

    .line 2593
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$17;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$17;-><init>(Lcom/miui/home/launcher/Launcher;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return v4
.end method

.method private makeUnableToStartActivityToast()V
    .locals 2

    .line 4473
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f10002e

    .line 4474
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f10002d

    .line 4476
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private needCancelBackAnimationWhenWorkspaceScroll()Z
    .locals 3

    .line 6973
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6974
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 6975
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    return v2
.end method

.method private needRemoveFromDB(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 7343
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7344
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7345
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getRuntimeStatusFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyFancyIconPresent()V
    .locals 1

    .line 6348
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 6349
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    .line 6350
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private notifyFsGuestureHomeStatus(Z)V
    .locals 2

    .line 8127
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8128
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$80;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$80;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8137
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    invoke-interface {v0, p1}, Lcom/android/systemui/fsgesture/IFsGestureService;->notifyHomeStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "notify home status"

    .line 8139
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 6

    .line 1429
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1430
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 1431
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1457
    :pswitch_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 1454
    :pswitch_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 1451
    :pswitch_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 1448
    :pswitch_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 1443
    :pswitch_4
    iget-wide v2, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1444
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 1440
    :pswitch_5
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 1437
    :pswitch_6
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 1434
    :pswitch_7
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1462
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1463
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    :cond_2
    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    .line 1465
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyGadgets(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onAppWidgetReset()V
    .locals 1

    .line 4257
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    return-void
.end method

.method private onDarkModeChanged()V
    .locals 6

    .line 8360
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8361
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->onDarkModeChanged()V

    .line 8362
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 8364
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_1

    .line 8365
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->onDarkModeChanged()V

    .line 8366
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 8368
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 8369
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v2, "color_mode"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8370
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8371
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 8372
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    .line 8373
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, v4, v5}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    if-eqz v0, :cond_3

    .line 8375
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->autoShowHideFeed(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 8378
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8380
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onDarkModeChange()V

    .line 8382
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    .line 8383
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAllAppWidgetOptions()V

    .line 8384
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_5

    .line 8385
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    :cond_5
    return-void
.end method

.method private onLauncherComeBackFromOtherApp(Ljava/lang/String;)V
    .locals 1

    .line 7091
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7092
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeComeBackEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onUninstallShortcut(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 6739
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6740
    instance-of v0, v0, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    .line 6741
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    return-void

    :cond_1
    return-void
.end method

.method public static performLayoutNow(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 7472
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7473
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7472
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 7474
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method private preloadFolderContent()V
    .locals 4

    .line 5939
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 5941
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/home/launcher/Launcher$57;

    invoke-direct {v3, p0, v1}, Lcom/miui/home/launcher/Launcher$57;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepairUserPersentAnimation()V
    .locals 1

    .line 6374
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6375
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    .line 6376
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->prepareUserPresentAnimation()V

    :cond_0
    return-void
.end method

.method private prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 9

    .line 7648
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDuplicateIconWhenRecommendAdded(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7651
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7652
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getMarketPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    const/4 v2, 0x0

    .line 7654
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setStarted(Z)V

    .line 7655
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 7656
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7657
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7658
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    return-object v0
.end method

.method private prepareSceneMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2768
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2769
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f100175

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x42

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 2771
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f100179

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x45

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :goto_0
    const/4 v0, 0x1

    .line 2773
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2774
    invoke-interface {p1, v0, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return v0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 3

    const/4 v0, 0x0

    .line 1121
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1122
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1123
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1124
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1135
    :catch_0
    :cond_0
    throw p0

    :catch_1
    move-object v1, v0

    :catch_2
    if-eqz v1, :cond_1

    goto :goto_0

    :catch_3
    move-object v1, v0

    :catch_4
    if-eqz v1, :cond_1

    goto :goto_0

    :catch_5
    :cond_1
    :goto_2
    return-void
.end method

.method private refreshAllAppsIcon()V
    .locals 5

    .line 5827
    invoke-static {}, Lcom/miui/launcher/utils/MamlUtils;->clearMamlCache()V

    .line 5828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5829
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    .line 5830
    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 5831
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 5833
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5834
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5836
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5838
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 5839
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v3, v4, v2}, Lcom/miui/home/launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private refreshFolderIcons()V
    .locals 4

    .line 5927
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 5929
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/home/launcher/Launcher$56;

    invoke-direct {v3, p0, v1}, Lcom/miui/home/launcher/Launcher$56;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshProgressIcons()V
    .locals 2

    .line 5817
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$MGrf5qxBTODe5JlUlQc2NPSaBQE;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$MGrf5qxBTODe5JlUlQc2NPSaBQE;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 4

    .line 3598
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 3599
    new-instance v0, Lcom/miui/home/launcher/Launcher$40;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$40;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3717
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PRIVACY_MODE_CHANGED"

    .line 3718
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3719
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3720
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android_secret_code"

    .line 3721
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3722
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3723
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.finger.fast.unlock"

    .line 3724
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3725
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3726
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3727
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3728
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3729
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3730
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3731
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3732
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3733
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3734
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mihomemanager.clearMiuiHome"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3735
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3736
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3737
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3738
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.action.appcompatibility.update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3739
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3740
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3741
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3742
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3743
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3744
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3745
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3746
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3748
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 3749
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3750
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerContentObservers()V
    .locals 6

    .line 3166
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3167
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_screen_cells_size"

    .line 3170
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 3169
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "key_miui_mod_icon_enable"

    .line 3173
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3172
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "light_speed_app"

    .line 3175
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_wallpaper_provider_authority"

    .line 3177
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3176
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_lock_screen_cells"

    .line 3180
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3179
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "force_fsg_nav_bar"

    .line 3183
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3182
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "button_voice_service"

    .line 3186
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3185
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_OPTION_STATUS"

    .line 3187
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_ENTRANCE_STATUS"

    .line 3189
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launchMiBrowserWhileSwipe"

    .line 3191
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_pulldown_gesture"

    .line 3193
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_slideup_gesture"

    .line 3195
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "com.miui.newhome.preferences.key_can_use_new_home"

    .line 3197
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "delete_sound_effect"

    .line 3199
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "open_personal_assistant"

    .line 3201
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "elderly_mode"

    .line 3203
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    const-string v1, "content://com.miui.securitycenter.provider/update_privacyapps_icon"

    .line 3207
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3206
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3210
    :catch_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 3211
    new-instance v1, Lcom/miui/home/launcher/Launcher$DualClockObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Launcher$DualClockObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    const-string v1, "auto_dual_clock"

    .line 3212
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_id"

    .line 3214
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_timezone"

    .line 3216
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3219
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3220
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    .line 3222
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "darken_wallpaper_under_dark_mode"

    .line 3223
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3226
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "is_default_icon"

    .line 3227
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3229
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3230
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->registerAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3232
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "freeform_window_state"

    .line 3233
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3235
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v1, "freeform_package_name"

    .line 3236
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3238
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3240
    :cond_4
    invoke-static {}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSystemAnimationObserverUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3242
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSearchBarObserver()V
    .locals 4

    .line 3294
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 3295
    new-instance v0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$SearchBarObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    .line 3296
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_home_screen_search_bar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private rejectEditingModeChanging(I)Z
    .locals 2

    .line 5031
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 5034
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result p1

    return p1
.end method

.method private reloadClockIfNeed(Z)V
    .locals 2

    const-string v0, "Launcher.DualClock"

    const-string v1, "reloadClockIfNeed"

    .line 3766
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    new-instance v0, Lcom/miui/home/launcher/Launcher$41;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$41;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    new-instance p1, Lcom/miui/home/launcher/Launcher$42;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Launcher$42;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private removeEmptyFolders()V
    .locals 4

    .line 7820
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7821
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7822
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7823
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7824
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    .line 7825
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v3

    if-nez v3, :cond_0

    .line 7826
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7829
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 7830
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7831
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_1

    .line 7833
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 7834
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 4

    .line 2199
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2200
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    const/4 v0, 0x0

    .line 2202
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/Gadget;

    .line 2203
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 2209
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2210
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 2211
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 2212
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2214
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2217
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 2218
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    return-void
.end method

.method private removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4820
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4821
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Workspace;

    if-eqz v2, :cond_0

    .line 4822
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Workspace;->onDragStarted(Landroid/view/View;)V

    .line 4824
    :cond_0
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Folder;

    if-eqz v2, :cond_1

    .line 4825
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    .line 4826
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4827
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 4828
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4829
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    .line 4832
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->saveCheckedStatus()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 1

    .line 4974
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cleanUp()V

    .line 4975
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x4

    .line 4976
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 4977
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    return-void
.end method

.method private reportLockWallpaperFail()V
    .locals 3

    .line 3896
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    const/4 v2, 0x0

    .line 3897
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3898
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private requestGlobalFoldersPreinstallAd()V
    .locals 3

    .line 3757
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 3758
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    .line 3759
    instance-of v2, v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    if-eqz v2, :cond_0

    .line 3760
    check-cast v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    const-string v2, "receive broadcast"

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->requestMorePreinstallAds(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetDragItemIfNeed(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 7411
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7414
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7415
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 7418
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7419
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 7420
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p2}, Lcom/miui/home/launcher/DragController;->isAppDragging(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7421
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_3
    return-void
.end method

.method private resetScreenContent()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2002
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 2003
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 2004
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    const/4 v0, 0x3

    .line 2005
    new-array v0, v0, [Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$l-d4C2lZNdMyNkriz5TiR7EK9zs;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$l-d4C2lZNdMyNkriz5TiR7EK9zs;

    .line 2006
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private restoreWidget(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 6229
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6232
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 6233
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 6234
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6235
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6236
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 6238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 6239
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_1

    .line 6244
    iget v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 6245
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p0, v2, v5, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6246
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clearRestore()V

    .line 6247
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 6248
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    if-eqz v2, :cond_1

    .line 6249
    invoke-virtual {v2, p0, v1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private saveMotionEventLog(Landroid/view/MotionEvent;)V
    .locals 6

    const-string v0, "Launcher_dispatchTouchEvent"

    const-string v1, "[motionEvent action:(rawX,rawY)]  "

    .line 4162
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(%.1f,%.1f)"

    const/4 v1, 0x2

    .line 4163
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    const-string v0, "Launcher_dispatchTouchEvent"

    const-string v2, "[%d%s] "

    .line 4164
    new-array v1, v1, [Ljava/lang/Object;

    .line 4165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4164
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 4166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 4167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const-string p1, "Launcher_dispatchTouchEvent"

    .line 4168
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, "Launcher_Scrollto"

    .line 4169
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, ""

    .line 4170
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 4570
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sceneOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2792
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    .line 2793
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2805
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    return v1

    .line 2802
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reset()V

    return v1

    .line 2795
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2796
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    goto :goto_0

    .line 2798
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->gotoEditMode()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendPresentCommand(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 6356
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6357
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6358
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_1

    .line 6359
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 6360
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onPresent(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setCompatibilityVersionIfNeed()V
    .locals 6

    .line 1020
    :try_start_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1022
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "com.mi.android.globalpersonalassistant"

    goto :goto_0

    :cond_0
    const-string v1, "com.miui.personalassistant"

    :goto_0
    const/high16 v2, 0xc0000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1026
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v1, v2, :cond_1

    .line 1027
    const-class v1, Landroid/graphics/Canvas;

    const-string v2, "setCompatibilityVersion"

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1028
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1027
    invoke-static {v1, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setCompatibilityVersionIfNeed"

    .line 1032
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setErrorBarBackground()V
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800b6

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ErrorBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setLockWallpaperFromProvider(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.miui.home.launcher.settings/preference"

    .line 3994
    invoke-static {p0, v1}, Lcom/miui/launcher/utils/PortableUtils;->getCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3995
    new-instance v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;-><init>()V

    const/4 v4, 0x1

    .line 3996
    iput v4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->mode:I

    .line 3997
    invoke-static {v2}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v2

    iput-object v2, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->currentWallpaperInfo:Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 3998
    iput-boolean p4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->needLast:Z

    .line 3999
    invoke-static {v3}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object p4

    .line 4000
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "force_refresh"

    .line 4001
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "extra_current_provider"

    .line 4002
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "request_json"

    .line 4003
    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4005
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "content://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/launcher/utils/ContentProviderUtils;->isProviderExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    .line 4008
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "content://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getNextLockWallpaperUri"

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Lcom/miui/launcher/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string p2, "result_json"

    .line 4011
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4014
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 4015
    invoke-static {p2}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 4019
    :cond_2
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 4020
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_3

    goto :goto_1

    .line 4023
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 4024
    iget-object p2, p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    .line 4025
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    .line 4028
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4029
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonObjectFromWallpaperInfo(Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4030
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string p1, ""

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    return v0

    :cond_7
    const-string p2, "result_string"

    .line 4032
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4033
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v0

    .line 4036
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p1, ""

    .line 4037
    invoke-static {p0, p1, v1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    :goto_2
    invoke-static {p2, v4}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/net/Uri;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4041
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private setScreenContentAlpha(F)V
    .locals 1

    .line 1988
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 1989
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 1990
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    return-void
.end method

.method private setupAnimations()V
    .locals 3

    const v0, 0x7f01002b

    .line 1882
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 1883
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v0, 0x7f01002c

    .line 1884
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    const v0, 0x7f010024

    .line 1885
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    .line 1886
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1887
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    const v0, 0x7f010025

    .line 1888
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    .line 1889
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/Launcher$9;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$9;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1905
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$10;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 1922
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$wxVVRcASGcrSrOYeB8mgDcRyAQE;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$wxVVRcASGcrSrOYeB8mgDcRyAQE;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1925
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    .line 1926
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1927
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1928
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1929
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$11;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1940
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$12;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$12;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1950
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1951
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 1952
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$13;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$13;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setupRecentsViews()V
    .locals 3

    .line 1790
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    const v1, 0x7f0a014e

    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    .line 1792
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1793
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    goto :goto_0

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1796
    :try_start_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "remove overview error."

    .line 1798
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setupViews()V
    .locals 3

    .line 1659
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a009d

    .line 1661
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v0, 0x7f0a009e

    .line 1662
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Background;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    .line 1663
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1664
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1665
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    const v0, 0x7f0a0166

    .line 1667
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/search/SearchEdgeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    const v0, 0x7f0a0167

    .line 1668
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FitSystemWindowView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const v0, 0x7f0a0200

    .line 1669
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 1670
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setDragController(Lcom/miui/home/launcher/DragController;)V

    const v0, 0x7f0a00b6

    .line 1672
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    .line 1673
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1674
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a00bb

    .line 1676
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ErrorBar;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    .line 1677
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ErrorBar;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1678
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setErrorBarBackground()V

    .line 1679
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1681
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a0208

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1682
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1683
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1685
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a0209

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 1686
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1687
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1688
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    .line 1689
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1691
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1692
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1693
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1694
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    .line 1695
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1696
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1698
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DropTargetBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 1699
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v1, 0x7f0a00ca

    .line 1701
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderCling;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 1702
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/FolderCling;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1703
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1704
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1706
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a0170

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/SearchBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    .line 1707
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a00e3

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeats;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 1708
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/HotSeats;->setLaucher(Lcom/miui/home/launcher/Launcher;)V

    .line 1709
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1710
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1712
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1713
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setScrollView(Landroid/view/View;)V

    .line 1714
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1715
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1716
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1717
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1718
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1719
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1721
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1722
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1723
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1724
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DropTargetBar;->setup(Lcom/miui/home/launcher/DragController;)V

    .line 1726
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupAnimations()V

    .line 1727
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const v0, 0x7f0a0194

    .line 1728
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    .line 1729
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 1730
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    const v0, 0x7f0a012e

    .line 1731
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/MinusOneScreenView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const v0, 0x7f0a00b3

    .line 1733
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    .line 1734
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->setTopMenu(Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;)V

    .line 1735
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a012d

    .line 1736
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    .line 1737
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1738
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1741
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    .line 1742
    new-instance v0, Lcom/miui/home/launcher/Launcher$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$6;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    const v0, 0x7f0a0168

    .line 1749
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/ScrimView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    const v0, 0x7f0a0057

    .line 1750
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 1751
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const v1, 0x7f0a0177

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->initialize(Lcom/miui/home/launcher/ExtendedEditText;)V

    .line 1752
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    .line 1753
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setupViews(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

    .line 1754
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    .line 1755
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->setupViews()V

    .line 1756
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    const v1, 0x7f0a0115

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    .line 1758
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupRecentsViews()V

    .line 1760
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1761
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    .line 1762
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    .line 1765
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupWallpaperZoomManager()V

    return-void
.end method

.method private setupWallpaperZoomManager()V
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    new-instance v0, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    new-instance v1, Lcom/miui/home/launcher/Launcher$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$7;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private shouldShowUserPresentAnimation()Z
    .locals 1

    .line 6366
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    if-eqz v0, :cond_0

    .line 6367
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 6368
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6369
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6370
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V
    .locals 2

    .line 5345
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, p2, :cond_3

    if-eqz p2, :cond_1

    .line 5346
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    .line 5347
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5349
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private showEditPanel(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5334
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterEditingMode()V

    goto :goto_0

    .line 5336
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitEditingMode()V

    .line 5338
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5339
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    .line 5340
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 3

    const/4 v0, 0x1

    .line 4879
    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    .line 4880
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4882
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(ILcom/miui/home/launcher/DropTarget;)V

    .line 4883
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationStart()V

    .line 4884
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setTranslationY(F)V

    .line 4885
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$48;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$48;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showUpsideEnterOrExitTipIfNeed(Z)Z
    .locals 8

    .line 6285
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6286
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6290
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-string v3, "pref_freestyle_last_modified_time"

    const-wide/16 v4, 0x0

    .line 6291
    invoke-static {p0, v3, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const-string v3, "pref_is_shown_upside_enter_tip"

    .line 6293
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_is_shown_upside_exit_tip"

    .line 6294
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_freestyle_last_modified_time"

    .line 6295
    invoke-static {p0, v3, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "pref_is_shown_upside_enter_tip"

    goto :goto_0

    :cond_2
    const-string v0, "pref_is_shown_upside_exit_tip"

    .line 6300
    :goto_0
    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6301
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    const v1, 0x7f0800db

    goto :goto_1

    :cond_4
    const v1, 0x7f0800dc

    :goto_1
    if-eqz p1, :cond_5

    const p1, 0x7f100118

    goto :goto_2

    :cond_5
    const p1, 0x7f100119

    .line 6307
    :goto_2
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, -0x56000000

    .line 6308
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6310
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6311
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6313
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6, v6}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;II)V

    .line 6314
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x31

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 6316
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6317
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v6, v1

    int-to-float v1, v6

    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6318
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6320
    invoke-direct {p0, v2, p1, v4}, Lcom/miui/home/launcher/Launcher;->showUserGuideInner(IILandroid/view/View;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p1

    .line 6322
    new-instance v1, Lcom/miui/home/launcher/Launcher$60;

    invoke-direct {v1, p0, v3}, Lcom/miui/home/launcher/Launcher$60;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v1}, Lmiui/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x1

    .line 6329
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return p1

    :cond_6
    :goto_3
    return v2
.end method

.method private showUserGuideInner(IILandroid/view/View;)Lmiui/widget/ArrowPopupWindow;
    .locals 3

    .line 6334
    new-instance v0, Lmiui/widget/ArrowPopupWindow;

    invoke-direct {v0, p0}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    .line 6335
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 6336
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6337
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 6338
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 6339
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6340
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 6341
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 6342
    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 6343
    invoke-virtual {v0, p3, p1, p1}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-object v0
.end method

.method private startAndBindServiceIfNeed()V
    .locals 1

    .line 8144
    sget-boolean v0, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    return-void

    .line 8147
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$81;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$81;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startLockWallpaperPreviewActivity(J)V
    .locals 3

    .line 3809
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3812
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$43;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$43;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 3892
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher$43;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private startMiPay()V
    .locals 6

    .line 2422
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    goto :goto_0

    .line 2426
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    sub-long/2addr v0, v4

    .line 2427
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 2429
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 2431
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_double_home_availability"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.tsmclient"

    .line 2433
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event_source"

    const-string v2, "com_miui_home"

    .line 2434
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2435
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startMiPay"

    .line 2438
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2442
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    :cond_2
    :goto_0
    return-void
.end method

.method private startTaplusService()V
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$2;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V
    .locals 1

    .line 5192
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 5195
    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide()V

    :cond_1
    if-eqz p1, :cond_2

    .line 5199
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->prepareToShow()V

    .line 5200
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->show()V

    .line 5203
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    return-void
.end method

.method private tellAllFoldersWhenAppAdded(Ljava/lang/String;)V
    .locals 3

    .line 7575
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 7576
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onAppAdded(Ljava/lang/String;)V

    .line 7577
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onAppAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transIcon(FIIZ)V
    .locals 4

    .line 7961
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    if-eqz v0, :cond_0

    .line 7962
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 7963
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    invoke-interface {v2}, Lcom/miui/home/launcher/IBackAnimView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    .line 7964
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    int-to-float p3, p3

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    .line 7966
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p3, v0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    .line 7967
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 7968
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p2, p1

    invoke-interface {v0, p2}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationX(F)V

    .line 7969
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p3, p1

    invoke-interface {p2, p3}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationY(F)V

    if-eqz p4, :cond_0

    .line 7970
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    if-nez p1, :cond_0

    .line 7971
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    const-string p2, "back_home_finish"

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/IBackAnimView;->updateBackAnim(Ljava/lang/String;)V

    .line 7972
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    :cond_0
    return-void
.end method

.method private tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V
    .locals 6

    if-eqz p2, :cond_1

    .line 4482
    instance-of v0, p2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 4483
    check-cast p2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p2

    .line 4485
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4486
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    .line 4487
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    aget v2, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4486
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 2

    .line 4265
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 4266
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private uninstallCleanButton()V
    .locals 2

    .line 6836
    new-instance v0, Lcom/miui/home/launcher/Launcher$63;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$63;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 6843
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private uninstallPowerCleanButton()V
    .locals 2

    .line 6847
    new-instance v0, Lcom/miui/home/launcher/Launcher$64;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$64;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 6854
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 3246
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3247
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3248
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3249
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3250
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3251
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3252
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3253
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3254
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3255
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3256
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3257
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3258
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3259
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3260
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3261
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3263
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3266
    :catch_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 3267
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 3268
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    .line 3270
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 3271
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3272
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3274
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3275
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3276
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->unregisterAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3278
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3279
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3280
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3282
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterSearchBarObserver()V
    .locals 2

    .line 3302
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3303
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3304
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateAllAppWidgetOptions()V
    .locals 4

    .line 8284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8285
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 8286
    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_0

    .line 8287
    iget-object v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAppsView()V
    .locals 3

    .line 5913
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5914
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAssistantOpen()V
    .locals 2

    const-string v0, "open_personal_assistant"

    const/4 v1, 0x1

    .line 3503
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return-void
.end method

.method private updateScreenAlphaAndScale(FF)V
    .locals 1

    .line 7924
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/Launcher;->changeViewByFsGestureState(Landroid/view/View;FF)V

    .line 7925
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7926
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScale(FF)V

    .line 7928
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7929
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->setAlphaAndScale(FF)V

    :cond_1
    return-void
.end method

.method private updateShortcut(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Launcher"

    const-string v0, "The intent is null. Failed to update shortcut."

    .line 6814
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 6817
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    const-string p1, "Launcher"

    const-string v0, "The extra shortcut intent is null. Failed to update shortcut."

    .line 6819
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6822
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x0

    .line 6823
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6824
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6827
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$PKCavb2YDYDeTAgXJZVdj8m-9OM;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$PKCavb2YDYDeTAgXJZVdj8m-9OM;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "Launcher"

    const-string v0, "Can\'t find shortcutInfo. Failed to update shortcut."

    .line 6825
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateTitleTip(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3417
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3418
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3419
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3420
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3421
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private waitForAllIconsFinishLoading()V
    .locals 4

    .line 5719
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$55;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$55;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 5732
    invoke-virtual {v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->getWaitTime()J

    move-result-wide v2

    .line 5719
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 4

    const/4 v0, 0x0

    .line 1143
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    const-string v2, "launcher.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1144
    :try_start_1
    iget-object v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1145
    iget v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1146
    iget p1, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1147
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-object v1, v0

    :catch_2
    if-eqz v1, :cond_1

    goto :goto_0

    :catch_3
    :goto_1
    :try_start_3
    const-string p1, "launcher.preferences"

    .line 1152
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1163
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_3

    :goto_2
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1166
    :catch_4
    :cond_0
    throw p0

    :catch_5
    move-object v1, v0

    :catch_6
    if-eqz v1, :cond_1

    goto :goto_0

    :catch_7
    :cond_1
    :goto_3
    return-void
.end method


# virtual methods
.method addAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I
    .locals 7

    .line 2916
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2919
    iget v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iget v4, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/Launcher;->findSlot(IIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2923
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    .line 2924
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    .line 2925
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    iput-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    .line 2927
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetWithoutFindPlaceAgain(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I

    move-result p1

    return p1
.end method

.method public addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 13

    .line 5545
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5546
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addRestoreAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void

    .line 5549
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "Launcher"

    .line 5551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAppWidget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5555
    iget v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 5556
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, "Launcher"

    .line 5559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: appWidgetId has not been bound to a provider yet,ignore it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v5, "Launcher"

    .line 5564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidget: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " belongs to component "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v5, p0, v3, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "com.miui.notes"

    .line 5582
    iget-object v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5583
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.miui.notes"

    .line 5584
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5585
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5588
    :cond_2
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 5589
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5590
    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5592
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v9, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v10, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v11, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v12, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5595
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5597
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    const-string v2, "Launcher"

    .line 5600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound widget id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5600
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p1, "Launcher"

    .line 5576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: server side exception,ignore it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p1, "Launcher"

    .line 5571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: out of memory,ignore it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addAppWidgetWithoutFindPlaceAgain(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I
    .locals 7

    .line 2932
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2933
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 2934
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2936
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 2938
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p1

    const/4 v1, -0x1

    .line 2940
    :try_start_0
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v3, v4}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2946
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    const-string v1, "Launcher"

    .line 2947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start appWidgetProvider config activity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 2949
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 2952
    :cond_1
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2953
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2955
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.DEFAULT"

    .line 2956
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    .line 2957
    invoke-virtual {v5, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2961
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    .line 2964
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 2965
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x5

    .line 2968
    invoke-virtual {p0, v0, v1, v5}, Lcom/miui/home/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return p1

    .line 2942
    :catch_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    const v0, 0x7f100109

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return v1
.end method

.method public addContactShortcutToQuickCallCellLayout(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;
    .locals 11

    .line 6528
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->canAddShortcutToQuickCallCellLayout()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->OVERFLOW:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1

    .line 6530
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->hideAddContactButtonInQuickCallCellLayout()V

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 6531
    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    .line 6532
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    .line 6533
    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1
.end method

.method addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;
    .locals 9

    .line 3058
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3060
    iget-wide v0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3061
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d003e

    .line 3063
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    const-wide/16 v3, -0x64

    .line 3064
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 3065
    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    .line 3064
    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v1, "Launcher"

    .line 3066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFolderToCurrentScreen, info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->printDetail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 3068
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 3069
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 3068
    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 3070
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 2991
    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    :cond_0
    if-eqz p3, :cond_1

    .line 2993
    invoke-interface {p3, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v10

    :cond_1
    if-eqz p2, :cond_2

    .line 2996
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2998
    :cond_2
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 2999
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 3000
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 3002
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 3003
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3005
    iget-wide p2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    .line 3006
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 3007
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 3009
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3010
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    .line 3012
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetProvider()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 3015
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 3016
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3017
    :cond_5
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p3

    .line 3018
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setMtzMockWidgetId(I)V

    .line 3020
    :cond_6
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p3, p1, p2, v10}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-object v9
.end method

.method public addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 6452
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;
    .locals 11

    .line 6456
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 6457
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_0
    const/4 v1, 0x0

    .line 6460
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 6461
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v6, 0x1

    move-object v4, p1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/HotSeats;->pushItem(Lcom/miui/home/launcher/ItemInfo;IZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6463
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_0

    .line 6464
    :cond_2
    instance-of p2, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p2, :cond_3

    .line 6465
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p2

    .line 6466
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p2

    move v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZZZ)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 6620
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V
    .locals 9

    const-wide/16 v0, -0x65

    .line 6624
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x1

    .line 6625
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 6626
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 p2, -0x1

    .line 6627
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6629
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v2

    if-gt p2, v2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 6630
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/HotSeats;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6637
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6638
    iget-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 6639
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const/4 p2, 0x1

    .line 6641
    invoke-virtual {p0, p1, p2, p2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    if-eqz p4, :cond_4

    .line 6643
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 6632
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, p4

    .line 6635
    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    .line 6520
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p9

    .line 6572
    new-instance v14, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    move-wide/from16 v0, p4

    .line 6573
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    move-wide/from16 v0, p2

    .line 6574
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    move/from16 v0, p6

    .line 6575
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    move/from16 v0, p7

    .line 6576
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6577
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 6578
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12}, Lcom/miui/home/launcher/Workspace;->isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p8, :cond_3

    .line 6579
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6583
    :cond_0
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12, v14}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6585
    invoke-static/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void

    .line 6587
    :cond_1
    iget-wide v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return-void

    .line 6590
    :cond_2
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 6591
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6592
    iget-wide v1, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v1, -0x64

    .line 6593
    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 6594
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    iput-boolean v1, v12, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    goto :goto_1

    .line 6580
    :cond_3
    :goto_0
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6596
    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/DeviceConfig;->correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V

    .line 6597
    iget-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const-string v0, "Launcher"

    .line 6598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItemToWorkspace, add item into db, item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6599
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, v12}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_2

    .line 6600
    :cond_5
    invoke-virtual {v12, v0}, Lcom/miui/home/launcher/ItemInfo;->hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6601
    iget-wide v2, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v4, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v6, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v0, "Launcher"

    .line 6602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItemToWorkspace, move item in db, item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6604
    :cond_6
    :goto_2
    instance-of v0, v12, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 6605
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_3

    .line 6606
    :cond_7
    instance-of v0, v12, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_8

    .line 6607
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    .line 6609
    invoke-virtual {p0, v12, v1, v0}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 6611
    :goto_3
    instance-of v0, v13, Lcom/miui/home/launcher/common/ResultRunnable;

    if-eqz v0, :cond_9

    .line 6612
    move-object v0, v13

    check-cast v0, Lcom/miui/home/launcher/common/ResultRunnable;

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/common/ResultRunnable;->setResult(Ljava/lang/Object;)V

    :cond_9
    if-eqz v13, :cond_a

    .line 6615
    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public addMinusOneView()V
    .locals 1

    .line 5795
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    if-nez v0, :cond_0

    .line 5796
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->loadPaView()V

    :cond_0
    return-void
.end method

.method public addOnResumeCallback(Lcom/miui/home/launcher/Launcher$OnResumeCallback;)V
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrRemoveNewHome()V
    .locals 3

    .line 3479
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 3482
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3483
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3484
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    goto :goto_0

    .line 3487
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3488
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addPreinstallAppToWorkspace(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 2

    .line 7626
    iget v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    .line 7628
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$74;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$74;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addRecommendAppToFolderWithDragAnimation(Landroid/view/View;)Z
    .locals 8

    .line 7601
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 7602
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7604
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7605
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v5

    .line 7606
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v0, 0x1

    new-array v3, v0, [Landroid/view/View;

    aput-object p1, v3, v1

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Landroid/view/View;Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    return v0

    :cond_0
    return v1
.end method

.method public addRecommendAppToFolderWithoutDragAnimation(Lcom/miui/home/launcher/RemoteShortcutInfo;)Z
    .locals 3

    .line 7614
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7616
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 7617
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 7618
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 7619
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->scrollToLast()V

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addRestoreAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 10

    const-string v0, "Launcher"

    .line 5606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add restore widget to workspace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5607
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    iput-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5608
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5609
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5610
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5611
    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5613
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5614
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6484
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6485
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6486
    instance-of v4, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_0

    .line 6487
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 6488
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 6489
    iget-object v1, v0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    :cond_0
    const-string v2, "Launcher"

    .line 6491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find user folder of id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_1
    if-eqz p4, :cond_3

    .line 6496
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6498
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6499
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 6500
    invoke-virtual {v2, v4, v5, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    .line 6501
    iget-object v4, v0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    new-instance v5, Lcom/miui/home/launcher/-$$Lambda$Launcher$gxnxkaToGOsBk_CTmzitTqYGK1s;

    invoke-direct {v5, v0, v2, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$gxnxkaToGOsBk_CTmzitTqYGK1s;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$avYPI15iAoTXrX3NBTewW66yq58;

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct {v2, v0, v1, v14, v15}, Lcom/miui/home/launcher/-$$Lambda$Launcher$avYPI15iAoTXrX3NBTewW66yq58;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZ)V

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->inflateViewAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    const-string v2, "Launcher"

    .line 6505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addShortcut in impossible screen, skip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3

    :cond_3
    move/from16 v14, p2

    move/from16 v15, p3

    .line 6509
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 6510
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v7

    .line 6511
    iget-object v6, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v8, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget v10, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v11, v1, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v1, 0x1

    move v15, v1

    move/from16 v16, p3

    invoke-virtual/range {v6 .. v16}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZZZ)V

    return-object v3
.end method

.method addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7269
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7270
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rxsl6V0IqddTC86tYmZcJOVM71U;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Rxsl6V0IqddTC86tYmZcJOVM71U;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7271
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 7272
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez v1, :cond_0

    .line 7273
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$x31mYYTXGXoI-NRWqhUy743rsz0;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$x31mYYTXGXoI-NRWqhUy743rsz0;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/LauncherApplication;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 7276
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 7277
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public alreadyHasGadget(I)Z
    .locals 2

    .line 3028
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 3029
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public animateWallpaperZoom(Z)V
    .locals 1

    .line 8793
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    if-eqz v0, :cond_0

    .line 8794
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateWallpaperZoom(Z)V

    :cond_0
    return-void
.end method

.method public appendWorkspaceTransitionType(I)V
    .locals 1

    .line 5210
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->appendScreenTransitionType(I)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 749
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public autoCategoryAllIcons()V
    .locals 1

    .line 1825
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1826
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoCategoryAllIcons()V

    return-void
.end method

.method public autoFillAllScreens()V
    .locals 1

    .line 1820
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1821
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillAllScreens()V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 1

    .line 1815
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1816
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillCurrentScreen()V

    return-void
.end method

.method public autoFolder()V
    .locals 13

    .line 7882
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7885
    invoke-direct {p0, v0, v1, v0}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    .line 7886
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->removeAllEmptyFoldersInCurrentScreen()V

    .line 7887
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/Workspace;->findCurrentScreenFirstVacantArea(II)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7889
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    const/4 v4, 0x0

    aget v5, v0, v4

    aget v6, v0, v1

    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    .line 7890
    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 7891
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget v9, v0, v4

    aget v10, v0, v1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 7892
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragController;->autoDrop(Lcom/miui/home/launcher/DropTarget;)V

    :cond_1
    return-void
.end method

.method public autoScrollWorkspace()V
    .locals 1

    .line 5207
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoShowTransitionEffectDemo()V

    return-void
.end method

.method public bindAddedShortcuts(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 6086
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6089
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 6090
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    .line 6091
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToWorkspace(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v1, "Launcher"

    .line 6092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add item to launcher when bind apps added, info="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6093
    iget-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 6094
    iget v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 6096
    :cond_2
    iget-object v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    iget-object v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6097
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->isInstallToRecommendFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6098
    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->removePackageName(Ljava/lang/String;)V

    const-string v1, "com.miui.home:string/default_folder_title_recommend"

    const/4 v2, 0x0

    .line 6099
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoByTitle(Ljava/lang/String;Z)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6101
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    iput v2, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 6102
    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    :cond_4
    const-string v1, "Launcher"

    .line 6104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAddedShortcuts, move item because ironSource, info="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6106
    :cond_5
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget-wide v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6111
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$vzdMbRwBwg2fLhTXDvKjW1u1STs;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$vzdMbRwBwg2fLhTXDvKjW1u1STs;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 8505
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public bindAppInfosRemoved(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .line 6178
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeApps(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public bindAppWidgetRemoved(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 6183
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 6184
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindAppsAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 6120
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addApps(Ljava/util/List;)V

    return-void
.end method

.method public bindAppsChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 7390
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7391
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->resetDragItemIfNeed(Ljava/util/List;Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 7392
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7393
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7395
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7396
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsRemoved(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 7398
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7399
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAddedShortcuts(Ljava/util/List;)V

    .line 7400
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsAdded(Ljava/util/List;)V

    .line 7401
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindWidgetsRestored(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 7402
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 7404
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7405
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->bindAppsUpdated(Ljava/util/List;)V

    .line 7407
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bindAppsRemoved(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 7351
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 7352
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7355
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$4GHO4iw8xnBJZSDotJdcdtFr7IQ;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$4GHO4iw8xnBJZSDotJdcdtFr7IQ;-><init>(Ljava/util/ArrayList;)V

    .line 7356
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$S2DAxxJXEON9fnC_8QrSvmZlPm8;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$S2DAxxJXEON9fnC_8QrSvmZlPm8;-><init>(Ljava/util/List;)V

    .line 7357
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$dnMdC-oug6jO3JcvCPxrcpxJ0d0;

    invoke-direct {v2, p0, v1, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$dnMdC-oug6jO3JcvCPxrcpxJ0d0;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/function/Supplier;Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 7372
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7373
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$cEWR-OFMPXfD21SzeTM4Vz_hEd0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$cEWR-OFMPXfD21SzeTM4Vz_hEd0;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    .line 7374
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bindAppsUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 6125
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateApps(Ljava/util/List;)V

    .line 6126
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChangedOnAppUpdate(Ljava/util/List;)V

    return-void
.end method

.method public bindCategoryAdded()V
    .locals 1

    .line 8510
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryAdded()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 8530
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryNameUpdate()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 1

    .line 8525
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 1

    .line 8515
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryRemoved()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 8520
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryUpdate(I)V

    return-void
.end method

.method public bindFreeStyleLoaded(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 6269
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    .line 6270
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 6271
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationY(F)V

    return-void

    .line 6275
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 6276
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 6277
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 6278
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 6279
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 6281
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method public bindGadgetsRemoved(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 7462
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7463
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    return-void
.end method

.method public bindItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 13

    .line 5525
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 5526
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5528
    :cond_0
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 5529
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 5530
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5531
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5532
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    .line 5533
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 5534
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 5536
    :cond_2
    iget-wide v5, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v7, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget v9, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v10, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v12}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    .line 5539
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5540
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    :cond_3
    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 1

    .line 6190
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6191
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->bindScreenAdded(JII)V

    :cond_0
    return-void
.end method

.method public bindScreenRemoved(J)V
    .locals 1

    .line 6197
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6198
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->bindScreenRemoved(J)V

    :cond_0
    return-void
.end method

.method public bindScreenTrim()V
    .locals 1

    .line 6204
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6205
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    :cond_0
    return-void
.end method

.method public bindScreens(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;",
            ">;)V"
        }
    .end annotation

    .line 5451
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->firstLoadScreens(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 5453
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5454
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 5455
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5456
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bindShortcutsChanged(Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 6170
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6172
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ShortcutInfo;->updateIcon(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindShortcutsChangedOnAppUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 6130
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$_LPbxdz71VqvoEYREWV-vOf_7mw;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$_LPbxdz71VqvoEYREWV-vOf_7mw;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bindShortcutsRemoved(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 7444
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7445
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7446
    iget-wide v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 7447
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7449
    iget-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    goto :goto_0

    .line 7453
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7454
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7455
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7456
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public bindWidgetsRestored(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 6210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6212
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6213
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6216
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6217
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 6218
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 6219
    invoke-static {v3, p0}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6220
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6221
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6225
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->restoreWidget(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blurBehindWithAnim(Z)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Background;->showUninstallBgColor(Z)V

    return-void
.end method

.method public canTouchControllerInterceptTouchEvent()Z
    .locals 8

    .line 4660
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    .line 4661
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    .line 4662
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    .line 4663
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v3

    .line 4664
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4665
    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/CellLayout;->getScreenType()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 4666
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4670
    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-eq v0, v6, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 4673
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    return v6

    :cond_3
    :goto_1
    return v5
.end method

.method public cancelFolderAnimations()V
    .locals 1

    .line 4616
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4617
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4618
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    return-void
.end method

.method public cancelHomeFeedContainerArrowAnim(Z)V
    .locals 1

    .line 8471
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8472
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->cancelArrowAnim(Z)V

    :cond_0
    return-void
.end method

.method public cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 5055
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public changeAlphaScale(FFIIIIZ)V
    .locals 7

    .line 8046
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/miui/home/launcher/Launcher$78;

    move-object v0, p4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/Launcher$78;-><init>(Lcom/miui/home/launcher/Launcher;FFIIZ)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeEditingEntryViewToHotseats()V
    .locals 1

    const/4 v0, 0x0

    .line 5187
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    const/4 v0, 0x0

    .line 5188
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    return-void
.end method

.method public changeHotseatsToEditingEntryView()V
    .locals 1

    const/4 v0, 0x1

    .line 5182
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5183
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    return-void
.end method

.method public changeShortcutMenuLayerAlphaScale(FFIIZ)V
    .locals 2

    .line 8057
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    if-nez v0, :cond_0

    return-void

    .line 8060
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    .line 8061
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 8062
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8063
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 8065
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->updateScreenAlphaAndScale(FF)V

    .line 8066
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    if-eqz p1, :cond_2

    .line 8067
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/home/launcher/Launcher;->transIcon(FIIZ)V

    :cond_2
    return-void
.end method

.method public changeStatusBarMode()V
    .locals 3

    .line 5323
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-eqz v0, :cond_0

    return-void

    .line 5326
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher_WallpaperUtils"

    .line 5327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStatusBarMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5328
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    :cond_1
    return-void
.end method

.method public checkDuplicateIconWhenRecommendAdded(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 5

    .line 7583
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 7584
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const v1, 0x7f100077

    const/16 v2, 0x1f4

    .line 7586
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 7587
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7588
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 7589
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/Launcher$73;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/Launcher$73;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    sget p1, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_CLOSE_DURATION:I

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public checkedAllItemsInOneFolder()Z
    .locals 10

    .line 7897
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 7900
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    .line 7901
    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_2

    .line 7905
    :cond_0
    iget-wide v5, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, v5, v6}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v2

    :cond_5
    if-nez v4, :cond_6

    return v2

    .line 7920
    :cond_6
    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v1

    array-length v0, v0

    if-ne v1, v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public clearCurSelectedShortcutIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 7105
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method

.method public clearLastLaunchApp()V
    .locals 1

    const/4 v0, 0x0

    .line 636
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public closeAllOverLauncherWindow(Ljava/lang/String;)V
    .locals 1

    .line 2227
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    .line 2229
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 2230
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2231
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 2232
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    .line 2233
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 2234
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public closeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7723
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7724
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7725
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7726
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method closeFolder()Z
    .locals 1

    const/4 v0, 0x1

    .line 4612
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    move-result v0

    return v0
.end method

.method public closeFolder(Z)Z
    .locals 6

    .line 4622
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4623
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4624
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4625
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v2, "action_close_folder"

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4626
    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4627
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->cancelFolderAnimations()V

    const/4 v0, 0x1

    .line 4628
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 4629
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4630
    invoke-static {v1}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableLoadingAnim(Z)V

    .line 4631
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 4632
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->close(Z)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 4634
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3e75c28f    # 0.24f

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)V

    .line 4635
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v3, v2, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)V

    .line 4636
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 4637
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    goto :goto_0

    .line 4639
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->resetScreenContent()V

    .line 4641
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 4642
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 4643
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 4644
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    return v1
.end method

.method public completeSelectToggle(I)V
    .locals 1

    .line 2085
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeSelectToggle(I)V

    goto :goto_0

    .line 2088
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    :goto_0
    return-void
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2

    .line 2011
    instance-of v0, p2, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2013
    :cond_0
    instance-of v0, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_1

    const v0, 0x7f0d0029

    .line 2014
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    goto :goto_1

    .line 2016
    :cond_1
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    const v0, 0x7f0d0026

    .line 2017
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    goto :goto_1

    .line 2018
    :cond_2
    instance-of v0, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_3

    const v0, 0x7f0d003e

    .line 2019
    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_1

    :cond_4
    :goto_0
    const v0, 0x7f0d0036

    .line 2012
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 2022
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2023
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2024
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 2025
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    :cond_5
    return-object p1
.end method

.method createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 3075
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;
    .locals 3

    .line 3079
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 3080
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/home/launcher/FolderInfo;->isLandscapePos:Z

    .line 3081
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3082
    sget-object p5, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto :goto_0

    .line 3084
    :cond_0
    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :goto_0
    const-wide/16 v1, -0x64

    .line 3088
    iput-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->container:J

    .line 3089
    iput-wide p1, v0, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    .line 3090
    iput p3, v0, Lcom/miui/home/launcher/FolderInfo;->cellX:I

    .line 3091
    iput p4, v0, Lcom/miui/home/launcher/FolderInfo;->cellY:I

    .line 3093
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 3094
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide p2, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 4077
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4078
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 4081
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bc

    if-eq v0, v3, :cond_2

    .line 4082
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bd

    if-eq v0, v3, :cond_2

    .line 4083
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2be

    if-ne v0, v3, :cond_3

    .line 4084
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 4085
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz v0, :cond_3

    .line 4086
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 4090
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_6

    .line 4091
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/16 v3, 0x19

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "debug.launcher2.dumpstate"

    .line 4095
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystemProperties(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 4096
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->dumpState()V

    return v2

    :cond_5
    return v2

    .line 4101
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4102
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_7

    goto :goto_0

    :cond_7
    return v2

    .line 4108
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 4137
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    .line 4138
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4144
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4147
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    const-string v0, ""

    .line 4148
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4150
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    .line 4151
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4153
    :cond_3
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;)V

    .line 4154
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 4155
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveMotionEventLog(Landroid/view/MotionEvent;)V

    .line 4156
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const-string p1, "Launcher"

    .line 4140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore touch event,isActivityLocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isAutoReorganizing:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 8773
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/BaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8774
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/library/utils/CPUBooster;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8775
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherStateManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8776
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8777
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8779
    :cond_0
    invoke-static {p1, p3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8782
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p1

    .line 8783
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/compat/LauncherCellCount;->dump(Ljava/io/PrintWriter;)V

    .line 8785
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Workspace;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8787
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher"

    .line 7482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWidgetItems.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7488
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->dumpState()V

    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    .line 7489
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableFolderInteractive(Z)V
    .locals 1

    .line 4650
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4651
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->enableInteractive(Z)V

    :cond_0
    return-void
.end method

.method public exitMultiSelectEditModeIfNeed()V
    .locals 2

    .line 7801
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7802
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 7803
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public exitTogglesSelectView(Z)V
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-eqz v0, :cond_1

    .line 2044
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    .line 2048
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2049
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    :cond_1
    return-void
.end method

.method public fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "Start filling empty cell"

    .line 6430
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6431
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Launcher"

    const-string v0, "The switch of auto filling empty doesn\'t turn on"

    .line 6432
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6436
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$62;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$62;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finishBindingMissingItems()V
    .locals 0

    .line 5661
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    return-void
.end method

.method public finishBindingSavedItems()V
    .locals 11

    .line 5623
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5624
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5626
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5627
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5628
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v0, 0x0

    .line 5631
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5635
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5636
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5637
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 5639
    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v6, -0x64

    iget v8, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_0

    .line 5642
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5643
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshFolderIcons()V

    return-void
.end method

.method public finishLoading(ZZ)V
    .locals 7

    .line 5737
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5739
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 5740
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->waitForAllIconsFinishLoading()V

    const-string v1, "home_data_create_time_key"

    const-wide/16 v2, -0x1

    .line 5741
    invoke-static {p0, v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 5742
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.securitycenter"

    .line 5743
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5744
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5746
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5747
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/high16 v2, 0x1000000

    .line 5748
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const-string v2, "status"

    const-string v3, "finish"

    .line 5750
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launcher_mode"

    .line 5751
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.home.launcher.permission.LOADING_STATUS"

    .line 5752
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5753
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needShowMisplacedTips()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5754
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100263

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5756
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->onLoadingFinished()V

    .line 5758
    new-instance v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    .line 5759
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 5761
    sget-boolean v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "jobscheduler"

    .line 5762
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 5763
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    .line 5764
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v4, 0x5265c00

    .line 5765
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 5766
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 5769
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 5770
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5772
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->afterShowUserPresentAnimation()V

    if-eqz p1, :cond_5

    .line 5775
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshProgressIcons()V

    goto :goto_0

    .line 5777
    :cond_5
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Pngo_DKKRgVfGiGEXgwlF2ulN4g;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Pngo_DKKRgVfGiGEXgwlF2ulN4g;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 5778
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZFvivUCZcNuHa1CaF6RtcxTON4c;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZFvivUCZcNuHa1CaF6RtcxTON4c;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    :goto_0
    const-string p1, "Launcher"

    const-string v0, "show present anim"

    .line 5781
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5782
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->updatemIncompatibleAppList(Landroid/content/Context;)V

    .line 5783
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->requestCloudSettingsInfo()V

    .line 5784
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkInvalidateGadget()V

    if-eqz p2, :cond_6

    .line 5786
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method public forceHideErrorBar()V
    .locals 1

    .line 4981
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    return-void
.end method

.method public forceReload()V
    .locals 2

    .line 713
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 714
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    const/4 v0, 0x1

    .line 715
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 716
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 717
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 719
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 720
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_0
    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1

    .line 8695
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;
    .locals 1

    .line 8546
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    return-object v0
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 8555
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;
    .locals 1

    .line 8496
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    return-object v0
.end method

.method public getAllFolders()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation

    .line 7261
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllGadgets()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;"
        }
    .end annotation

    .line 7257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllLoadedShortcut()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 7246
    new-instance v0, Lcom/miui/home/launcher/Launcher$71;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$71;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7252
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7253
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 1

    .line 8684
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .line 2187
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 8500
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;
    .locals 1

    .line 8492
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;
    .locals 1

    .line 8452
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    return-object v0
.end method

.method public getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 7098
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7099
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;
    .locals 1

    .line 7265
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    return-object v0
.end method

.method public getCurrentDisplayRotation()I
    .locals 1

    .line 1522
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return v0
.end method

.method public getCurrentLightSpeedIconPackageName()Ljava/lang/String;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentOpenedFolder()Landroid/view/View;
    .locals 1

    .line 4693
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4694
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object v0
.end method

.method public getDragController()Lcom/miui/home/launcher/DragController;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/miui/home/launcher/DragLayer;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method public getDragLayerBackground()Lcom/miui/home/launcher/Background;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    return-object v0
.end method

.method public getDragSourceForCancelUninstall(Landroid/view/View;)Lcom/miui/home/launcher/DragSource;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4804
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 4805
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4806
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4808
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInWorkspace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4809
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    return-object p1

    .line 4810
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4811
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    .line 4812
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4813
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    return-object v0
.end method

.method public getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;
    .locals 1

    .line 5371
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-object v0
.end method

.method public getEditingState()I
    .locals 1

    .line 5019
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    return v0
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

    const/4 v0, 0x4

    .line 660
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLongClickInBackgroundMessageHandler:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDeleteCellScreenMessageHandler:Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModuleMessageHandler:Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mRecentMessageHandler:Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;
    .locals 1

    .line 8448
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    return-object v0
.end method

.method public getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;
    .locals 1

    .line 8444
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    return-object v0
.end method

.method public getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 7170
    new-instance v0, Lcom/miui/home/launcher/Launcher$68;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$68;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Z)V

    .line 7187
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7188
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p1
.end method

.method public getFolderCling()Lcom/miui/home/launcher/FolderCling;
    .locals 1

    .line 1195
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0
.end method

.method public getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6417
    :cond_0
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 6418
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    return-object p1

    .line 6419
    :cond_1
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 6420
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->getItemIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .line 7561
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    return-object p1
.end method

.method public getFolderInfoByTitle(Ljava/lang/String;Z)Lcom/miui/home/launcher/FolderInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 7566
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    .line 7567
    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public getForegroundTaskQueue()Lcom/miui/home/launcher/common/ForegroundTaskQueue;
    .locals 1

    .line 7557
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    return-object v0
.end method

.method public getFsGestureCallbackSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 1

    .line 8072
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8073
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8074
    new-instance p2, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public getHomeDataCreateTime()J
    .locals 2

    .line 5023
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    return-wide v0
.end method

.method public getHotSeats()Lcom/miui/home/launcher/HotSeats;
    .locals 1

    .line 5367
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object v0
.end method

.method public getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 3

    const-string v0, "Launcher"

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastLaunchApp, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getLastMotionEventLocation()Ljava/lang/String;
    .locals 1

    .line 4175
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;
    .locals 1

    .line 3459
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object v0
.end method

.method public getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 1

    .line 8550
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object v0
.end method

.method public getLoadedDeepShortcutMap(Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 6688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6691
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6692
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6693
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6694
    invoke-virtual {v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p2

    .line 6689
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "packageName must not null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLoadingAsyncInflateManager()Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 1

    .line 5715
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-object v0
.end method

.method public varargs getMatchedPackageNames([Ljava/lang/Integer;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 7192
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 7195
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7196
    new-instance p1, Lcom/miui/home/launcher/Launcher$69;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/Launcher$69;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    .line 7213
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7214
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMinusBlurRatio()F
    .locals 1

    .line 5315
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getMinusBlurRatio()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;
    .locals 1

    .line 7667
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    return-object v0
.end method

.method public getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;
    .locals 1

    .line 8464
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8465
    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverLayoutProgress()F
    .locals 1

    .line 8251
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return v0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 8636
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 0

    .line 6426
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;
    .locals 4

    .line 6406
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6408
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;
    .locals 1

    .line 8656
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    return-object v0
.end method

.method public getRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 1

    .line 8640
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8641
    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 8661
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    return-object v0
.end method

.method public getRootViewRect()Landroid/graphics/Rect;
    .locals 5

    .line 8665
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8666
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 8667
    new-array v0, v0, [I

    .line 8668
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8669
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8670
    aget v2, v0, v4

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    return-object v0
.end method

.method public getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 1

    .line 4849
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenRef:Lcom/miui/home/launcher/CustomableReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CustomableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSceneScreenIfShowing()Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 3

    .line 4853
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenRef:Lcom/miui/home/launcher/CustomableReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/CustomableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4854
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getScreen()Landroid/widget/FrameLayout;
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getScreenContent()Landroid/widget/FrameLayout;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object v0
.end method

.method public getScrimView()Lcom/miui/home/launcher/view/ScrimView;
    .locals 1

    .line 8580
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    return-object v0
.end method

.method public getSearchBar()Lcom/miui/home/launcher/SearchBar;
    .locals 1

    .line 8480
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object v0
.end method

.method public getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;
    .locals 1

    .line 8484
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    return-object v0
.end method

.method public getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 1

    .line 5375
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    return-object v0
.end method

.method public varargs getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 7218
    array-length v0, p3

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7221
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7222
    new-instance p3, Lcom/miui/home/launcher/Launcher$70;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/miui/home/launcher/Launcher$70;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 7241
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7242
    invoke-virtual {p3}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6667
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6668
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$1hPMWhRnvWLvx5ZodfomIlH3mvs;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$1hPMWhRnvWLvx5ZodfomIlH3mvs;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 1

    .line 7663
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object v0
.end method

.method public getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    .line 7109
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onLauncherComeBackFromOtherApp(Ljava/lang/String;)V

    .line 7111
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 7112
    instance-of p2, p1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 7113
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    .line 7118
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V

    .line 7119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    .line 7123
    :cond_0
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$2xXursvZDM_zUmQXRhkDdF6dtv4;

    invoke-direct {v1, p0, p1, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$2xXursvZDM_zUmQXRhkDdF6dtv4;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)V

    invoke-direct {p2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7158
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1f4

    .line 7160
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p3, "Launcher"

    .line 7161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get showing item success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    move-object p1, v0

    :goto_0
    const-string v0, "Launcher"

    const-string v1, "get showing item error"

    .line 7163
    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x1

    .line 7164
    invoke-virtual {p2, p3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :goto_1
    return-object p1

    .line 7115
    :cond_1
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0
.end method

.method public getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 8

    .line 6895
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    .line 6896
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 6899
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->getComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6900
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 6902
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6903
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 6906
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x3

    .line 6910
    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v4, 0xe

    .line 6911
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    .line 6910
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6912
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 6913
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v6, ""

    invoke-direct {v2, p1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Integer;

    .line 6914
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    .line 6913
    invoke-virtual {p0, v2, p2, p1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    .line 6917
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_0

    .line 6922
    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getLastLaunchShortcutIcon(Ljava/util/List;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    .line 6918
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 6919
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_8

    return-object v1

    .line 6927
    :cond_8
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p2

    if-nez p2, :cond_c

    .line 6928
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 6929
    iget-wide p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 6930
    iget-wide v2, p1, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_9

    .line 6931
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v1

    .line 6934
    :cond_a
    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long p2, v2, v4

    if-nez p2, :cond_b

    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_b

    .line 6935
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 6936
    :cond_b
    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long p2, v2, v4

    if-nez p2, :cond_d

    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_d

    .line 6937
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 6939
    :cond_c
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_d

    .line 6940
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v1

    :cond_e
    :goto_2
    return-object v1
.end method

.method public getSoundPoolHelper()Lcom/miui/home/launcher/sound/SoundPoolHelper;
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    return-object v0
.end method

.method public getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;
    .locals 1

    .line 8718
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    return-object v0
.end method

.method public getSpringLayerWaveController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;
    .locals 1

    .line 8714
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    return-object v0
.end method

.method public getStateManager()Lcom/miui/home/launcher/LauncherStateManager;
    .locals 1

    .line 8456
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object v0
.end method

.method public getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;
    .locals 2

    .line 8573
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    if-nez v0, :cond_0

    .line 8574
    new-instance v0, Lcom/miui/home/launcher/util/SystemUiController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    .line 8576
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    return-object v0
.end method

.method public getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;
    .locals 1

    .line 7671
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    return-object v0
.end method

.method public getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    return-object v0
.end method

.method public getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    return-object v0
.end method

.method public getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    return-object v0
.end method

.method public getWidgetItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    .line 8623
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    return-object v0
.end method

.method public getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .line 5359
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method public getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 1

    .line 5363
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object v0
.end method

.method public getWorkspacePreviousTransitionType()I
    .locals 1

    .line 5218
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v0

    return v0
.end method

.method public hasLaunchedAppsFromFolder()Z
    .locals 1

    .line 4685
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return v0
.end method

.method public hasMoved()Z
    .locals 1

    .line 6960
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

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

.method public hideLandscapeShortcutMenuLayer()V
    .locals 2

    .line 8647
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8648
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    .line 8649
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 8650
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const-string v0, "Launcher"

    const-string v1, "hideLandscapeShortcutMenuLayer"

    .line 8651
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public hideSceneScreen(Z)V
    .locals 5

    .line 4943
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 4948
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 4949
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 4951
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onHideAnimationStart()V

    const-string v2, "translationY"

    .line 4953
    new-array v3, p1, [F

    .line 4954
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v1

    .line 4953
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4955
    new-instance v3, Lcom/miui/home/launcher/Launcher$51;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$51;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4962
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 4964
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const-string v2, "translationY"

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v3, p1, v1

    invoke-static {v0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4966
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 4968
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 4969
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public hideShortcutMenuWithoutAnim()V
    .locals 2

    .line 5050
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setWithoutAnimNextHide()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 5051
    invoke-virtual {p0, v1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public inMultiSelectMode()Z
    .locals 2

    .line 4271
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4272
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4273
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 8604
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 8605
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 8606
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 8607
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 8608
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public invalidateWorkspacePreview()V
    .locals 2

    .line 7847
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7848
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7849
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isActivityLocked()Z
    .locals 1

    .line 2906
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 2907
    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

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

.method public isAssistantOpen()Z
    .locals 1

    .line 3508
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return v0
.end method

.method public isBackCoverChanged()Z
    .locals 1

    .line 4072
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    return v0
.end method

.method public isBackNewHome()Z
    .locals 5

    const/4 v0, 0x1

    .line 2240
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "com.miui.newhome.base.Settings"

    .line 2241
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isBackNewHome"

    .line 2242
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    .line 2243
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2245
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v1, "isBackNewHome"

    const-string v2, " reflect error"

    .line 2247
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCurrentScreenNeedAlignIconsToTop()Z
    .locals 1

    .line 5355
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isCurrentScreenNeedAlignIconsToTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultScreenPreviewShowing()Z
    .locals 1

    .line 7854
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    if-eqz v0, :cond_0

    .line 7855
    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    .line 8559
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isDrawerMode()Z
    .locals 1

    .line 8563
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isElderlyManMode()Z
    .locals 1

    .line 8567
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isFolderAnimating()Z
    .locals 1

    .line 4689
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return v0
.end method

.method public isFolderEditing()Z
    .locals 1

    .line 8631
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v0

    return v0
.end method

.method public final isFolderIdValid(J)Z
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFolderOpenedBeforeResume()Z
    .locals 1

    .line 4681
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return v0
.end method

.method public isFolderShowing()Z
    .locals 1

    .line 4656
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFreeStyleExists()Z
    .locals 1

    .line 4837
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    return v0
.end method

.method public isInDisableEditing()Z
    .locals 2

    .line 5015
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInEditing()Z
    .locals 2

    .line 4989
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMultiSelecting()Z
    .locals 2

    .line 5011
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInNormalEditing()Z
    .locals 1

    .line 5001
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result v0

    return v0
.end method

.method public isInQuickOrEditingModeExiting()Z
    .locals 2

    .line 5027
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

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

.method public isInShortcutMenuState()Z
    .locals 2

    .line 4993
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInState(Lcom/miui/home/launcher/LauncherState;)Z
    .locals 1

    .line 8460
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLauncherDialogShowing()Z
    .locals 2

    .line 7683
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7686
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isMinusScreenShowing()Z
    .locals 1

    .line 5304
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v0, :cond_0

    .line 5305
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMinusUseBlurAnimation()Z
    .locals 1

    .line 5310
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v0, :cond_0

    .line 5311
    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->isAllowUseBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiProcessMinusScreenShowing()Z
    .locals 1

    .line 5319
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return v0
.end method

.method public isMultiSelectEnabled()Z
    .locals 2

    .line 4997
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

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

.method public isPause()Z
    .locals 1

    .line 8186
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return v0
.end method

.method public isPreviewShowing()Z
    .locals 1

    .line 4841
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isQuickCallScreenShowing()Z
    .locals 1

    .line 6524
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isQuickCallScreenShowing()Z

    move-result v0

    return v0
.end method

.method public isSceneAnimating()Z
    .locals 1

    .line 4985
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return v0
.end method

.method public isSceneShowing()Z
    .locals 1

    .line 4845
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreenIfShowing()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchBarMenuShowing()Z
    .locals 1

    .line 8488
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->isShowingMenu()Z

    move-result v0

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

    .line 665
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isSearchEdgeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShouldBlur()Z
    .locals 1

    .line 973
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur(I)Z

    move-result v0

    return v0
.end method

.method public isShouldBlur(I)Z
    .locals 0

    .line 977
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUserBlurWhenOpenFolder()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShowingTransitionEffectDemo()Z
    .locals 1

    .line 5222
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isShowingTransitionEffectDemo()Z

    move-result v0

    return v0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->isTaskLaunchAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTogglesSelectViewShowing()Z
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUninstallDialogAnimShowing()Z
    .locals 1

    .line 2911
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    return v0
.end method

.method public isUninstallDialogShowing()Z
    .locals 1

    .line 2897
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 8182
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    return v0
.end method

.method public isWidgetThumbnailViewShowing()Z
    .locals 1

    .line 7679
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWindowFocus()Z
    .locals 1

    .line 8627
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .line 2893
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 2901
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2902
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

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

.method public launch(Lcom/miui/home/launcher/ShortcutInfo;Landroid/view/View;)V
    .locals 3

    .line 4309
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 4310
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_0

    const-string v0, "launch_from_folder"

    .line 4311
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLaunchAppAfterBackToHome(Ljava/lang/String;)V

    .line 4313
    :cond_0
    invoke-static {p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->recordLaunchApplicationEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 4314
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 4315
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4316
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getTopActivityUserId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4317
    invoke-static {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;)V

    return-void

    .line 4320
    :cond_1
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->notifyStartActivity(Landroid/content/Intent;)V

    .line 4321
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 4323
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    return-void
.end method

.method public notifyBackGestureStatus()V
    .locals 1

    .line 7493
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7494
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationEnd()V
    .locals 0

    .line 8083
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationEnd()V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationStart()V
    .locals 1

    .line 8078
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showFsTransAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    .line 8079
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationStart()V

    return-void
.end method

.method public notifyHomeModeFsGestureStart()V
    .locals 2

    .line 8087
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8088
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8089
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    :cond_0
    return-void
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 7086
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7087
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 4

    .line 7061
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    if-eqz v0, :cond_0

    .line 7062
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    return-void

    .line 7065
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$67;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$67;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 7078
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 7081
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7082
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    .line 1233
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reintentdata"

    .line 1243
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "requestCode"

    .line 1244
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "resultCode"

    .line 1245
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1246
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1269
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderCling;->onRequestMarketDetail(Landroid/content/Intent;)V

    goto :goto_0

    .line 1252
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100265

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 1253
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1252
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1254
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showTogglesSelectView()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1256
    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto :goto_0

    .line 1263
    :cond_4
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1260
    :cond_5
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_7

    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    const-string v0, "appWidgetId"

    .line 1278
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 1280
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_7
    :goto_0
    :pswitch_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    if-ne p2, v2, :cond_8

    .line 1284
    invoke-static {p0, p3}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_d

    .line 1288
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p3

    if-nez p3, :cond_9

    return-void

    :cond_9
    if-ne p2, v2, :cond_c

    .line 1290
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    .line 1291
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1292
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    goto :goto_1

    .line 1295
    :cond_b
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    goto :goto_2

    .line 1297
    :cond_c
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->onUserDenyRecommendConnectNetWork()V

    :cond_d
    :goto_2
    const/16 p3, 0x3eb

    if-ne p1, p3, :cond_f

    if-ne p2, v2, :cond_e

    .line 1303
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    goto :goto_3

    .line 1305
    :cond_e
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    :cond_f
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 8256
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onAttachedToWindow()V

    .line 8257
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8258
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 4181
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    .line 4182
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v2, "event_back"

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    .line 4187
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4188
    instance-of v1, v0, Lcom/miui/home/recents/views/RecentsContainer;

    if-eqz v1, :cond_1

    .line 4189
    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onBackPressed()V

    :cond_1
    return-void

    .line 4194
    :cond_2
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4195
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 4196
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "back_gesture"

    goto :goto_0

    :cond_3
    const-string v0, "back_key"

    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClose(Ljava/lang/String;)V

    return-void

    .line 4202
    :cond_4
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4203
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    return-void

    .line 4207
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 4211
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_7

    .line 4212
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void

    .line 4216
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 4217
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    return-void

    .line 4221
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->stepClose()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4222
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_9

    const-string v0, "back_key"

    .line 4223
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 4228
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 4232
    :cond_b
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 4233
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    .line 4237
    :cond_c
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 4241
    :cond_d
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 4242
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    return-void

    .line 4246
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 4247
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceHideErrorBar()V

    .line 4248
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4249
    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_back"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 4282
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4286
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4290
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4291
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 4292
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4293
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 4296
    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_3

    .line 4297
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    .line 4298
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderClick(Lcom/miui/home/launcher/FolderInfo;)V

    .line 4299
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->needToCheckIsGameFolder(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4300
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$BgP-CD42GmCRiyjvLwp4M_ELnq0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$BgP-CD42GmCRiyjvLwp4M_ELnq0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 4303
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz p1, :cond_4

    .line 4304
    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 8330
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8331
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    .line 8332
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkDarkMode()V

    .line 8333
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_0

    .line 8334
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Launcher"

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android:fragments"

    .line 787
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 789
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 790
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 791
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 792
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onCreate()V

    .line 793
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 794
    new-instance v1, Lcom/miui/launcher/utils/StatusBarClockController;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/launcher/utils/StatusBarClockController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarClockController:Lcom/miui/launcher/utils/StatusBarClockController;

    .line 795
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDesiredHomePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    const-string v1, "Launcher"

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDesiredHomePackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 798
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 801
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 802
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 803
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 804
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeCreated(Ljava/lang/String;)V

    .line 806
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 808
    invoke-static {p0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->inHomeStack(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Launcher"

    .line 809
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new launcher in home stack, old launcher is not, kill old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->finish()V

    goto :goto_0

    :cond_3
    const-string p1, "Launcher"

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kill new one:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->finish()V

    return-void

    .line 817
    :cond_4
    :goto_0
    new-instance v2, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    .line 818
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v2, :cond_5

    .line 819
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 822
    :cond_5
    new-instance v2, Lcom/miui/home/settings/LauncherGestureController;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/LauncherGestureController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    .line 824
    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$B52ejCbsB6ECRoagpMTkZ_1l1bc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$B52ejCbsB6ECRoagpMTkZ_1l1bc;

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$GxBKYr-jON9v87iSpCl7xsiHuNc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$GxBKYr-jON9v87iSpCl7xsiHuNc;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 830
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->resetMultiSelectMonitor()V

    .line 831
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 832
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 833
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v3, 0x100

    .line 838
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 839
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_6

    const/high16 v3, 0x4000000

    .line 841
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 843
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_7

    const/high16 v3, -0x80000000

    .line 844
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 846
    :cond_7
    invoke-static {v2, v1, v1}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->setExtraFlag(Landroid/view/Window;II)V

    .line 848
    invoke-virtual {v2, v1}, Landroid/view/Window;->setFormat(I)V

    .line 849
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->adaptPNotchScreen(Landroid/view/Window;)V

    .line 850
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->doSelfProtect()V

    .line 852
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->initDefaultExecutor()V

    .line 857
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    .line 858
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/LauncherApplication;->setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    .line 860
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/Launcher;->sPrefShowIconShadow:Z

    const/4 v2, 0x0

    .line 862
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 863
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    .line 864
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    .line 867
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->updateApplicationEnableStateIfNeed()V

    .line 869
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerBroadcastReceivers()V

    .line 870
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 871
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, p0, v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 872
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$-aKc00t0eh-I5-zZh3k3v_VZqP0;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$-aKc00t0eh-I5-zZh3k3v_VZqP0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    sget-object v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 875
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 876
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v3

    if-nez v3, :cond_9

    .line 877
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v3, v4, v1, v5}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    goto :goto_1

    .line 879
    :cond_9
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$XefkfZ_tY-HSqx5cH3U0gASDyQY;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$XefkfZ_tY-HSqx5cH3U0gASDyQY;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v3, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 883
    :goto_1
    new-instance v3, Lcom/miui/home/launcher/DragController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/DragController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 884
    new-instance v3, Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/touch/FeedTransController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    .line 886
    new-instance v3, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    .line 887
    new-instance v3, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    .line 889
    new-instance v3, Lcom/miui/home/launcher/ShakeMonitor;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ShakeMonitor;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    .line 891
    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ApplicationsMessage;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 893
    new-instance v3, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    .line 894
    invoke-static {}, Lcom/miui/home/launcher/util/ViewRootImplHook;->getInstance()Lcom/miui/home/launcher/util/ViewRootImplHook;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    .line 899
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 900
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0061

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    goto :goto_2

    .line 902
    :cond_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d005d

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    .line 904
    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setContentView(Landroid/view/View;)V

    .line 906
    new-instance v3, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    .line 907
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->registerWallpaperChangedReceiver()V

    .line 908
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupViews()V

    .line 909
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initConflictItems()V

    .line 913
    new-instance v3, Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-direct {v3}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    .line 914
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v3, :cond_b

    .line 915
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 916
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setScreenTransitionType(I)I

    .line 920
    :cond_b
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 923
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 924
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 926
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLauncher()V

    .line 927
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->register(Landroid/content/Context;)V

    .line 928
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    .line 930
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$XqU3yQ23LYEFrsNrSoxnMKnIxlA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$XqU3yQ23LYEFrsNrSoxnMKnIxlA;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 935
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$OZyOLSrIw5k5XiaPHY261eyCWHw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$OZyOLSrIw5k5XiaPHY261eyCWHw;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 936
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_c

    .line 937
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-interface {v1, p1, v3}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 939
    :cond_c
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSystemUIFsgVersion()V

    .line 940
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItemsAsync()V

    .line 941
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    .line 942
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 943
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 945
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 946
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 947
    new-instance p1, Lcom/miui/home/recents/util/RotationHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/RotationHelper;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    .line 948
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RotationHelper;->initialize()V

    :cond_d
    const-string p1, "window"

    .line 951
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    .line 952
    new-instance p1, Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    .line 953
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "light_speed_app"

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 2750
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2754
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7f100179

    const/4 v2, 0x2

    .line 2758
    invoke-interface {p1, v2, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f100183

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 2759
    invoke-interface {p1, v3, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x52

    .line 2760
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v4, 0x7f10017a

    .line 2761
    invoke-interface {p1, v2, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/16 v0, 0x58

    .line 2762
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return v3
.end method

.method public onDestroy()V
    .locals 4

    .line 2604
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDestroy()V

    .line 2605
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onDestroy()V

    .line 2606
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 2607
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    if-eqz v0, :cond_0

    .line 2608
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    .line 2610
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    .line 2613
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-eqz v0, :cond_2

    .line 2615
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    .line 2617
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2620
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 2621
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RotationHelper;->destroy()V

    .line 2624
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2625
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onDestory()V

    .line 2628
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 2629
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onLauncherDestroy()V

    goto :goto_1

    .line 2631
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    .line 2632
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->unregisterMiuiThumbnailAnimationHelper(Landroid/content/Context;)V

    .line 2633
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 2634
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eq v1, p0, :cond_6

    .line 2635
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2639
    :cond_6
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 2641
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->onDestroy()V

    .line 2642
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 2644
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->clear()V

    .line 2646
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->onDestroy()V

    .line 2649
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unbindDesktopItems()V

    .line 2651
    new-instance v0, Lcom/miui/home/launcher/Launcher$18;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$18;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 2658
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 2659
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2662
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    if-eqz v0, :cond_8

    .line 2663
    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->unregisterReceiver()V

    .line 2666
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShakeMonitor;->stopMonitorIfNeed()V

    .line 2667
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onDestroy()V

    .line 2668
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onDestroy()V

    const/4 v0, 0x6

    .line 2669
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 2670
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isChangingConfigurations()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    .line 2672
    invoke-static {}, Lcom/miui/home/launcher/LauncherAnimUtils;->onDestroyActivity()V

    .line 2674
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    .line 2676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->onDestroy()V

    .line 2678
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->unRegister(Landroid/content/Context;)V

    .line 2679
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    if-eqz v0, :cond_9

    .line 2680
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2683
    :cond_9
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_b

    .line 2684
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->resetResourceDependenceItem()V

    .line 2685
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isBigScreenLowMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2690
    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2693
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/FolderCling;->clearOldVersionRecommendStaticMemory()V

    .line 2694
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$5JxAlOyJzi5zngEduT7lkSSmnBI;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$5JxAlOyJzi5zngEduT7lkSSmnBI;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 2699
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v0, :cond_c

    .line 2700
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onDestory()V

    .line 2702
    :cond_c
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2703
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_d

    .line 2704
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    .line 2706
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2707
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDestroy()V

    const/4 v0, 0x0

    .line 2708
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2709
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 2710
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2711
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2712
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_e

    .line 2713
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->releaseHook()V

    .line 2715
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    if-eqz v0, :cond_f

    .line 2716
    invoke-virtual {v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->release()V

    .line 2718
    :cond_f
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2719
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 2721
    :cond_10
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v0, :cond_11

    .line 2722
    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    .line 2723
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 2725
    :cond_11
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2726
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->onDestroy(Landroid/content/Context;)V

    .line 2728
    :cond_12
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 8264
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDetachedFromWindow()V

    .line 8265
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8266
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7787
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x9

    .line 7790
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    .line 7791
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_1
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7815
    new-instance p1, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v0, "drag_over_threshold"

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    if-eqz p2, :cond_6

    .line 7759
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 7762
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7765
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7766
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 7767
    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 7768
    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    .line 7769
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7770
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7771
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 7773
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 7776
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 7777
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x11

    .line 7778
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 7780
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public onDropAnimationFinish()V
    .locals 0

    .line 7797
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3052
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3053
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3054
    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3041
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3042
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->startActivityForCreateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3046
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3047
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3048
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 8319
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onEnterAnimationComplete()V

    .line 8320
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8321
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 8323
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8324
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    :cond_1
    return-void
.end method

.method public onEnterRecentsFromApp()V
    .locals 2

    .line 8676
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    .line 8677
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8678
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 8679
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->onEnterRecentsFromApp()V

    :cond_0
    return-void
.end method

.method public onFinishHighlightLocatedApp()V
    .locals 1

    const/4 v0, 0x0

    .line 2510
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    return-void
.end method

.method public onFolderOpenOrClose()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "onFolderOpenOrClose"

    .line 6985
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6986
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 6987
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onGesturePerformAppToHome()V
    .locals 6

    .line 2362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2363
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v2, :cond_0

    .line 2364
    invoke-virtual {v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->performAppToHome()V

    const-string v2, "Launcher"

    .line 2365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performAppToHome:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v2, :cond_1

    .line 2368
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 2369
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2370
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v3, v2}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    const-string v2, "Launcher"

    .line 2371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHomeIntentCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1627
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->acceptFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 1629
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1631
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1638
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1000

    .line 6790
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    .line 6798
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLauncherModeChanged()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 693
    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 694
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 695
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    goto :goto_0

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 700
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 4709
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4712
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4719
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 4723
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_3

    .line 4724
    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    .line 4726
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_4

    .line 4727
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 4731
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 4732
    iget-object v0, p1, Lcom/miui/home/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_1

    :cond_5
    move-object p1, v2

    move-object v0, p1

    :goto_1
    if-eqz p1, :cond_a

    .line 4738
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4739
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 4740
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->performFakeLongClick()V

    return v1

    .line 4743
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 4744
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->isIconPositionFixed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 4747
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4748
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getSelectCount()I

    move-result v3

    if-gt v3, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 4751
    invoke-direct {p0, p1, v0, v2}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    goto :goto_3

    .line 4749
    :cond_9
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V

    :cond_a
    :goto_3
    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    .line 4113
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 4114
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4115
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4118
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4119
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4122
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 4123
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    .line 4125
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "menu"

    .line 4126
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4127
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_3
    :goto_0
    return p2

    :cond_4
    :goto_1
    return p2
.end method

.method public onMinusOneScreenViewScroll()V
    .locals 0

    .line 6981
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 8391
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8392
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    .line 8393
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onMultiWindowModeChangedInternal(Z)V

    .line 8394
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8395
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChangedInternal(Z)V
    .locals 1

    .line 8400
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onMultiWindowModeChanged(Z)V

    .line 8401
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    if-eqz v0, :cond_0

    .line 8402
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->onMultiWindowModeChanged(Z)V

    .line 8404
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    if-eqz v0, :cond_1

    .line 8405
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DropTargetBar;->onMultiWindowModeChanged(Z)V

    .line 8407
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8408
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    .line 8410
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 8411
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onMultiWindowModeChanged(Z)V

    .line 8413
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8414
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onMultiWindowModeChanged(Z)V

    .line 8416
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->clearCurrentTaskInfo()V

    .line 8417
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method public onNewHomeTransProgress(FF)V
    .locals 1

    .line 8699
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 8702
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onNewHomeTransProgress(FF)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 2254
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2255
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startMiPay()V

    .line 2258
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "locate_app"

    .line 2259
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2264
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    :cond_2
    const-string v0, "ignore_bring_to_front"

    .line 2265
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    const-string v3, "com.tencent.mm"

    .line 2266
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 2270
    :cond_5
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2271
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 2272
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    :cond_6
    if-eqz v0, :cond_8

    .line 2275
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onNewIntent()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2276
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 2277
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "home_gesture"

    goto :goto_1

    :cond_7
    const-string p1, "home_key"

    :goto_1
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClose(Ljava/lang/String;)V

    :cond_8
    return-void

    .line 2282
    :cond_9
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2283
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2284
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onNewIntent(Landroid/content/Intent;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 2286
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "is_from_newhome"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    if-nez v1, :cond_d

    .line 2288
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackNewHome()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v0, :cond_d

    .line 2289
    :cond_c
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    :cond_d
    return-void

    .line 2292
    :cond_e
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2293
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    invoke-static {p0, p1, v0}, Lcom/miui/home/recents/InternalStateHandler;->handleNewIntent(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Z)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "clickHomeKey"

    .line 2295
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    const p1, 0x7f100025

    .line 2296
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 2297
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    .line 2298
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    :cond_f
    return-void

    .line 2301
    :cond_10
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 2302
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    :cond_11
    const-string v3, "skip_reset_gesture_view_state"

    .line 2306
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2307
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 2310
    :cond_12
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 2312
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    const-string v3, "android.intent.action.MAIN"

    .line 2315
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "homekey"

    .line 2317
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    .line 2319
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v3, :cond_14

    invoke-interface {v3, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-void

    :cond_14
    const-string v3, "filter_flag"

    .line 2340
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_15

    if-nez v2, :cond_15

    return-void

    .line 2345
    :cond_15
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2346
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onNewIntent(Landroid/content/Intent;)V

    .line 2348
    :cond_16
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v2, :cond_17

    invoke-interface {v2, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 2350
    :cond_17
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2351
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    goto :goto_3

    :cond_18
    if-eqz v0, :cond_19

    .line 2353
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onNewIntentWhenAlreadyOnHome()V

    goto :goto_3

    .line 2354
    :cond_19
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2355
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 2358
    :cond_1a
    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    return-void
.end method

.method public onNewIntentWhenAlreadyOnHome()V
    .locals 4

    .line 2376
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    .line 2381
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2382
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 2384
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2385
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    goto/16 :goto_0

    .line 2386
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 2387
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v1, "event_home"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    goto/16 :goto_0

    .line 2390
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2391
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v3, :cond_5

    .line 2392
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2393
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v3, :cond_5

    const-string v3, "home_key"

    .line 2394
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    .line 2397
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2398
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    :cond_7
    if-eqz v0, :cond_8

    .line 2400
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$14;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$14;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 2404
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 2400
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2406
    :cond_8
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2407
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_home"

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    :cond_9
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 2411
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2412
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2414
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2415
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->sceneOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2816
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onOverlayScrollEnd()V
    .locals 1

    .line 8234
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 8235
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8236
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 1386
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onPause()V

    .line 1387
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onPause()V

    .line 1388
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onPause()V

    .line 1392
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1393
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onPause()V

    :cond_1
    const/4 v0, 0x1

    .line 1395
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1396
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    const/4 v1, 0x3

    .line 1397
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1398
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1400
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 1405
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/Launcher$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$3;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1411
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1412
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    .line 1414
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1415
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->cancelImprovedToast()V

    .line 1416
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1417
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onPause()V

    const-wide/32 v0, 0xea60

    .line 1419
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/MemoryUtils;->trimMemoryInSubThreadDelayed(J)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 2781
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2782
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2783
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2786
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareSceneMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 6770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6771
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    const/16 v2, 0x1000

    if-nez v1, :cond_0

    .line 6772
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f1000c8

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6775
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 6776
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 6777
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f10002c

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6780
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6781
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f10014b

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6784
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onReorganizeStarted()V
    .locals 2

    const/4 v0, 0x7

    .line 5919
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x1

    .line 5920
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 5921
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5922
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4398
    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 4400
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    return-void

    .line 4404
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 8616
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8618
    invoke-virtual {p1}, Landroid/os/BadParcelableException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1312
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onResume()V

    .line 1313
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 1314
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onResume()V

    .line 1315
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$U-ipSzxGPnWZAXH8bOtSv8_uHoM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$U-ipSzxGPnWZAXH8bOtSv8_uHoM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1319
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1322
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1323
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    .line 1324
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1325
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onResume()V

    .line 1327
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->onResume()V

    .line 1328
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    const/4 v1, 0x4

    .line 1329
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1330
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1331
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    .line 1332
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 1333
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 1334
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 1335
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->handleRemainingTasksOnResume(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 1336
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 1337
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1338
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1341
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1342
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1343
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 1350
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    .line 1351
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsAccessibilityEnabledAsync()V

    .line 1352
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_5

    .line 1353
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    .line 1355
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1356
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->notifyCurrentScreen()V

    .line 1357
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 1358
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->clearLastLaunchApp()V

    .line 1359
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$9a0S3NAug5jIks94-pUbRf1K_kk;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$9a0S3NAug5jIks94-pUbRf1K_kk;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1360
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_6

    .line 1361
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    .line 1363
    :cond_6
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1364
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_7

    .line 1365
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1367
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onResume()V

    .line 1369
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/Launcher$OnResumeCallback;

    .line 1370
    invoke-interface {v1}, Lcom/miui/home/launcher/Launcher$OnResumeCallback;->onLauncherResume()V

    goto :goto_0

    .line 1372
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1374
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    return-void
.end method

.method public onScreenCellLocked(Z)V
    .locals 7

    .line 7740
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7741
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7742
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 7744
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7745
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    move v3, v0

    .line 7747
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 7748
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 7749
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v5, 0x1

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setEditMode(ZZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onScreenCellsChanged()V
    .locals 3

    .line 704
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 705
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 706
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetIconSizeScale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 708
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;

    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScale()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 3

    .line 2820
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 2823
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setIsScreenOrientationChanged(Z)V

    .line 2824
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 2825
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setIsScreenOrientationChanged(Z)V

    .line 2826
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 2827
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->onScreenOrientationChanged()V

    .line 2828
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2829
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 2830
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScreenOrientationChanged()V

    .line 2831
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onScreenOrientationChanged()V

    .line 2832
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->onScreenOrientationChanged()V

    .line 2833
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onScreenOrientationChanged()V

    .line 2834
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onScreenOrientationChanged()V

    .line 2835
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenOrientationChanged()V

    .line 2836
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenOrientationChanged()V

    .line 2837
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2838
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2840
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2841
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2842
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Launcher$19;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$19;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2850
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 2851
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2853
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onScreenOrientationChanged()V

    .line 2855
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2856
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    .line 2857
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 2859
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_4

    .line 2860
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 2861
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 2863
    :cond_4
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/ScreenOrientationChanged;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/ScreenOrientationChanged;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 2867
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onScreenSizeChanged()V

    .line 2868
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onScreenSizeChanged()V

    .line 2869
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->onScreenSizeChanged()V

    .line 2870
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenSizeChanged()V

    .line 2871
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenSizeChanged()V

    .line 2872
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 2873
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onScreenSizeChanged()V

    .line 2876
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScreenSizeChanged()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .line 2886
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2887
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :cond_0
    return v1
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7809
    new-instance p1, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v0, "second_point_down"

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void
.end method

.method public onSlideVertically(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1498
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStart()V

    .line 1499
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStart()V

    .line 1500
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1503
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherResume()V

    .line 1504
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStart()V

    .line 1507
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_2

    .line 1508
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_2
    const/4 v0, 0x1

    .line 1512
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1513
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1514
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_3

    .line 1515
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    .line 1517
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1518
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartHighlightLocatedApp()V
    .locals 3

    const/4 v0, 0x1

    .line 2502
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    .line 2503
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 2504
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onStateSetStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 8766
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8767
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStateChanged(Lcom/miui/home/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1472
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStop()V

    .line 1473
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStop()V

    .line 1474
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onStop()V

    .line 1478
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherPaused()V

    .line 1479
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onStop()V

    .line 1480
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1481
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStop()V

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    const/4 v0, 0x2

    .line 1484
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1485
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1486
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    :cond_2
    const/4 v0, 0x0

    .line 1489
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1490
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1491
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 1492
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewAddToScreen(Landroid/view/View;IJZ)V
    .locals 0

    .line 6473
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6474
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 6476
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 6477
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 6478
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 1220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "WALLPAPER_COLOR_MODE"

    .line 1221
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1222
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1223
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onWallpaperColorChanged()V

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 1227
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onWallpaperColorChanged()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 7526
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onWindowFocusChanged(Z)V

    .line 7527
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onWindowFocusChanged(Z)V

    .line 7528
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7532
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onWindowFocus()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7533
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    .line 7535
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    if-eqz p1, :cond_2

    .line 7536
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-nez v0, :cond_2

    .line 7537
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindServiceIfNeed()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 7539
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    if-nez v0, :cond_3

    .line 7540
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7541
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 7544
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$6aRJ_n8C5Ae5kHqwgN4Bmu0MLhs;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$6aRJ_n8C5Ae5kHqwgN4Bmu0MLhs;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 7547
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 7548
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    const/4 v1, 0x7

    .line 7549
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 7551
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7552
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_6
    return-void
.end method

.method public onWorkspaceScroll()V
    .locals 1

    .line 6964
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->needCancelBackAnimationWhenWorkspaceScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6965
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 6967
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6968
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    :cond_1
    return-void
.end method

.method public openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V
    .locals 1

    .line 4581
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4582
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$47;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$47;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pendingAllItems(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 7429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7431
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 7434
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    goto :goto_1

    .line 7436
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method preRemoveItem(Landroid/view/View;)V
    .locals 2

    .line 3102
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3103
    instance-of v1, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v1, :cond_0

    .line 3104
    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->preRemoveView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public prepareAnimationForUnlock()V
    .locals 1

    .line 6381
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->prepairUserPersentAnimation()V

    .line 6382
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_0

    .line 6383
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->scheduleTraversal()V

    :cond_0
    return-void
.end method

.method public prepareBeforeBindItems()V
    .locals 0

    .line 5431
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->updateGadgetBackup(Landroid/content/Context;)V

    return-void
.end method

.method public refreshSearchBarBlur()V
    .locals 1

    .line 8799
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8800
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->refreshBlur()V

    :cond_0
    return-void
.end method

.method reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 1074
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1075
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 1076
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1078
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider;->onCreate()Z

    .line 1081
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    return-object p1
.end method

.method public reloadGadget(I)V
    .locals 6

    .line 2974
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2975
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 2976
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 2977
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2978
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2980
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2981
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2982
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2983
    invoke-virtual {p0, v2, v1, v3}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reloadSearchBarIfNeed()V
    .locals 2

    .line 3562
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v0

    .line 3563
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 3564
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3566
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 3567
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSearchBarVisibleChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3568
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 3570
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3571
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    :cond_1
    return-void
.end method

.method public removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    .line 2171
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2172
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2173
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2174
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWidgetRemove(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    if-eqz v0, :cond_1

    .line 2177
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2179
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 6749
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6750
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public removeDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 6715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6716
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isQuickCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6717
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    .line 6719
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isPowerCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6720
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    .line 6723
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6725
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 6726
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    goto :goto_0

    .line 6728
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$I_i5Zx_bYBCCEXgBHjZUWFvzDJ4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$I_i5Zx_bYBCCEXgBHjZUWFvzDJ4;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 4

    .line 3108
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3109
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3114
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3115
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 3116
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 3117
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 3118
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onFolderDeleted()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Launcher"

    .line 3111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFolder failed, parent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",info:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public removeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    .line 3122
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->removeRecommendAppsViewKey()V

    return-void
.end method

.method public removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7282
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$h1gFBwS7412smJZ_Idfulu_f05E;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$h1gFBwS7412smJZ_Idfulu_f05E;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7283
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7284
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7286
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGadgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2193
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 2194
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeProgressIcon(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7294
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    return-void
.end method

.method public removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 7301
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7303
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v1, :cond_0

    .line 7305
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7306
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7307
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->prepareLayoutAnimation()V

    :cond_0
    const-string v1, "Launcher"

    .line 7309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeShortcutIcon, remove icon from folder, info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7310
    iget-wide v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    .line 7312
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7314
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 7315
    instance-of v2, v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    if-eqz v2, :cond_2

    const-string v2, "Launcher"

    .line 7316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeShortcutIcon, remove icon from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7317
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7316
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7318
    check-cast v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/Launcher$IconContainer;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I

    .line 7321
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7322
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 7325
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 7326
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7327
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    iget-wide v6, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 7328
    invoke-virtual {p1, p0, v3}, Lcom/miui/home/launcher/ShortcutInfo;->onReplaced(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p2, "Launcher"

    .line 7334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeShortcutIcon, info=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), addedLater="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", removeFromDB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    .line 7337
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7338
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_5
    return-void
.end method

.method public removeWorkspaceTransitionType(I)V
    .locals 1

    .line 5214
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreenTransitionType(I)V

    return-void
.end method

.method public resetDragItems()V
    .locals 1

    .line 6072
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onAppsAdded()V

    .line 6073
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 6074
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6076
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    :cond_0
    return-void
.end method

.method public safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V
    .locals 3

    .line 4456
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4464
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    const-string v0, "Launcher"

    .line 4465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher does not have the permission to launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    const/4 p1, 0x0

    .line 4459
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4460
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->handleActivityNotFound(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4461
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToDefault()V
    .locals 2

    .line 1423
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1424
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1425
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 1

    .line 8241
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8242
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V
    .locals 2

    const/4 v0, 0x0

    .line 7005
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7006
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$66;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$66;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7017
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEditingState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5042
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 5046
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 8

    .line 5059
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 5063
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->rejectEditingModeChanging(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x7

    const/16 v1, 0x11

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v1, :cond_b

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 5130
    :pswitch_0
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    goto/16 :goto_2

    .line 5127
    :pswitch_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v5, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    goto/16 :goto_2

    :pswitch_2
    const-string p2, "all"

    .line 5104
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    .line 5105
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v0, :cond_2

    .line 5106
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v6, p3}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5108
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 5109
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 5110
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5111
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 5112
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 5113
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5114
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v4, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5115
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 5117
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 5118
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v5}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    const p2, 0x7f10006b

    .line 5119
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 5120
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 5121
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    goto/16 :goto_2

    .line 5069
    :pswitch_3
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 5070
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v6}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_4

    .line 5071
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_4
    const/4 v6, 0x0

    .line 5073
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 5074
    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v2, v6, :cond_5

    if-eq v6, v1, :cond_5

    .line 5076
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5078
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5079
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 5080
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 5081
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v6

    if-nez v6, :cond_7

    .line 5083
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 5085
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v6

    if-nez v6, :cond_8

    .line 5086
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 5088
    :cond_8
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5089
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    .line 5090
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v6, v2, :cond_9

    move v6, v5

    goto :goto_1

    :cond_9
    move v6, v4

    :goto_1
    invoke-virtual {p2, p1, v6, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5091
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 5092
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 5093
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 5094
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result p2

    if-nez p2, :cond_a

    .line 5096
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 5098
    :cond_a
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 5099
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v3, :cond_c

    const p2, 0x7f10006c

    .line 5100
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_2

    .line 5124
    :cond_b
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V

    .line 5134
    :cond_c
    :goto_2
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5135
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5136
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v3, :cond_d

    .line 5137
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, v5}, Lcom/miui/home/launcher/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    .line 5139
    :cond_d
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->onEditModeStateChanged()V

    const-string p1, "Launcher"

    const-string v3, "edit state changed from %s to %s"

    const/4 v6, 0x2

    .line 5140
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5141
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v3, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;

    iget v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-direct {v3, v4, p2}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;-><init>(II)V

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5142
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq p1, v2, :cond_f

    if-ne p2, v2, :cond_e

    if-eq p1, v0, :cond_f

    .line 5144
    :cond_e
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_f
    if-ne p2, v1, :cond_10

    .line 5147
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-nez p1, :cond_10

    .line 5148
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5150
    :cond_10
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 5151
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_11
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFeedOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 1

    .line 8246
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8247
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setFeedOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public setLastLaunchApp(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    .locals 3

    .line 640
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 641
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 642
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isEquals(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_1
    return-void
.end method

.method public setLauncherCallbacks(Lcom/miui/home/launcher/LauncherCallbacks;)Z
    .locals 0

    .line 8194
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    const/4 p1, 0x1

    return p1
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 8203
    new-instance v0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 8204
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    const/4 v1, 0x0

    .line 8205
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->onScrollChanged(F)V

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 8207
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    const/4 v0, 0x0

    .line 8208
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    .line 8209
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8210
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setLauncherWindowAlpha(F)V
    .locals 3

    .line 7515
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7516
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7517
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 7518
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "Launcher"

    .line 7519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLauncherWindowAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public showAppView()V
    .locals 3

    .line 8534
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8535
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public showDefaultScreenPreviewView(Z)V
    .locals 3

    .line 7861
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 7864
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setIsShowing(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7866
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 7867
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 7868
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setVisibility(I)V

    .line 7869
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7870
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->onShow(Z)V

    const v0, 0x7f10006f

    .line 7871
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_0

    .line 7873
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 7874
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 7875
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const v0, 0x7f10005a

    .line 7876
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 7878
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/DefaultScreenPreviewVisibilityMessage;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/common/messages/DefaultScreenPreviewVisibilityMessage;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public showError(I)V
    .locals 1

    .line 2223
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return-void
.end method

.method public showMenu(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 7694
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-nez p1, :cond_0

    .line 7695
    new-instance p1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 7697
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7698
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    .line 7700
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7701
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-eqz p1, :cond_3

    .line 7702
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7703
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showPresent()V
    .locals 4

    .line 3577
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3578
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 3579
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3580
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->boost(Landroid/view/View;Z)V

    .line 3581
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3583
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->showAnimation()V

    goto :goto_0

    .line 3585
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->resetAnimation()V

    .line 3587
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->showUserPresentAnimation()V

    .line 3588
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3589
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    return-void
.end method

.method public showSceneScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 4861
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 4862
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4864
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenLoading()V

    goto :goto_0

    .line 4866
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reinit()V

    .line 4867
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public showSceneScreenLoading()V
    .locals 5

    .line 4907
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v2, 0x0

    const v3, 0x7f0d004c

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 4910
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 4912
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 4913
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4914
    new-instance v1, Lcom/miui/home/launcher/Launcher$49;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$49;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4919
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 4921
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method public showStatusBar(Z)V
    .locals 2

    .line 5240
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5241
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$BLcbPAm_vkA1pudb506aE-e0lhg;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$BLcbPAm_vkA1pudb506aE-e0lhg;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showStatusBarDelay(ZJ)V
    .locals 1

    .line 5234
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    .line 5235
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5236
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTogglesSelectView()V
    .locals 4

    .line 2035
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-nez v0, :cond_0

    .line 2036
    new-instance v0, Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/TogglesSelectView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    .line 2037
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public showTransitionMenu(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 7709
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-nez p1, :cond_0

    .line 7710
    new-instance p1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 7712
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7713
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 7715
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7716
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz p1, :cond_3

    .line 7717
    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7718
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showWidgetsPreviewLayout(Z)V
    .locals 4

    .line 5156
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 5157
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5161
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 5162
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->resetAdapter()V

    .line 5163
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setScreenType(I)V

    .line 5164
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setVisibility(I)V

    .line 5165
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5166
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5167
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5168
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    .line 5169
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 5170
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    goto :goto_1

    .line 5172
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5173
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5174
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5175
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 5176
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 5178
    :goto_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/WidgetsPreviewMessage;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/common/messages/WidgetsPreviewMessage;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public snapWorkspacePreview(I)V
    .locals 1

    .line 5297
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->blockSnap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5298
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    .line 5299
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    .line 4411
    :try_start_0
    instance-of v1, p3, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_1

    .line 4412
    move-object v0, p3

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v0

    .line 4413
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v1, :cond_0

    .line 4414
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v1, p0, p3, v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 4416
    :cond_0
    invoke-static {p3, v0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 4419
    :goto_0
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 4420
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4421
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch()V

    .line 4422
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4423
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 4424
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onLaunchApplication(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4425
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 4426
    move-object p3, v0

    check-cast p3, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    .line 4427
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 4428
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4429
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    .line 4428
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->startShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    const-string v0, "profile"

    .line 4433
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 4434
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x10000000

    .line 4435
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4436
    invoke-direct {p0, v1, p3}, Lcom/miui/home/launcher/Launcher;->tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V

    .line 4438
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGoolgPlay(Landroid/content/Intent;)V

    if-eqz v0, :cond_5

    .line 4439
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 4441
    :cond_3
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4442
    invoke-static {p0, v1, v4, v0}, Lcom/miui/launcher/utils/LauncherUtils;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 4445
    :cond_4
    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ux1mK9gp0LqAFcXx0Bkf_4Sako;

    invoke-direct {p3, p0, v1, v0, v4}, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ux1mK9gp0LqAFcXx0Bkf_4Sako;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    goto :goto_2

    .line 4440
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    const v0, 0x7f10024a

    const/4 v1, 0x0

    .line 4449
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Launcher"

    .line 4450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher cannot start this activity(app2sd?)tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " intent="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public startActivityForCreateShortcut(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 3037
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4510
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4493
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$yMS2T1kyFB-RqW412ab_ei1HOh8;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$yMS2T1kyFB-RqW412ab_ei1HOh8;-><init>(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    const/16 p1, 0x3ea

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 4504
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 4

    const/4 v0, 0x3

    .line 5467
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5468
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5470
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5471
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5474
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/CellLayout;->removeAllViewsInLayout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startLoading()V
    .locals 2

    const/4 v0, 0x0

    .line 5436
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    const/4 v0, 0x1

    .line 5437
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 5438
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearForReload()V

    .line 5439
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5440
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->startLoading()V

    .line 5441
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->startLoading()V

    .line 5442
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setEnable(Z)V

    .line 5443
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLoadingAsyncInflateManager()V

    .line 5444
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    .line 5445
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    .line 5446
    invoke-static {p0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6

    .line 2735
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2738
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2739
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearTypedText()V

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string p1, "search"

    .line 2743
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/SearchManager;

    .line 2744
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public startSecurityHide()V
    .locals 2

    .line 8273
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8274
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    if-nez v0, :cond_0

    .line 8276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIVACY_APPS_HELPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 8277
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8278
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 8279
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    :cond_0
    return-void
.end method

.method public tryToRegisterWidgetListener()V
    .locals 3

    .line 8432
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-nez v0, :cond_0

    .line 8434
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    const/4 v0, 0x1

    .line 8435
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startListening error"

    .line 8438
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 6858
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 6859
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    .line 6863
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6864
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    :cond_1
    const-string v2, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    .line 6868
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6869
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    :cond_2
    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 6873
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 6875
    new-instance v1, Lcom/miui/home/launcher/Launcher$65;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/Launcher$65;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 6890
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public updateDeepShortcut(Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 3

    .line 6756
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6757
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6758
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6760
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    :cond_0
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7467
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V
    .locals 4

    .line 8293
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 8294
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8296
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8297
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "attached-launcher-identifier"

    const-string v3, "com.miui.home"

    .line 8298
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "requested-widget-style"

    const-string v3, "cqsb"

    .line 8299
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8300
    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 8303
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p3, 0x80

    .line 8304
    invoke-virtual {p1, v0, p3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 8305
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string p3, "com.google.android.gsa.searchwidget.alt_initial_layout_cqsb"

    const/4 v0, -0x1

    .line 8306
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 8308
    iput p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateSoftInputMode()V
    .locals 2

    .line 8592
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 8597
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    if-eq v0, v1, :cond_1

    .line 8598
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8599
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    :cond_1
    return-void
.end method

.method public updateStatusBarClock()V
    .locals 2

    .line 5293
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    return-void
.end method

.method public updateStatusBarClock(J)V
    .locals 1

    .line 5268
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->isDisableUpdateStatusBarClock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5272
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Launcher"

    const-string p2, "workspace is loading, don\'t update status bar"

    .line 5273
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5277
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5278
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    if-nez v0, :cond_3

    .line 5280
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    .line 5281
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5282
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasClockGadget(J)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 5283
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 5284
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 5285
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 5287
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarClockController:Lcom/miui/launcher/utils/StatusBarClockController;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$FWSeTPNQ3mEGWKlmm7qmA9Ajw2w;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$FWSeTPNQ3mEGWKlmm7qmA9Ajw2w;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p2, p1, v0}, Lcom/miui/launcher/utils/StatusBarClockController;->showOrHideClock(ZLjava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public updateWallpaperOffset(FFFF)Z
    .locals 1

    .line 5393
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWallpaperOffsetAnimate(FFFF)Z
    .locals 1

    .line 5397
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffsetAnimate(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWidgetProgress(Ljava/lang/String;I)V
    .locals 3

    .line 6256
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 6257
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6258
    invoke-virtual {v1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProgress(I)V

    .line 6259
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 6260
    iget-object v1, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v1, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    .line 6261
    invoke-virtual {v1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->updateProgress()V

    goto :goto_0

    :cond_1
    return-void
.end method
