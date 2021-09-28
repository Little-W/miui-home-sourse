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

.field private mAutoFillEmptyObserver:Landroid/database/ContentObserver;

.field private mBackCoverChanged:Z

.field private mBackHomeAnimationStop:Ljava/lang/Runnable;

.field private final mBoostResetRunnable:Ljava/lang/Runnable;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallingPowerKeeper:Z

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

.field private mDragViewContainer:Landroid/widget/FrameLayout;

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

.field private mIsPowerKeeperPermissionGranted:Z

.field private mIsStartingLockWallpaperPreviewActivity:Z

.field private mIsVisible:Z

.field private mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mLastHomeClickedTime:J

.field private mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

.field private mLastLaunchComponentName:Landroid/content/ComponentName;

.field private mLastMotionEventLocation:Ljava/lang/String;

.field private mLastPauseTimeForNewInstall:J

.field private mLastPausedTime:J

.field private mLauncherApp:Lcom/miui/home/launcher/Application;

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

.field private mScreenCellsLockedObserver:Landroid/database/ContentObserver;

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

.field private mStatusBarController:Lcom/miui/launcher/utils/StatusBarController;

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

    .line 1127
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    .line 5557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/library/utils/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 5558
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5557
    invoke-static {v1}, Lmiuix/core/util/FileUtils;->normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;

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

    .line 841
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    .line 407
    new-instance v0, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    .line 437
    new-instance v1, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$AppWidgetResetObserver;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 474
    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 477
    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v1, 0x0

    .line 479
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    .line 484
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 492
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 493
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 494
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    const-wide/16 v2, -0x1

    .line 495
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 496
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 498
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    .line 500
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    .line 502
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 504
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v4, 0x1

    .line 505
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 506
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    const/4 v5, 0x7

    .line 507
    iput v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 515
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 520
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    .line 521
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    .line 522
    new-instance v5, Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    .line 523
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    .line 524
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    .line 525
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 532
    new-instance v5, Lcom/miui/home/launcher/common/ConflictsManager;

    invoke-direct {v5}, Lcom/miui/home/launcher/common/ConflictsManager;-><init>()V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    .line 533
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPowerKeeperPermissionGranted:Z

    const-wide/16 v5, 0x0

    .line 536
    iput-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 537
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 538
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 541
    new-instance v5, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    invoke-direct {v5, p0, v1}, Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLongClickInBackgroundMessageHandler:Lcom/miui/home/launcher/Launcher$LongClickInBackgroundMessageHandler;

    const/4 v5, 0x2

    .line 550
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    .line 553
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 566
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 568
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 570
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 576
    new-instance v6, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    invoke-direct {v6}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    .line 588
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    .line 589
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 591
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 593
    new-instance v6, Lcom/miui/home/launcher/Launcher$1;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$1;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    .line 825
    new-instance v6, Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/LauncherLifecycleLog;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    .line 829
    new-instance v6, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-direct {v6}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    .line 846
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 847
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 1452
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    .line 1457
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1611
    new-instance v6, Lcom/miui/home/launcher/Launcher$5;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/Launcher$5;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1669
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 2051
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f7d70a4    # 0.99f

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v8, v6, v3}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 2052
    new-instance v2, Lcom/miui/home/launcher/animate/SpringAnimator;

    const v8, 0x3ea3d70a    # 0.32f

    invoke-direct {v2, v7, v8, v3, v6}, Lcom/miui/home/launcher/animate/SpringAnimator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    .line 2329
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    .line 2600
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$dlEK9FIt3oJvGIMFWRtgMiH1pPA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    .line 3376
    new-instance v2, Lcom/miui/home/launcher/Launcher$21;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$21;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    .line 3384
    new-instance v2, Lcom/miui/home/launcher/Launcher$22;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$22;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsLockedObserver:Landroid/database/ContentObserver;

    .line 3396
    new-instance v2, Lcom/miui/home/launcher/Launcher$23;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$23;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAutoFillEmptyObserver:Landroid/database/ContentObserver;

    .line 3423
    new-instance v2, Lcom/miui/home/launcher/Launcher$24;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$24;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    .line 3430
    new-instance v2, Lcom/miui/home/launcher/Launcher$25;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$25;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    .line 3446
    new-instance v2, Lcom/miui/home/launcher/Launcher$26;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$26;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    .line 3453
    new-instance v2, Lcom/miui/home/launcher/Launcher$27;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$27;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3461
    new-instance v2, Lcom/miui/home/launcher/Launcher$28;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$28;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3471
    new-instance v2, Lcom/miui/home/launcher/Launcher$29;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$29;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3484
    new-instance v2, Lcom/miui/home/launcher/Launcher$30;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$30;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    .line 3502
    new-instance v2, Lcom/miui/home/launcher/Launcher$31;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$31;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3510
    new-instance v2, Lcom/miui/home/launcher/Launcher$32;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$32;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    .line 3520
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    .line 3522
    new-instance v2, Lcom/miui/home/launcher/Launcher$33;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$33;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    .line 3540
    new-instance v2, Lcom/miui/home/launcher/Launcher$34;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$34;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3558
    new-instance v2, Lcom/miui/home/launcher/Launcher$35;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$35;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3565
    new-instance v2, Lcom/miui/home/launcher/Launcher$36;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$36;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    .line 3576
    new-instance v2, Lcom/miui/home/launcher/Launcher$37;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$37;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    .line 3583
    new-instance v2, Lcom/miui/home/launcher/Launcher$38;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$38;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    .line 3607
    new-instance v2, Lcom/miui/home/launcher/Launcher$39;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$39;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    .line 3625
    new-instance v2, Lcom/miui/home/launcher/Launcher$40;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$40;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    .line 3633
    new-instance v2, Lcom/miui/home/launcher/Launcher$41;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$41;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    .line 3640
    new-instance v2, Lcom/miui/home/launcher/Launcher$42;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/miui/home/launcher/Launcher$42;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    .line 3916
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    .line 4051
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    .line 4052
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    const-string v2, ""

    .line 4285
    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4504
    new-instance v2, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    .line 5360
    new-instance v2, Lcom/miui/home/launcher/Launcher$56;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$56;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    .line 5790
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$pHR9mCmDN9Viz9YtZ51ShIRspUI;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$pHR9mCmDN9Viz9YtZ51ShIRspUI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    .line 5934
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 5935
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 6554
    new-instance v2, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDeleteCellScreenMessageHandler:Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;

    .line 6556
    new-instance v2, Lcom/miui/home/launcher/Launcher$65;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$65;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    .line 7174
    new-instance v2, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$MiuiAppTransitionCallback;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 7673
    new-instance v2, Lcom/miui/home/launcher/Launcher$77;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$77;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    .line 7703
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    .line 7909
    new-instance v2, Lcom/miui/home/launcher/Launcher$80;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$80;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    .line 8017
    new-instance v2, Lcom/miui/home/launcher/Launcher$81;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$81;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    .line 8125
    new-instance v2, Lcom/miui/home/launcher/Launcher$82;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$82;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    .line 8135
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 8158
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    .line 8159
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    .line 8164
    new-instance v2, Lcom/miui/home/launcher/Launcher$FsCallback;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$FsCallback;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    .line 8271
    new-instance v2, Lcom/miui/home/launcher/Launcher$84;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$84;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    const/high16 v2, -0x40800000    # -1.0f

    .line 8400
    iput v2, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    .line 8457
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 8621
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    const/4 v0, -0x1

    .line 8780
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    .line 8913
    new-instance v0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModuleMessageHandler:Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;

    .line 8926
    new-instance v0, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$RecentMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRecentMessageHandler:Lcom/miui/home/launcher/Launcher$RecentMessageHandler;

    .line 842
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;-><init>(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 843
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksChinese;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksChinese;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 842
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherCallbacks(Lcom/miui/home/launcher/LauncherCallbacks;)Z

    return-void
.end method

.method private abortBackAnimationOnChange()V
    .locals 1

    const/4 v0, 0x1

    .line 7145
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7146
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz v0, :cond_0

    .line 7147
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    :cond_0
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    const-string v0, "input_method"

    .line 1709
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1710
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/miui/home/launcher/Launcher;FF)V
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->updateScreenAlphaAndScale(FF)V

    return-void
.end method

.method static synthetic access$10100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    return-void
.end method

.method static synthetic access$10300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p0
.end method

.method static synthetic access$10302(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/miui/home/launcher/Launcher;)Landroid/content/ServiceConnection;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 354
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p0
.end method

.method static synthetic access$10502(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 354
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    return p1
.end method

.method static synthetic access$10602(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Launcher;)J
    .locals 2

    .line 354
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    return-wide v0
.end method

.method static synthetic access$11000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/settings/LauncherGestureController;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    return-object p0
.end method

.method static synthetic access$11301(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Launcher;)Ljava/util/ArrayList;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;)Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->inflatePaView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/widget/WidgetsPreviewPage;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 354
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaAlpha:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FolderCling;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)Lcom/miui/home/launcher/IBackAnimView;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 354
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleX:F

    return p1
.end method

.method static synthetic access$2202(Lcom/miui/home/launcher/Launcher;F)F
    .locals 0

    .line 354
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderDeltaScaleY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/EditingEntryThumbnailView;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/HotSeats;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/SearchBar;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 354
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p0
.end method

.method static synthetic access$2802(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 354
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mAppLocateFolderScrollOffset:I

    return p1
.end method

.method static synthetic access$2900(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method static synthetic access$3300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FitSystemWindowView;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshAllAppsIcon()V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/home/launcher/Launcher;)Ljava/lang/String;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/miui/home/launcher/Launcher;)Ljava/util/HashSet;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/miui/home/launcher/Launcher;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/Launcher;->updateTitleTip(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->changeToBackedupLockWallpaper()V

    return-void
.end method

.method static synthetic access$4300(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->autoChangeLockWallpaper(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method static synthetic access$4500(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    return-void
.end method

.method static synthetic access$4600(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 354
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    return p0
.end method

.method static synthetic access$4700(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->notifyFancyIconPresent()V

    return-void
.end method

.method static synthetic access$4900(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/miui/home/launcher/Launcher;J)V
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->startLockWallpaperPreviewActivity(J)V

    return-void
.end method

.method static synthetic access$5300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->requestGlobalFoldersPreinstallAd()V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/miui/home/launcher/Launcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/miui/home/launcher/Launcher;J)Landroid/os/Bundle;
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->generateDefaultParams(J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lcom/miui/home/launcher/Launcher;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 354
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/Launcher;->geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->reportLockWallpaperFail()V

    return-void
.end method

.method static synthetic access$6502(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->setLockWallpaperFromProvider(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p0
.end method

.method static synthetic access$6702(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mNeedLast:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveMotionEventLog(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkIntentPermissions(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$7002(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/animate/SpringAnimator;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    return-void
.end method

.method static synthetic access$7302(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7500(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method static synthetic access$7600(Lcom/miui/home/launcher/Launcher;)Landroid/view/ViewGroup;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7602(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    return p0
.end method

.method static synthetic access$7900(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 354
    iget p0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p0
.end method

.method static synthetic access$8000(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getPackageNames(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/Launcher;I)I
    .locals 0

    .line 354
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return p1
.end method

.method static synthetic access$8100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->removeEmptyFolders()V

    return-void
.end method

.method static synthetic access$8300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragController;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object p0
.end method

.method static synthetic access$8602(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/miui/home/launcher/Launcher;I)Ljava/util/ArrayList;
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->getGadgetList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8800(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8900(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    return p0
.end method

.method static synthetic access$9000(Lcom/miui/home/launcher/Launcher;)Ljava/lang/Runnable;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p0
.end method

.method static synthetic access$9202(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/fsgesture/IFsGestureService;)Lcom/android/systemui/fsgesture/IFsGestureService;
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return p0
.end method

.method static synthetic access$9400(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return p0
.end method

.method static synthetic access$9500(Lcom/miui/home/launcher/Launcher;ZLjava/lang/String;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->notifyFsGestureHomeStatus(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->notifyFsGestureHomeStatus(Z)V

    return-void
.end method

.method static synthetic access$9700(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9800(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9900(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private adaptPNotchScreen(Landroid/view/Window;)V
    .locals 2

    .line 1052
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1053
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 1055
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    .line 1056
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1058
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "adaptPNotchScreen"

    .line 1060
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private addHomeFeedContainer()V
    .locals 3

    .line 1894
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    .line 1895
    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    .line 1897
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    .line 1898
    new-instance v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 1899
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->refreshSettings()V

    return-void
.end method

.method private addNewInstallIndicator()V
    .locals 3

    .line 5809
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5811
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5812
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherProvider;->createdFirstTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5813
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZcHH81TR_sg7_VE8TtbbWMpf5Ug;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZcHH81TR_sg7_VE8TtbbWMpf5Ug;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 5817
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5818
    new-instance v1, Lcom/miui/home/launcher/Launcher$58;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$58;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$fsX3r60QnDJI_OKNboQiLvMkLNQ;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$fsX3r60QnDJI_OKNboQiLvMkLNQ;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 5172
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setEditingStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private afterShowUserPresentAnimation()V
    .locals 5

    .line 5988
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5992
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5993
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    .line 5994
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v2, v3}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5995
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5999
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6000
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showQuickCallCellLayoutTitle()V

    .line 6001
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->alignIconsToTopWithSaveDb()V

    .line 6002
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    goto :goto_1

    .line 6004
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->alignScreenIfNeed()V

    .line 6006
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->preloadFolderContent()V

    .line 6007
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllAppsLabel()V

    .line 6008
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addNewInstallIndicator()V

    .line 6009
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_4

    .line 6010
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkAllUserDeepShortcuts()V

    .line 6012
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$EZ8z8_4PjUyJGRwTvtLL7L75T2g;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$EZ8z8_4PjUyJGRwTvtLL7L75T2g;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 6013
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    .line 6014
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 6015
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startTaplusService()V

    .line 6016
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindServiceIfNeed()V

    .line 6018
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    .line 6019
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6020
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOg9dH91rwZ-yOG29nz8CI9c70w;

    invoke-direct {v4, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$dOg9dH91rwZ-yOG29nz8CI9c70w;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 6025
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/common/AppCategoryManager;->initAppCategoryListAsync(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 6026
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6027
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAppsView()V

    .line 6028
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6029
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 6031
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->trackShow()V

    .line 6032
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    .line 6033
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    return-void
.end method

.method private alignScreenIfNeed()V
    .locals 7

    .line 6037
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->shouldAlignScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6039
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIgnoreAlignScreenList()Ljava/lang/String;

    move-result-object v0

    .line 6041
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, ","

    .line 6042
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    move v3, v1

    .line 6044
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 6045
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v4

    .line 6046
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_1

    .line 6047
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_2

    .line 6048
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v6, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6051
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIgnoreAlignScreenList(Ljava/lang/String;)V

    .line 6052
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setShouldAlignScreen(Z)V

    :cond_4
    return-void
.end method

.method private applyingDefaultTheme()Z
    .locals 8

    const-string v0, "/data/system/theme"

    .line 4167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4168
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4169
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 4173
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 4174
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "icons"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4175
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

    .line 4054
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsChangingLockWallpaper:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4057
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$48;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$48;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 4098
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher$48;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    .line 6300
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

    .line 6301
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 6303
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 2

    .line 5006
    new-instance v0, Lcom/miui/home/launcher/CustomableReference;

    .line 5007
    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isBigScreenLowMemory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 5009
    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/miui/home/launcher/CustomableReference;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenRef:Lcom/miui/home/launcher/CustomableReference;

    return-void
.end method

.method private cancelIconBackAnimation()V
    .locals 2

    .line 7152
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7153
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "Launcher"

    const-string v1, "cancelMiuiThumbnailAnimation"

    .line 7154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7155
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelMiuiThumbnailAnimation(Landroid/content/Context;)V

    return-void
.end method

.method private changeScreenContent(F)V
    .locals 2

    .line 2084
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    .line 2086
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 2087
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private changeScreenContentOnClose(F)V
    .locals 0

    .line 2073
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 2074
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeScreenContentOnOpen(F)V
    .locals 0

    .line 2068
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 2069
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContent(F)V

    return-void
.end method

.method private changeToBackedupLockWallpaper()V
    .locals 2

    .line 4159
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isDefaultLockStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4160
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaper(Landroid/content/Context;)V

    .line 4161
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

    .line 8112
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

    .line 8115
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 8118
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 8119
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 8120
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 8121
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 8122
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private checkAllAppsLabel()V
    .locals 2

    .line 6167
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$esCqyIe8MQtkYlMVdbKS5gVwhcg;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$esCqyIe8MQtkYlMVdbKS5gVwhcg;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAllUserDeepShortcuts()V
    .locals 4

    .line 6095
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    .line 6096
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

    .line 6097
    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$rxwftyBymZcna6v5MbZy0xkZbOs;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$rxwftyBymZcna6v5MbZy0xkZbOs;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$U3NNdQ7CuoLBg_eBd3K8euZ4OHY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$U3NNdQ7CuoLBg_eBd3K8euZ4OHY;

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkDarkMode()V
    .locals 1

    .line 8546
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8547
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onDarkModeChanged()V

    :cond_0
    return-void
.end method

.method private checkDeepShortcuts(Landroid/os/UserHandle;)V
    .locals 11

    const-string v0, "Launcher"

    .line 6114
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

    .line 6115
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 6117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6120
    invoke-virtual {v3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6124
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->queryForPinnedShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 6126
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

    .line 6127
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6128
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v0, "Launcher"

    const-string v3, "checkDeepShortcuts, contact deep shortcut don\'t match currentMode"

    .line 6129
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6134
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6135
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6136
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6137
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6138
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6140
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Launcher"

    const-string v9, "checkUserDeepShortcuts, update deepShortcut(%s, %s, %s)"

    .line 6141
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

    .line 6142
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/miui/home/launcher/ShortcutChangeTask;

    invoke-direct {v4, v8, v1, v0, p0}, Lcom/miui/home/launcher/ShortcutChangeTask;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_1

    .line 6146
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->makeInstallShortcutIntent(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v3

    .line 6147
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/home/launcher/Launcher$62;

    invoke-direct {v5, p0, v3, v0}, Lcom/miui/home/launcher/Launcher$62;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 6160
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

    .line 6161
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

    .line 6162
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

    .line 1156
    new-instance v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;-><init>(Lcom/miui/home/launcher/Launcher$1;)V

    .line 1157
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    .line 1159
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1161
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1162
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1164
    iget v4, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1165
    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1167
    iget v6, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1168
    iget v1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1170
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

    .line 1173
    iput-object v3, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1174
    iput v5, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1175
    iput v1, v0, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    .line 1177
    invoke-static {p0, v0}, Lcom/miui/home/launcher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V

    return v8

    :cond_2
    return v7
.end method

.method private checkIntentPermissions(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.action.CALL"

    .line 4511
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4512
    invoke-static {p0}, Lcom/miui/home/launcher/common/PermissionUtils;->checkCallPhonePermission(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 4513
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/PermissionUtils;->requestCallPhonePermissions(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkInvalidateGadget()V
    .locals 4

    .line 5945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5946
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

    .line 5947
    instance-of v3, v2, Lcom/miui/home/launcher/gadget/MtzGadget;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/miui/home/launcher/gadget/MtzGadget;

    .line 5948
    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/MtzGadget;->isInvalidateGadget()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5949
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v3, :cond_0

    .line 5950
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5953
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5954
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    .line 5955
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f1002fa

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 5956
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private checkNewInstalledAppsBeStarted()V
    .locals 4

    .line 1671
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1672
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 1673
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1674
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1676
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1677
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

    .line 1678
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1679
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1682
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/Launcher$6;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/Launcher$6;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkOrientation()V
    .locals 4

    .line 8526
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8527
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    const-string v1, "Launcher"

    .line 8528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen orientation changed, newOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8529
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->onIdpChanged()V

    .line 8530
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method private clearForReload()V
    .locals 3

    .line 5545
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5546
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/-$$Lambda$NJOekdPMOzsFrmcAY8SQC5oqj3g;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 5547
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5548
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5549
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

    .line 5550
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_0

    .line 5552
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5553
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->removeAllScreens()V

    .line 5554
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearScreens()V

    return-void
.end method

.method private clearLastAddInfo()V
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 2255
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    const/4 v0, 0x0

    .line 2256
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    :cond_0
    return-void
.end method

.method private clearRemoteAnimationProvider()V
    .locals 1

    .line 8880
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8881
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 8882
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->clearRemoteAnimationProvider()V

    :cond_0
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .line 1738
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1739
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1740
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v9, p0

    .line 2202
    iget-object v0, v9, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "completeAddAppWidget error, mLastAddInfo isn\'t class(LauncherAppWidgetProviderInfo)"

    .line 2203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2206
    :cond_0
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 2211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "appWidgetId"

    .line 2213
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Launcher"

    .line 2214
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

    .line 2217
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v2

    const-string v3, "Launcher"

    .line 2218
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

    .line 2222
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void

    .line 2228
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v1, v2, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(ILcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 2230
    iget-wide v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 2231
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

    .line 2234
    :cond_4
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v3, v9, v1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2235
    invoke-direct {v9, v1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2238
    iget-object v3, v9, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v9, v2, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2240
    iget-object v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9, v9, v3, v4}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 2241
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v2, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2242
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2243
    iget-object v2, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    iget v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/CellLayout;->getWidgetMeasureSpec(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 2245
    iget-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v3 .. v8}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 2247
    iget-object v10, v9, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v11, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v12, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    iget v13, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    iget v14, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v15, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 2248
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v16

    .line 2247
    invoke-virtual/range {v10 .. v16}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 2250
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    return-void
.end method

.method private completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;
    .locals 6

    .line 2153
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

    .line 2155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 2156
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 2157
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    instance-of v5, v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    if-eqz v5, :cond_2

    .line 2158
    check-cast v4, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 2161
    :goto_1
    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    const/4 v5, 0x1

    .line 2162
    invoke-direct {p0, v0, v1, v5}, Lcom/miui/home/launcher/Launcher;->findSingleSlot(IIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v3

    .line 2165
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1, p1, v0, v5}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Lcom/miui/home/launcher/CellLayout$CellInfo;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2167
    invoke-virtual {p1, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 2169
    invoke-virtual {p0, p1, v5, v2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v3
.end method

.method private completeAddShortcutToggle(I)Landroid/view/View;
    .locals 2

    .line 2188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ToggleId"

    .line 2189
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2190
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 2191
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2192
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private disconnectFsGuestureService()V
    .locals 3

    .line 8294
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "com.miui.home"

    .line 8296
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFsCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/fsgesture/IFsGestureService;->unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8298
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 8301
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

    .line 8357
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

    .line 8358
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

    .line 8357
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Si4yswtdwG6tg4x_X1rtW_b6FLw;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Si4yswtdwG6tg4x_X1rtW_b6FLw;-><init>(Ljava/util/function/Consumer;)V

    .line 8360
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private doSelfProtect()V
    .locals 3

    .line 807
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    .line 808
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mToken:Landroid/os/Binder;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->setProcessForeground(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setProcessForeground"

    .line 810
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V
    .locals 10

    .line 4904
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->moveDragViewToFirst(Landroid/view/View;)V

    .line 4905
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 4906
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedDragSources()[Lcom/miui/home/launcher/DragSource;

    move-result-object v9

    .line 4908
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4909
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 4911
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 4912
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iget p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 4911
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/FolderCling;->beforeDragStart(I)V

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-nez p2, :cond_1

    .line 4915
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v3, 0x0

    .line 4916
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

    .line 4915
    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/launcher/DragController;->startDrag([Lcom/miui/home/launcher/ShortcutInfo;ZF[Lcom/miui/home/launcher/DragSource;IIZ)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4918
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4922
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    .line 4923
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v9

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/DragController;->startAutoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DropTarget;II)V

    goto :goto_1

    .line 4926
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2, v0, v9, v3, v2}, Lcom/miui/home/launcher/DragController;->autoDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;II)V

    .line 4928
    invoke-direct {p0, v0, v9}, Lcom/miui/home/launcher/Launcher;->removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 4932
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->afterDragStart()V

    .line 4934
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragMultiItems()V

    return-void
.end method

.method private dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V
    .locals 1

    .line 4892
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4893
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Folder;->startDrag(Landroid/view/View;)V

    goto :goto_0

    .line 4895
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->startDrag(Lcom/miui/home/launcher/CellLayout$CellInfo;)V

    .line 4897
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_1

    .line 4898
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->saveCheckedStatus()V

    .line 4900
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDragItem(Landroid/view/View;)V

    return-void
.end method

.method private fadeInOrOutScreenContentWhenFolderAnimate(Z)V
    .locals 3

    .line 2055
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 2056
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 2058
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    goto :goto_1

    .line 2060
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 2061
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

    .line 2062
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 2063
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

    .line 3209
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

    .line 3213
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/Launcher;->findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object p1

    return-object p1
.end method

.method private findSlot(JIIIIZ)Lcom/miui/home/launcher/CellLayout$CellInfo;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3217
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    goto :goto_0

    .line 3218
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 3223
    :cond_1
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/miui/home/launcher/CellLayout;->findNearestVacantAreaByCellPos(IIII)[I

    move-result-object p1

    if-nez p1, :cond_3

    if-eqz p7, :cond_2

    const p1, 0x7f1002a7

    .line 3226
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->showError(I)V

    :cond_2
    return-object p2

    .line 3231
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/CellLayout$CellInfo;

    invoke-direct {p2}, Lcom/miui/home/launcher/CellLayout$CellInfo;-><init>()V

    const/4 p3, 0x0

    .line 3232
    aget p3, p1, p3

    iput p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    const/4 p3, 0x1

    .line 3233
    aget p1, p1, p3

    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    .line 3234
    iput p5, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanX:I

    .line 3235
    iput p6, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->spanY:I

    const/16 p1, -0x64

    .line 3236
    iput p1, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->container:I

    .line 3237
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p3

    iput-wide p3, p2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    return-object p2
.end method

.method private geneateParams(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 3907
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showTime"

    .line 3908
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "currentWallpaperInfo"

    .line 3909
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wallpaperInfos"

    .line 3910
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adWallpaperInfos"

    .line 3911
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dialogComponent"

    .line 3912
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

    .line 6956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6957
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

    .line 6958
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 6959
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 6960
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

    .line 7100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 7103
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x1

    .line 7104
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7106
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

    .line 8614
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 8615
    instance-of v0, p0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 8616
    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0

    .line 8618
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;
    .locals 1

    .line 6834
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6837
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6838
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

    .line 6835
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

    .line 6854
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6855
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v8, Lcom/miui/home/launcher/-$$Lambda$Launcher$9rsekGBqodkSMHTSDpkS7-ZSFuQ;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/-$$Lambda$Launcher$9rsekGBqodkSMHTSDpkS7-ZSFuQ;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method private getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 4015
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_json"

    .line 4016
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "getNextLockWallpaperUri"

    .line 4017
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/launcher/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p2, "result_json"

    .line 4022
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4025
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getLockWallpaperListFromProvider(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 4033
    new-instance v0, Lcom/miui/home/launcher/Launcher$47;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$47;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 4038
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher$47;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 4040
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

    .line 4042
    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4043
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    .line 4047
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

    .line 5845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5846
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$bUYXRanNFC7EiD33WH7bH1lFb6I;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$bUYXRanNFC7EiD33WH7bH1lFb6I;-><init>(Ljava/util/ArrayList;)V

    .line 5847
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

    .line 6803
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6804
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$Y5Cp5DPZxtuKjw8MxTgVGCmk4KM;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Y5Cp5DPZxtuKjw8MxTgVGCmk4KM;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 2607
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2608
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    return p1

    .line 2610
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    return p1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goOutOldLayer()V
    .locals 6

    .line 5059
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    .line 5060
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 5061
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 5063
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

    .line 5064
    new-array v2, v2, [F

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v5}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5065
    new-instance v2, Lcom/miui/home/launcher/Launcher$54;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/Launcher$54;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5073
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private handleActivityNotFound(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .line 4651
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4654
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "profile"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4655
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v3, "profile"

    .line 4656
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    .line 4657
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4658
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getBackupState(Landroid/content/Context;)I

    move-result p1

    const-string v3, "Launcher"

    .line 4659
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

    const p1, 0x7f10007b

    .line 4661
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const p1, 0x7f10007c

    .line 4663
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return v2

    .line 4668
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 4670
    :try_start_0
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "com.xiaomi.market"

    .line 4672
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4673
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1001da

    .line 4674
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1001d9

    .line 4675
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f1000a6

    const/4 v1, 0x0

    .line 4676
    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f100105

    new-instance v1, Lcom/miui/home/launcher/Launcher$50;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$50;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 4677
    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 4688
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 4689
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return v2

    .line 4694
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 4695
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4696
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4697
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 4698
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_5

    .line 4699
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

    .line 4700
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

    .line 5839
    invoke-static {p2}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5840
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5841
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

    .line 8732
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8733
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

    .line 1946
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.miui.home.launcher.assistant.ui.view.AssistHolderView"

    .line 1947
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1948
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/util/AttributeSet;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1949
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 v3, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1950
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1951
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1952
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    .line 1953
    iput v4, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1954
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    iget v2, v2, Lcom/miui/home/launcher/MinusOneScreenView;->mCurrentScreenIndex:I

    if-nez v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v1, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->sendMinusScreenUpdateBroadcast(Z)V

    const-string v1, "Launcher"

    const-string v2, "loadPaView SUCCESS"

    .line 1955
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Launcher"

    const-string v3, "Exception"

    .line 1958
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1961
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    .line 1962
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    if-le v1, v0, :cond_1

    const-string v0, "Launcher"

    const-string v1, "restart process"

    .line 1965
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void
.end method

.method private initConflictItems()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1108
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1109
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager;->addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    .line 1110
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1111
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    .line 1112
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->getDropTargetBarConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->setPriority(I)V

    return-void
.end method

.method private initLauncher()V
    .locals 1

    .line 1066
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$poUULfMowr17ZYsZireIlC3LhJ0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$poUULfMowr17ZYsZireIlC3LhJ0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLoadingAsyncInflateManager()V
    .locals 1

    .line 5852
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    if-eqz v0, :cond_0

    .line 5853
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->shutDownNow()V

    .line 5855
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    return-void
.end method

.method public static final isClipTransitionDevice()Z
    .locals 1

    .line 1129
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsClipTransitionDevice:Z

    return v0
.end method

.method private isDeepShortcutMatchCurrentMode(Lcom/miui/launcher/common/ShortcutInfoCompat;)Z
    .locals 2

    .line 6106
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "is_elderly_man_shortcut"

    .line 6108
    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 6110
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

    .line 5400
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5401
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5402
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

    .line 1116
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

    .line 5396
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

    .line 4837
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 4838
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

.method public static synthetic lambda$addNewInstallIndicator$26(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 3

    .line 5814
    invoke-static {}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getController()Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->getNewInstalledShortcutInfos(Ljava/util/Collection;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v0

    .line 5813
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic lambda$addNewInstallIndicator$27(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    .line 5825
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->hasAppBeUsed(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/Map;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static synthetic lambda$addNewInstallIndicator$28(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    const-string v0, "Launcher.NewInstallIndicatorController"

    .line 5827
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

    .line 5828
    iput v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 5829
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 5830
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 5831
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5832
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateTitleTip(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic lambda$addNewInstallIndicator$29(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;Ljava/util/Map;)V
    .locals 1

    .line 5824
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMCoc1nXn-4W6oZwPDRHviQFEpE;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMCoc1nXn-4W6oZwPDRHviQFEpE;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/Map;)V

    .line 5825
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$aYlowQDvhXOee6I_jL4tV5ZQ5qM;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$aYlowQDvhXOee6I_jL4tV5ZQ5qM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 5826
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$addShortcut$40(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/view/View;
    .locals 0

    .line 6658
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$addShortcut$41(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZLandroid/view/View;)V
    .locals 11

    .line 6659
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

.method public static synthetic lambda$addToAppsList$48(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7446
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$addToAppsList$49(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Application;)V
    .locals 0

    .line 7449
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->checkCanBeDeleted(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$32(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 6012
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/MarketUtils;->startUserGuide(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$afterShowUserPresentAnimation$33(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 2

    .line 6021
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

    .line 6022
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindAddedShortcuts$38(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 2

    .line 6256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6257
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->tellAllFoldersWhenAppAdded(Ljava/lang/String;)V

    .line 6258
    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->onBindAddedShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindAppsRemoved$51(Ljava/util/ArrayList;)Ljava/util/stream/Stream;
    .locals 0

    .line 7531
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindAppsRemoved$52(Ljava/util/List;)Ljava/util/stream/Stream;
    .locals 0

    .line 7532
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindAppsRemoved$53(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 7536
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

    .line 7537
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

.method public static synthetic lambda$bindAppsRemoved$54(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7539
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getRuntimeStatusFlags()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setRuntimeStatusFlags(I)V

    const-string p1, "Launcher"

    .line 7540
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

    .line 7541
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->needRemoveFromDB(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    .line 7542
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unCheckShortcut(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$bindAppsRemoved$55(Lcom/miui/home/launcher/Launcher;Ljava/util/function/Supplier;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    .line 7534
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ytvqpq90eqbKu-NCu_hCYPOBkaQ;

    invoke-direct {v0, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ytvqpq90eqbKu-NCu_hCYPOBkaQ;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7535
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$o5vf1MRDVN_9b6WnzUEHNmNLqWU;

    invoke-direct {v0, p0, p3, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$o5vf1MRDVN_9b6WnzUEHNmNLqWU;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;Ljava/util/List;)V

    .line 7538
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 7544
    instance-of p1, p3, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-nez p1, :cond_0

    instance-of p1, p3, Lcom/miui/home/launcher/marketautoinstall/MarketAutoInstallShortcutInfo;

    if-nez p1, :cond_0

    .line 7545
    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p3}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->bindAppInfosRemoved(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$bindAppsRemoved$56(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z
    .locals 1

    .line 7553
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7554
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

.method public static synthetic lambda$bindAppsRemoved$57(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 7556
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7557
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7558
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic lambda$bindAppsRemoved$58(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V
    .locals 1

    .line 7551
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$vh7XxtjMVDLnKv4ztCDf91Xlg4A;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$vh7XxtjMVDLnKv4ztCDf91Xlg4A;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    .line 7552
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$Launcher$jYM4MrkjKW2ni9Md-lnKcUKTq54;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$jYM4MrkjKW2ni9Md-lnKcUKTq54;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7555
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$bindShortcutsChangedOnAppUpdate$39(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 7

    .line 6276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6277
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

    .line 6278
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

    .line 6279
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isApplicatoin()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 6280
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 6281
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6282
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getRuntimeStatusFlags()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setRuntimeStatusFlags(I)V

    const/4 v5, 0x0

    .line 6283
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/AppInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 6284
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/ShortcutInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 6285
    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6286
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setThirdApplicationConfig(Ljava/lang/String;)V

    .line 6287
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutInfo;->setSystemStubApplicationConfig(Ljava/lang/String;)V

    .line 6288
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v2, Lcom/miui/home/launcher/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChanged(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 6289
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6290
    iget-wide v4, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6295
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->bindFolderPreviewIconsChanged(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic lambda$checkAllAppsLabel$36(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V
    .locals 0

    .line 6178
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->updateItemUserInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6181
    iget p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez p1, :cond_1

    const/high16 p1, 0xc0000

    .line 6182
    invoke-virtual {p3, p4, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6187
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 6189
    :cond_1
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6192
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6193
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/miui/home/launcher/Launcher$63;

    invoke-direct {p4, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$63;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/CharSequence;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz p5, :cond_3

    const-string p1, "Launcher"

    .line 6204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "check lable is last "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "pref_key_last_label_locale"

    .line 6207
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 6205
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$checkAllAppsLabel$37(Lcom/miui/home/launcher/Launcher;)V
    .locals 10

    .line 6168
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 6169
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 6170
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6171
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6172
    iget-object v0, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 6173
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 6174
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6176
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 6177
    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v3

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/-$$Lambda$Launcher$u1AJigLJ8ScEbSKTAp9gbVLzlQ0;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)V

    .line 6210
    invoke-static {v9}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$checkAllUserDeepShortcuts$34(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V
    .locals 0

    .line 6098
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDeepShortcuts(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic lambda$checkAllUserDeepShortcuts$35(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "checkAllDeepShortcuts"

    .line 6099
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$closeAllOverLauncherWindow$16(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 2324
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2325
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    return-void
.end method

.method static synthetic lambda$doAllEventBusHandlers$60(Ljava/util/function/Consumer;Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8362
    invoke-interface {p1}, Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;->getEventBusHandlers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 8363
    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getLoadedDeepShortcutList$44(Lcom/miui/home/launcher/Launcher;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6856
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

    .line 6857
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isDeepShortcut()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 6858
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6859
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz p3, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6860
    invoke-virtual {v2}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6861
    :cond_3
    check-cast v1, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic lambda$getPackageNames$30(Ljava/util/ArrayList;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 5847
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithIntent$43(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6823
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

    .line 6824
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

    .line 6825
    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6826
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShortcutInfoWithName$42(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .line 6805
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->loadTitle(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6806
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

    .line 6807
    iget v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6808
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6809
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6810
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getShowingItem$47(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 7280
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v1

    .line 7281
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/IBackAnimView;->getLocationOnScreen([I)V

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 7283
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 7284
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    .line 7286
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/IBackAnimView;->getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7288
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 7289
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez p2, :cond_4

    if-lez v1, :cond_4

    .line 7291
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 7292
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 7293
    :cond_1
    instance-of v2, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v2, :cond_2

    .line 7294
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;->prepareBackAnim(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;)V

    goto :goto_0

    .line 7295
    :cond_2
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->isMamlDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->is720Mode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7296
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7298
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 7302
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7303
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7304
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$initLauncher$9(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUseDualClock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1068
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerContentObservers()V

    .line 1069
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAssistantOpen()V

    .line 1071
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->applyingDefaultTheme()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sIsDefaultThemeApplied:Z

    .line 1073
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsInSnapShotMode()V

    .line 1074
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->requestIsAppStoreEnabled()V

    .line 1075
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkForLocaleChange()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/FileAccessable$Factory;->clearCache()V

    .line 1078
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->resetLockWallpaperProviderIfNeeded(Landroid/content/Context;)V

    .line 1079
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
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

    .line 1079
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1081
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setCompatibilityVersionIfNeed()V

    .line 1083
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    return-void
.end method

.method static synthetic lambda$loadPaView$13(Lcom/miui/home/launcher/module/ModuleManagerCompat;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const-string p1, "com.miui.personalassistant"

    .line 1930
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$new$25(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)I
    .locals 4

    .line 5791
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5792
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 5793
    :cond_0
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 5794
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p1

    .line 5795
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p2

    sub-int/2addr p2, p1

    return p2

    .line 5797
    :cond_1
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_2

    .line 5798
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sub-int/2addr p2, p1

    return p2

    .line 5800
    :cond_2
    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public static synthetic lambda$notifyPowerKeeperGesture$1(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 5

    .line 688
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPowerKeeperPermissionGranted:Z

    if-eqz v0, :cond_0

    .line 690
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    .line 691
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 692
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mCallingPowerKeeper:Z

    .line 693
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.powerkeeper.configure"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "notifyPowerKeeperGesture"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCallingPowerKeeper:Z

    const-string v0, "Launcher"

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPowerKeeperGesture status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher"

    const-string v1, "notifyPowerKeeperGesture: "

    .line 697
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p1, "Launcher"

    const-string v0, "notifyPowerKeeperGesture, hasn\'t permissino:miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 700
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$oQp6NMjnyK_DA-uy4MAy0awe8CM(Lcom/miui/home/launcher/Launcher;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->changeScreenContentOnOpen(F)V

    return-void
.end method

.method public static synthetic lambda$onClick$19(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 4425
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->checkForGameFolder(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$onCreate$2()V
    .locals 1

    .line 892
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->migrateData()V

    .line 894
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$3(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "migrateData"

    .line 896
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 940
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->tryToRegisterWidgetListener()V

    return-void
.end method

.method static synthetic lambda$onCreate$5(Ljava/lang/InterruptedException;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "tryToRegisterWidgetListener"

    .line 941
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$onCreate$6(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 947
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method static synthetic lambda$onCreate$7(Ljava/lang/Object;)V
    .locals 1

    .line 999
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCreate$8(Ljava/lang/Object;)V
    .locals 1

    .line 1003
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onDestroy$17(Ljava/lang/Object;)V
    .locals 1

    .line 2786
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2787
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onResume$10(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->startFallbackHomeInIdleHander(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onResume$11(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 1434
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    return-void
.end method

.method public static synthetic lambda$onResume$12(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->hookViewRootImpl(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic lambda$onWindowFocusChanged$59(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7724
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method

.method public static synthetic lambda$refreshProgressIcons$31(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 5962
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

    .line 5963
    instance-of v2, v1, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v2, :cond_0

    .line 5964
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onIconChanged(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$reloadSearchBarIfNeed$18()V
    .locals 2

    .line 3679
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarStyleData;->initData(Z)V

    return-void
.end method

.method public static synthetic lambda$removeDeepShortcut$45(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 6884
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p1

    .line 6883
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->unpinShortcutIfExist(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$removeFromAppsList$50(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7458
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$requestPowerKeeperPermissionIfNeed$0(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    const-string v0, "miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 673
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "request miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 675
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 676
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 680
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPowerKeeperPermissionGranted:Z

    :goto_0
    return-void
.end method

.method static synthetic lambda$resetScreenContent$15(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 2096
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setupAnimations$14(Lcom/miui/home/launcher/Launcher;F)V
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getUpdateListener()Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;->onAnimationUpdate(F)V

    return-void
.end method

.method public static synthetic lambda$showStatusBar$22(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    .line 5382
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->isStatusBarShow()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 5386
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5387
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 5389
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    goto :goto_0

    .line 5390
    :cond_1
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    :goto_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5391
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$startActivity$20(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .locals 1

    .line 4582
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4583
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 4582
    invoke-static {p0, v0, p2, p1, p3}, Lcom/miui/launcher/utils/PortableUtils;->startMainActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$startActivityForResult$21(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 4633
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    :cond_0
    if-lt p1, v1, :cond_1

    .line 4636
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    .line 4638
    :cond_1
    invoke-static {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->access$11301(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$updateShortcut$46(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/Intent;)V
    .locals 1

    .line 6982
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6983
    invoke-virtual {v0, p0, p2}, Lcom/miui/home/launcher/ShortcutInfo;->updateNormalShortcut(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateStatusBarClock$23(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5428
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->changeStatusBarMode()V

    return-void
.end method

.method public static synthetic lambda$updateStatusBarClock$24(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 5428
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$AJahTtEoklF06v3ojt-X0etTAFI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$AJahTtEoklF06v3ojt-X0etTAFI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadPaView()V
    .locals 3

    .line 1920
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    .line 1921
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    if-eqz v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "loadPaView module is loading"

    .line 1922
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1925
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/Launcher;->mLoadMinusOneRetryCount:I

    .line 1926
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mMinusoneLoading:Z

    const-string v1, "Launcher"

    const-string v2, "loadPaView start"

    .line 1928
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$E48EVyVX_A46eQPgJgZMrRVituw;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$E48EVyVX_A46eQPgJgZMrRVituw;-><init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V

    new-instance v0, Lcom/miui/home/launcher/Launcher$9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$9;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private locateApp(Ljava/lang/String;)Z
    .locals 6

    .line 2541
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2544
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2545
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2546
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_0

    .line 2549
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2550
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2553
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2554
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 2556
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2557
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    .line 2559
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    .line 2560
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2563
    :cond_5
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 2564
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 2565
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2566
    new-instance v3, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserForUserId(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 2567
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2569
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2570
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v4, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 2572
    :cond_6
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2573
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v4, v5, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2575
    :cond_7
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2576
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onStartHighlightLocatedApp()V

    return v2

    :cond_8
    const/4 v3, 0x2

    .line 2581
    new-array v3, v3, [Ljava/lang/Integer;

    .line 2582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2581
    invoke-virtual {p0, p1, v0, v3}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 2584
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2585
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    :cond_9
    if-eqz v0, :cond_a

    .line 2587
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2588
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

    .line 2615
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2616
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 2617
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getSnapToScreenIndexForLocate(Lcom/miui/home/launcher/ItemInfo;)I

    move-result v2

    .line 2618
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2619
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/lit16 v6, v5, 0x12c

    if-eqz v3, :cond_3

    .line 2620
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v7}, Lcom/miui/home/launcher/Workspace;->getScreenSnapMaxDuration()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    add-int/2addr v6, v7

    .line 2622
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2623
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v7, v4}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2626
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

    .line 2634
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/home/launcher/Launcher$17;

    invoke-direct {v7, p0, v1, p1, v5}, Lcom/miui/home/launcher/Launcher$17;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;I)V

    int-to-long v5, v6

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_6
    return v0

    .line 2628
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$16;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$16;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    int-to-long v5, v6

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    if-eqz v3, :cond_8

    .line 2684
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$18;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/Launcher$18;-><init>(Lcom/miui/home/launcher/Launcher;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return v4
.end method

.method private makeUnableToStartActivityToast()V
    .locals 2

    .line 4610
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f10002f

    .line 4611
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f10002e

    .line 4613
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private needCancelBackAnimationWhenWorkspaceScroll()Z
    .locals 3

    .line 7127
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 7128
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 7129
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

    .line 7519
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7520
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherSettings;->isRetainedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7521
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

    .line 6502
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 6503
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    .line 6504
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendPresentCommand(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private notifyFsGestureHomeStatus(Z)V
    .locals 1

    const-string v0, "typefrom_home"

    .line 8305
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->notifyFsGestureHomeStatus(ZLjava/lang/String;)V

    return-void
.end method

.method private notifyFsGestureHomeStatus(ZLjava/lang/String;)V
    .locals 2

    .line 8309
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8310
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$85;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$85;-><init>(Lcom/miui/home/launcher/Launcher;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 8318
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    invoke-interface {p2, p1}, Lcom/android/systemui/fsgesture/IFsGestureService;->notifyHomeStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher"

    const-string v0, "notify home status"

    .line 8320
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 1

    .line 1504
    new-instance v0, Lcom/miui/home/launcher/Launcher$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$4;-><init>(Lcom/miui/home/launcher/Launcher;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onAppWidgetReset()V
    .locals 1

    .line 4383
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    return-void
.end method

.method private onDarkModeChanged()V
    .locals 6

    .line 8552
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8553
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->onDarkModeChanged()V

    .line 8554
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 8556
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_1

    .line 8557
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->onDarkModeChanged()V

    .line 8558
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 8560
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 8561
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v2, "color_mode"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8562
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8563
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

    .line 8564
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    .line 8565
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v1, v4, v5}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    if-eqz v0, :cond_3

    .line 8567
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->autoShowHideFeed(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 8570
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8572
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onDarkModeChange()V

    .line 8574
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaperAsync()V

    .line 8575
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->updateAllAppWidgetOptions()V

    .line 8576
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_5

    .line 8577
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDarkModeChanged()V

    :cond_5
    return-void
.end method

.method private onIdpChanged()V
    .locals 3

    .line 8535
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8536
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 8537
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenOrientationChanged()V

    .line 8538
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->dispatchDeviceProfileChanged()V

    .line 8540
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8541
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->requestApplyInsetsOfNavStubView()V

    :cond_1
    return-void
.end method

.method private onLauncherComeBackFromOtherApp(Ljava/lang/String;)V
    .locals 1

    .line 7245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7246
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

    .line 6893
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6894
    instance-of v0, v0, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v0, :cond_0

    .line 6895
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    return-void

    :cond_1
    return-void
.end method

.method public static performLayoutNow(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 7648
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7649
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7648
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 7650
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

    .line 6083
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

    .line 6085
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/home/launcher/Launcher$61;

    invoke-direct {v3, p0, v1}, Lcom/miui/home/launcher/Launcher$61;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepairUserPersentAnimation()Z
    .locals 1

    .line 6528
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6529
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    .line 6530
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->prepareUserPresentAnimation()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;
    .locals 9

    .line 7827
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->checkDuplicateIconWhenRecommendAdded(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7830
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7831
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLocalIconUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getMarketPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->container:J

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V

    const/4 v2, 0x0

    .line 7833
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setStarted(Z)V

    .line 7834
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 7835
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7836
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7837
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/progress/ProgressManager;->bindAppProgressItem(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Z)Z

    return-object v0
.end method

.method private prepareSceneMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 2859
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2860
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f100217

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x42

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 2862
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f10021b

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x45

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :goto_0
    const/4 v0, 0x1

    .line 2864
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2865
    invoke-interface {p1, v0, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return v0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 3

    const/4 v0, 0x0

    .line 1192
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

    .line 1193
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1194
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 1195
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
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

    .line 1208
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

    .line 5971
    invoke-static {}, Lcom/miui/launcher/utils/MamlUtils;->clearMamlCache()V

    .line 5972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5973
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    .line 5974
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

    .line 5975
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_0

    .line 5977
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5978
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5980
    :cond_0
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5982
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

    .line 5983
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

    .line 6071
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

    .line 6073
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/home/launcher/Launcher$60;

    invoke-direct {v3, p0, v1}, Lcom/miui/home/launcher/Launcher$60;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshProgressIcons()V
    .locals 2

    .line 5961
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$2TX9aGcesJ9KPXT6fJn33HWfuBA;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$2TX9aGcesJ9KPXT6fJn33HWfuBA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 4

    .line 3712
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 3713
    new-instance v0, Lcom/miui/home/launcher/Launcher$43;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$43;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3830
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PRIVACY_MODE_CHANGED"

    .line 3831
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3832
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3833
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android_secret_code"

    .line 3834
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3835
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3836
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3837
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3838
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3839
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3840
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SYSTEM_UI_VISIBILITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3841
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3842
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.miui.REQUEST_LOCKSCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3843
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3844
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3845
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3846
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.mihomemanager.clearMiuiHome"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3847
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3848
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3849
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3850
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.action.appcompatibility.update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3851
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3852
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3853
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3854
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3855
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3856
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3857
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3858
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3860
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 3861
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.ad.PREINSTALL_AD_UPDATING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3862
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/miui/home/launcher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerContentObservers()V
    .locals 6

    .line 3247
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3248
    sget-object v1, Lcom/miui/home/launcher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_screen_cells_size"

    .line 3251
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 3250
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "key_miui_mod_icon_enable"

    .line 3254
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    .line 3253
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "light_speed_app"

    .line 3256
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_wallpaper_provider_authority"

    .line 3258
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    .line 3257
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_lock_screen_cells"

    .line 3261
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    .line 3260
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "force_fsg_nav_bar"

    .line 3264
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    .line 3263
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "button_voice_service"

    .line 3267
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    .line 3266
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_OPTION_STATUS"

    .line 3268
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "QSB_SCROLL_ENTRANCE_STATUS"

    .line 3270
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launchMiBrowserWhileSwipe"

    .line 3272
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_pulldown_gesture"

    .line 3274
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_slideup_gesture"

    .line 3276
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "com.miui.newhome.preferences.key_can_use_new_home"

    .line 3278
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "launcher_app_delete_sound_effect"

    .line 3280
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "open_personal_assistant"

    .line 3282
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "elderly_mode"

    .line 3284
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_0
    const-string v1, "content://com.miui.securitycenter.provider/update_privacyapps_icon"

    .line 3288
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    .line 3287
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3291
    :catch_0
    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->isSupportDualClock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 3292
    new-instance v1, Lcom/miui/home/launcher/Launcher$DualClockObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Launcher$DualClockObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    const-string v1, "auto_dual_clock"

    .line 3293
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_id"

    .line 3295
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "resident_timezone"

    .line 3297
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3300
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3301
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    .line 3303
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "darken_wallpaper_under_dark_mode"

    .line 3304
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3307
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "is_default_icon"

    .line 3308
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3310
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3311
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->registerAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3313
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "freeform_window_state"

    .line 3314
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3316
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v1, "freeform_package_name"

    .line 3317
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3319
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3321
    :cond_4
    invoke-static {}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getSystemAnimationObserverUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_lock_screen_cells"

    .line 3324
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsLockedObserver:Landroid/database/ContentObserver;

    .line 3323
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "miui_home_enable_auto_fill_empty_cells"

    .line 3327
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAutoFillEmptyObserver:Landroid/database/ContentObserver;

    .line 3326
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3329
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsLockedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3330
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAutoFillEmptyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3331
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerSearchBarObserver()V
    .locals 4

    .line 3409
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 3410
    new-instance v0, Lcom/miui/home/launcher/Launcher$SearchBarObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/Launcher$SearchBarObserver;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    .line 3411
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

    .line 5165
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

    .line 5168
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

    .line 3878
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    new-instance v0, Lcom/miui/home/launcher/Launcher$44;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$44;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    new-instance p1, Lcom/miui/home/launcher/Launcher$45;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Launcher$45;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private removeEmptyFolders()V
    .locals 4

    .line 7998
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8000
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8001
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8002
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    .line 8003
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v3

    if-nez v3, :cond_0

    .line 8004
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8007
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

    .line 8008
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8009
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_1

    .line 8011
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 8012
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 4

    .line 2289
    iget v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    const/4 v0, 0x0

    .line 2292
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

    .line 2293
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 2299
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2300
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 2301
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 2302
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2304
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2307
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 2308
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_3
    return-void
.end method

.method private removeItemsFromSourceWhenMultiDrag([Lcom/miui/home/launcher/ShortcutInfo;[Lcom/miui/home/launcher/DragSource;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4954
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4955
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Workspace;

    if-eqz v2, :cond_0

    .line 4956
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Workspace;->onDragStarted(Landroid/view/View;)V

    .line 4958
    :cond_0
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/miui/home/launcher/Folder;

    if-eqz v2, :cond_1

    .line 4959
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    .line 4960
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4961
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 4962
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4963
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    .line 4966
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

    .line 5108
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->cleanUp()V

    .line 5109
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x4

    .line 5110
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5111
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    return-void
.end method

.method private reportLockWallpaperFail()V
    .locals 3

    .line 4008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "set_lock_wallpaper_result"

    const/4 v2, 0x0

    .line 4009
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4010
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private requestGlobalFoldersPreinstallAd()V
    .locals 3

    .line 3869
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

    .line 3870
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    .line 3871
    instance-of v2, v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    if-eqz v2, :cond_0

    .line 3872
    check-cast v1, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;

    const-string v2, "receive broadcast"

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalFolderPreinstallManager;->requestMorePreinstallAds(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestPowerKeeperPermissionIfNeed()V
    .locals 2

    .line 672
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$TKVHW6d4MgHXydHiEP_rtmlPuzU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$TKVHW6d4MgHXydHiEP_rtmlPuzU;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    .line 7587
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7590
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7591
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 7594
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7595
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 7596
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p2}, Lcom/miui/home/launcher/DragController;->isAppDragging(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7597
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    return-void

    :cond_3
    return-void
.end method

.method private resetScreenContent()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2092
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->setScreenContentAlpha(F)V

    .line 2093
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 2094
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    const/4 v0, 0x3

    .line 2095
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

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$SxOax-FVBObHA8sv56yDPUEVs9Y;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$SxOax-FVBObHA8sv56yDPUEVs9Y;

    .line 2096
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

    .line 6378
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6381
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 6382
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

    .line 6383
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 6384
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6385
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    const/4 v2, 0x0

    .line 6387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 6388
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v4

    :cond_3
    if-eqz v2, :cond_1

    .line 6394
    invoke-static {v1}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object v3

    .line 6395
    invoke-static {p0, v3}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 6397
    iget v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 6398
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 6397
    invoke-static {p0, v4, v5, v2, v3}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6399
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->clearRestore()V

    .line 6400
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 6401
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    if-eqz v2, :cond_1

    .line 6402
    invoke-virtual {v2, p0, v1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private saveMotionEventLog(Landroid/view/MotionEvent;)V
    .locals 6

    const-string v0, "Launcher_dispatchTouchEvent"

    const-string v1, "[motionEvent action:(rawX,rawY)]  "

    .line 4288
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(%.1f,%.1f)"

    const/4 v1, 0x2

    .line 4289
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

    .line 4290
    new-array v1, v1, [Ljava/lang/Object;

    .line 4291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    aput-object v3, v1, v5

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4290
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 4292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 4293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const-string p1, "Launcher_dispatchTouchEvent"

    .line 4294
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, "Launcher_Scrollto"

    .line 4295
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    const-string p1, ""

    .line 4296
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 4707
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sceneOptionItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2883
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    .line 2884
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 2896
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V

    return v1

    .line 2893
    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reset()V

    return v1

    .line 2886
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2887
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditMode()V

    goto :goto_0

    .line 2889
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

    .line 6510
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6511
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6512
    instance-of v2, v1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v2, :cond_1

    .line 6513
    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 6514
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

    .line 1090
    :try_start_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1092
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

    .line 1095
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1096
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v1, v2, :cond_1

    .line 1097
    const-class v1, Landroid/graphics/Canvas;

    const-string v2, "setCompatibilityVersion"

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1098
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1097
    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/library/utils/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/home/library/utils/ReflectionUtils$ObjectReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "setCompatibilityVersionIfNeed"

    .line 1102
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setErrorBarBackground()V
    .locals 2

    .line 1137
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800f1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->loadThemeCompatibleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
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

    .line 4106
    invoke-static {p0, v1}, Lcom/miui/launcher/utils/PortableUtils;->getCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4107
    new-instance v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;-><init>()V

    const/4 v4, 0x1

    .line 4108
    iput v4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->mode:I

    .line 4109
    invoke-static {v2}, Lcom/miui/home/launcher/common/JsonUtils;->getWallpaperInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    move-result-object v2

    iput-object v2, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->currentWallpaperInfo:Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 4110
    iput-boolean p4, v3, Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;->needLast:Z

    .line 4111
    invoke-static {v3}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonStringFromRequestInfo(Lcom/miui/home/launcher/lockwallpaper/mode/RequestInfo;)Ljava/lang/String;

    move-result-object p4

    .line 4112
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "force_refresh"

    .line 4113
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "extra_current_provider"

    .line 4114
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "request_json"

    .line 4115
    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
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

    .line 4120
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

    .line 4123
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 4127
    invoke-static {p2}, Lcom/miui/home/launcher/common/JsonUtils;->getResultInfoFromJson(Ljava/lang/String;)Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 4131
    :cond_2
    iget-object p1, p1, Lcom/miui/home/launcher/lockwallpaper/mode/ResultInfo;->wallpaperInfos:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 4132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_3

    goto :goto_1

    .line 4135
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;

    .line 4136
    iget-object p2, p1, Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;->wallpaperUri:Ljava/lang/String;

    .line 4137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    .line 4140
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4141
    invoke-static {p1}, Lcom/miui/home/launcher/common/JsonUtils;->getJsonObjectFromWallpaperInfo(Lcom/miui/home/launcher/lockwallpaper/mode/WallpaperInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4142
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

    .line 4144
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v0

    .line 4148
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p1, ""

    .line 4149
    invoke-static {p0, p1, v1}, Lcom/miui/launcher/utils/PortableUtils;->updateCurrentWallpaperInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    :goto_2
    invoke-static {p2, v4}, Lcom/miui/home/launcher/WallpaperUtils;->setLockWallpaper(Landroid/net/Uri;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private setScreenContentAlpha(F)V
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->setAlpha(F)V

    .line 2079
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBar;->setAlpha(F)V

    .line 2080
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setAlpha(F)V

    return-void
.end method

.method private setupAnimations()V
    .locals 3

    const v0, 0x7f010034

    .line 1972
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 1973
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/CubicEaseInOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const v0, 0x7f010035

    .line 1974
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    const v0, 0x7f01002c

    .line 1975
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    .line 1976
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1977
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    const v0, 0x7f01002d

    .line 1978
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    .line 1979
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/Launcher$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$10;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1995
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$11;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setAnimatorListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 2012
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$fw2fVw2E38B7x3tpr4iHITu6qDc;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$fw2fVw2E38B7x3tpr4iHITu6qDc;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 2015
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    .line 2016
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2017
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2018
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2019
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$12;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$12;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2030
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$13;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$13;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2040
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$oQp6NMjnyK_DA-uy4MAy0awe8CM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 2041
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$8fxjfdpJa1wlHPvgpSbLjGDnOe0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->setUpdateListener(Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;)V

    .line 2042
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    new-instance v1, Lcom/miui/home/launcher/Launcher$14;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$14;-><init>(Lcom/miui/home/launcher/Launcher;)V

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

    .line 1880
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    const v1, 0x7f0a0187

    if-eqz v0, :cond_0

    .line 1881
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    .line 1882
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1883
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    goto :goto_0

    .line 1884
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1886
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

    .line 1888
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setupViews()V
    .locals 3

    .line 1747
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a00bf

    .line 1749
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v0, 0x7f0a00c0

    .line 1750
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Background;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    .line 1751
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1752
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1753
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    const v0, 0x7f0a01a0

    .line 1755
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/search/SearchEdgeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    const v0, 0x7f0a01a1

    .line 1756
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FitSystemWindowView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const v0, 0x7f0a0257

    .line 1757
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 1758
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setDragController(Lcom/miui/home/launcher/DragController;)V

    const v0, 0x7f0a00d9

    .line 1760
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/EditingEntryThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    .line 1761
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1762
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a00de

    .line 1764
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ErrorBar;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    .line 1765
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ErrorBar;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1766
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setErrorBarBackground()V

    .line 1767
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1769
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a025f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Workspace;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1770
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1771
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 1773
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a0260

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    .line 1774
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1775
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1776
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    .line 1777
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1779
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1780
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1781
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1782
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setThumbnailView(Lcom/miui/home/launcher/WorkspaceThumbnailView;)V

    .line 1783
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1784
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setResource(Lcom/miui/home/launcher/Workspace;)V

    .line 1786
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a00c4

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DropTargetBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 1787
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v1, 0x7f0a00ef

    .line 1789
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderCling;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 1790
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/FolderCling;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 1791
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderCling;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1792
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1794
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a01aa

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/SearchBar;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    .line 1795
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v2, 0x7f0a010c

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/HotSeats;

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 1796
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/HotSeats;->setLaucher(Lcom/miui/home/launcher/Launcher;)V

    .line 1797
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/HotSeats;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 1798
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    .line 1800
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1801
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->setScrollView(Landroid/view/View;)V

    .line 1802
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 1803
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1804
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 1805
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1806
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addShortcutMenuDragListener(Lcom/miui/home/launcher/shortcuts/ShortcutMenuDragListener;)V

    .line 1807
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    .line 1809
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1810
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1811
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 1812
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DropTargetBar;->setup(Lcom/miui/home/launcher/DragController;)V

    .line 1814
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupAnimations()V

    .line 1815
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a00aa

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const v0, 0x7f0a01d7

    .line 1816
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    .line 1817
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 1818
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    const v0, 0x7f0a015d

    .line 1819
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/MinusOneScreenView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const v0, 0x7f0a00d6

    .line 1821
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    .line 1822
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->setTopMenu(Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;)V

    .line 1823
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->addOnWallpaperColorChangedListener(Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;)V

    const v0, 0x7f0a015c

    .line 1824
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    .line 1825
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusViewGroup:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1829
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentOrientation:I

    .line 1830
    new-instance v0, Lcom/miui/home/launcher/Launcher$7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$7;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    const v0, 0x7f0a01a2

    .line 1837
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/ScrimView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    const v0, 0x7f0a0062

    .line 1838
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 1839
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const v2, 0x7f0a01b1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->initialize(Lcom/miui/home/launcher/ExtendedEditText;)V

    .line 1840
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 1841
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    .line 1842
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->setupViews(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

    .line 1843
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a01ab

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    .line 1844
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->setupViews()V

    .line 1845
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    const v1, 0x7f0a0143

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    .line 1846
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragViewContainer:Landroid/widget/FrameLayout;

    .line 1848
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupRecentsViews()V

    .line 1850
    invoke-static {}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1851
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    .line 1852
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    .line 1855
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupWallpaperZoomManager()V

    return-void
.end method

.method private setupWallpaperZoomManager()V
    .locals 3

    .line 1859
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
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

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    new-instance v1, Lcom/miui/home/launcher/Launcher$8;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private shouldShowUserPresentAnimation()Z
    .locals 1

    .line 6520
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowUserPresentAnimation:Z

    if-eqz v0, :cond_0

    .line 6521
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 6522
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6523
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6524
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

    .line 5489
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

    .line 5490
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    .line 5491
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5493
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private showEditPanel(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5478
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setEnterEditingMode()V

    goto :goto_0

    .line 5480
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Background;->setExitEditingMode()V

    .line 5482
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5483
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    .line 5484
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->showBottomAreaEditPanelIfNeed(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 3

    const/4 v0, 0x1

    .line 5013
    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    .line 5014
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5016
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/DragController;->addDropTarget(ILcom/miui/home/launcher/DropTarget;)V

    .line 5017
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationStart()V

    .line 5018
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setTranslationY(F)V

    .line 5019
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$52;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$52;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showUpsideEnterOrExitTipIfNeed(Z)Z
    .locals 7

    .line 6439
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6440
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6444
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-string v3, "pref_freestyle_last_modified_time"

    const-wide/16 v4, 0x0

    .line 6445
    invoke-static {p0, v3, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const-string v3, "pref_is_shown_upside_enter_tip"

    .line 6447
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_is_shown_upside_exit_tip"

    .line 6448
    invoke-static {p0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "pref_freestyle_last_modified_time"

    .line 6449
    invoke-static {p0, v3, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "pref_is_shown_upside_enter_tip"

    goto :goto_0

    :cond_2
    const-string v0, "pref_is_shown_upside_exit_tip"

    .line 6454
    :goto_0
    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6455
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInSnapshotMode()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    const v1, 0x7f080116

    goto :goto_1

    :cond_4
    const v1, 0x7f080117

    :goto_1
    if-eqz p1, :cond_5

    const p1, 0x7f1001ac

    goto :goto_2

    :cond_5
    const p1, 0x7f1001ad

    .line 6461
    :goto_2
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x56000000

    .line 6462
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6464
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6465
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6467
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5, v5}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;II)V

    .line 6468
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x31

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 6470
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6471
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v1, v5

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6472
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    .line 6474
    invoke-direct {p0, v1, p1, v3}, Lcom/miui/home/launcher/Launcher;->showUserGuideInner(IILandroid/view/View;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    move-result-object p1

    .line 6476
    new-instance v1, Lcom/miui/home/launcher/Launcher$64;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/Launcher$64;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x1

    .line 6483
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return p1

    :cond_6
    :goto_3
    return v2
.end method

.method private showUserGuideInner(IILandroid/view/View;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .locals 3

    .line 6488
    new-instance v0, Lmiuix/popupwidget/widget/ArrowPopupWindow;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;)V

    .line 6489
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setArrowMode(I)V

    .line 6490
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6491
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

    .line 6492
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 6493
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6494
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 6495
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 6496
    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    const/4 p1, 0x0

    .line 6497
    invoke-virtual {v0, p3, p1, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-object v0
.end method

.method private startAndBindServiceIfNeed()V
    .locals 1

    .line 8325
    sget-boolean v0, Lcom/miui/home/library/utils/SdkVersion;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    return-void

    .line 8328
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$86;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$86;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startLockWallpaperPreviewActivity(J)V
    .locals 3

    .line 3921
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsStartingLockWallpaperPreviewActivity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3924
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$46;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$46;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 4004
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher$46;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private startMiPay()V
    .locals 6

    .line 2515
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    goto :goto_0

    .line 2519
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    sub-long/2addr v0, v4

    .line 2520
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 2522
    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastHomeClickedTime:J

    .line 2524
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_double_home_availability"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.tsmclient"

    .line 2526
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event_source"

    const-string v2, "com_miui_home"

    .line 2527
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2528
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startMiPay"

    .line 2531
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2535
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

    .line 792
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 793
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

    .line 5326
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 5329
    invoke-virtual {v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hide()V

    :cond_1
    if-eqz p1, :cond_2

    .line 5333
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->prepareToShow()V

    .line 5334
    invoke-virtual {p1}, Lcom/miui/home/launcher/EditModeThumbnailView;->show()V

    .line 5337
    :cond_2
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentThumbnailView:Lcom/miui/home/launcher/EditModeThumbnailView;

    return-void
.end method

.method private tellAllFoldersWhenAppAdded(Ljava/lang/String;)V
    .locals 3

    .line 7754
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

    .line 7755
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onAppAdded(Ljava/lang/String;)V

    .line 7756
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onAppAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transIcon(FIIZ)V
    .locals 4

    .line 8139
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    if-eqz v0, :cond_0

    .line 8140
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mIconLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mIconImageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 8141
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

    .line 8142
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

    .line 8144
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

    .line 8145
    invoke-interface {v0}, Lcom/miui/home/launcher/IBackAnimView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 8146
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p2, p1

    invoke-interface {v0, p2}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationX(F)V

    .line 8147
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    div-float/2addr p3, p1

    invoke-interface {p2, p3}, Lcom/miui/home/launcher/IBackAnimView;->setTranslationY(F)V

    if-eqz p4, :cond_0

    .line 8148
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    if-nez p1, :cond_0

    .line 8149
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurSelectedIcon:Lcom/miui/home/launcher/IBackAnimView;

    const-string p2, "back_home_finish"

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/IBackAnimView;->updateBackAnim(Ljava/lang/String;)V

    .line 8150
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    :cond_0
    return-void
.end method

.method private tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V
    .locals 6

    if-eqz p2, :cond_1

    .line 4619
    instance-of v0, p2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 4620
    check-cast p2, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p2

    .line 4622
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4623
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    .line 4624
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mTmpPos:[I

    aget v2, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4623
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 2

    .line 4391
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

    .line 4392
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->unbind()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private uninstallCleanButton()V
    .locals 2

    .line 6990
    new-instance v0, Lcom/miui/home/launcher/Launcher$67;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$67;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 6997
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private uninstallPowerCleanButton()V
    .locals 2

    .line 7001
    new-instance v0, Lcom/miui/home/launcher/Launcher$68;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$68;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7008
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 3335
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3336
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3337
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3338
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPerfectIconsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3339
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSpeedOfLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3340
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3341
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLockScreenCellObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3342
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mImmersiveNavigationBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3343
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mVoiceServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3344
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGlobalEdgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3345
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSoundEffectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3346
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3347
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mPullDownSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3348
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSlideUpSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3349
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3350
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mElderlyManObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3352
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3355
    :catch_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 3356
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 3357
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDualClockObserver:Landroid/database/ContentObserver;

    .line 3359
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 3360
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3361
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDarkenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3363
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3364
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsDefaultIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3365
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->unregisterAnimDurationRatioObserver(Landroid/content/ContentResolver;)V

    .line 3367
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSmallWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3368
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3369
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSmallWindowPackageNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3371
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSystemAnimationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3372
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenCellsLockedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3373
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAutoFillEmptyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterSearchBarObserver()V
    .locals 2

    .line 3417
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 3418
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3419
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateAllAppWidgetOptions()V
    .locals 4

    .line 8471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8472
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

    .line 8473
    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_0

    .line 8474
    iget-object v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAppsView()V
    .locals 3

    .line 6057
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

    .line 6058
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

    .line 3617
    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->getBooleanValueFromMiuiSettings(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return-void
.end method

.method private updateScreenAlphaAndScale(FF)V
    .locals 1

    .line 8102
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/Launcher;->changeViewByFsGestureState(Landroid/view/View;FF)V

    .line 8103
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8104
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setAlphaAndScale(FF)V

    .line 8106
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8107
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

    .line 6968
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 6971
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    const-string p1, "Launcher"

    const-string v0, "The extra shortcut intent is null. Failed to update shortcut."

    .line 6973
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6976
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x0

    .line 6977
    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6978
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6981
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$jFu4YRi3JD5w6c012KOtogyUcfA;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$jFu4YRi3JD5w6c012KOtogyUcfA;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "Launcher"

    const-string v0, "Can\'t find shortcutInfo. Failed to update shortcut."

    .line 6979
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

    .line 3531
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3532
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

    .line 3533
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3534
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3535
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private waitForAllIconsFinishLoading()V
    .locals 4

    .line 5863
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$59;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$59;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    .line 5876
    invoke-virtual {v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->getWaitTime()J

    move-result-wide v2

    .line 5863
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/miui/home/launcher/Launcher$LocaleConfiguration;)V
    .locals 4

    const/4 v0, 0x0

    .line 1214
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

    .line 1215
    :try_start_1
    iget-object v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1216
    iget v0, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1217
    iget p1, p1, Lcom/miui/home/launcher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1218
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
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

    .line 1223
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1234
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

    .line 1239
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

    .line 2994
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2997
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

    .line 3001
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellX:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellX:I

    .line 3002
    iget v1, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->cellY:I

    iput v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->cellY:I

    .line 3003
    iget-wide v0, v0, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    iput-wide v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->screenId:J

    .line 3005
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addAppWidgetWithoutFindPlaceAgain(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)I

    move-result p1

    return p1
.end method

.method public addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 13

    .line 5689
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5690
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->addRestoreAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void

    .line 5693
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "Launcher"

    .line 5695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAppWidget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5699
    iget v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 5700
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, "Launcher"

    .line 5703
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

    .line 5708
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

    .line 5712
    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v5, p0, v3, v4}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "com.miui.notes"

    .line 5726
    iget-object v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5727
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.miui.notes"

    .line 5728
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5729
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5732
    :cond_2
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, p0, v4, v5}, Lcom/miui/home/launcher/Launcher;->updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V

    .line 5733
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5734
    iget-object v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5736
    iget-object v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v9, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v10, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v11, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v12, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5739
    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5741
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    const-string v2, "Launcher"

    .line 5744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound widget id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5744
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p1, "Launcher"

    .line 5720
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

    .line 5715
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
    .locals 8

    .line 3010
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3011
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3012
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, v2, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3014
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    .line 3016
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    const/4 v2, -0x1

    .line 3018
    :try_start_0
    invoke-static {p1}, Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;->newInstance(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;

    move-result-object p1

    .line 3019
    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/miui/home/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 3022
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3021
    invoke-static {p0, v1, v3, v4, p1}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3028
    iget-object p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    const-string p1, "Launcher"

    .line 3029
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

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 3031
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 3034
    :cond_1
    iget-object p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3035
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 3037
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.DEFAULT"

    .line 3038
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "appWidgetId"

    .line 3039
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_2

    if-eqz v3, :cond_2

    .line 3043
    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.CREATE_SHORTCUT"

    .line 3046
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.NAME"

    .line 3047
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x5

    .line 3050
    invoke-virtual {p0, p1, v2, v4}, Lcom/miui/home/launcher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return v1

    .line 3024
    :catch_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    const v0, 0x7f100169

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return v2
.end method

.method public addContactShortcutToQuickCallCellLayout(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;
    .locals 11

    .line 6685
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->canAddShortcutToQuickCallCellLayout()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->OVERFLOW:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1

    .line 6687
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

    .line 6688
    invoke-virtual/range {v1 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    .line 6689
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->showAddContactButtonInQuickCallCellLayout()V

    .line 6690
    sget-object p1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p1
.end method

.method addFolderToCurrentScreen(Lcom/miui/home/launcher/FolderInfo;II)Lcom/miui/home/launcher/FolderIcon;
    .locals 9

    .line 3140
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 3142
    iget-wide v0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3143
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0044

    .line 3145
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    const-wide/16 v3, -0x64

    .line 3146
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 3147
    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    .line 3146
    invoke-static/range {v1 .. v8}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v1, "Launcher"

    .line 3148
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

    .line 3150
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 3151
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 3150
    invoke-virtual/range {v2 .. v8}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 3152
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

    .line 3073
    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    :cond_0
    if-eqz p3, :cond_1

    .line 3075
    invoke-interface {p3, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v10

    :cond_1
    if-eqz p2, :cond_2

    .line 3078
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 3080
    :cond_2
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 3081
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 3082
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellX:I

    iget v5, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->cellY:I

    iget v6, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 3084
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 3085
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3087
    iget-wide p2, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_3

    .line 3088
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 3089
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Workspace;->onAlertGadget(Lcom/miui/home/launcher/ItemInfo;)V

    .line 3091
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3092
    invoke-virtual {v9}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    .line 3094
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetProvider()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 3097
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzMockWidgetId()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 3098
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3099
    :cond_5
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p3

    .line 3100
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setMtzMockWidgetId(I)V

    .line 3102
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

    .line 6609
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method addItem(Lcom/miui/home/launcher/ItemInfo;ZZZ)Landroid/view/View;
    .locals 11

    .line 6613
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 6614
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    :cond_0
    const/4 v1, 0x0

    .line 6617
    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 6618
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

    .line 6620
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Launcher;->addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    goto :goto_0

    .line 6621
    :cond_2
    instance-of p2, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz p2, :cond_3

    .line 6622
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p2

    .line 6623
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

    .line 6775
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V
    .locals 9

    const-wide/16 v0, -0x65

    .line 6779
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x1

    .line 6780
    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 6781
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 p2, -0x1

    .line 6782
    iput p2, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6784
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p2}, Lcom/miui/home/launcher/HotSeats;->getScreenCount()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v2

    if-gt p2, v2, :cond_2

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    .line 6785
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/HotSeats;->acceptItem(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6792
    :cond_0
    iget-wide p2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 6793
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p2, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const/4 p2, 0x1

    .line 6795
    invoke-virtual {p0, p1, p2, p2}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    if-eqz p4, :cond_4

    .line 6797
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 6787
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

    .line 6790
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

    .line 6677
    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    return-void
.end method

.method public addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p9

    .line 6729
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

    .line 6730
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    move-wide/from16 v0, p2

    .line 6731
    iput-wide v0, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    move/from16 v0, p6

    .line 6732
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    move/from16 v0, p7

    .line 6733
    iput v0, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6734
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 6735
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12}, Lcom/miui/home/launcher/Workspace;->isPosValidate(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p8, :cond_3

    .line 6736
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6740
    :cond_0
    iget-object v1, v11, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v12, v14}, Lcom/miui/home/launcher/Workspace;->findEmptyCell(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;)Lcom/miui/home/launcher/Workspace$CellInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6742
    invoke-static/range {p0 .. p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void

    .line 6744
    :cond_1
    iget-wide v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return-void

    .line 6747
    :cond_2
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellX:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 6748
    iget v2, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->cellY:I

    iput v2, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 6749
    iget-wide v1, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v1, -0x64

    .line 6750
    iput-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    goto :goto_1

    .line 6737
    :cond_3
    :goto_0
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6752
    :cond_4
    :goto_1
    iget-wide v1, v12, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const-string v0, "Launcher"

    .line 6753
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

    .line 6754
    iget-object v0, v11, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, v12}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_2

    .line 6755
    :cond_5
    invoke-virtual {v12, v0}, Lcom/miui/home/launcher/ItemInfo;->hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6756
    iget-wide v2, v12, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v4, v12, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget v6, v12, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v7, v12, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJII)V

    const-string v0, "Launcher"

    .line 6757
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

    .line 6759
    :cond_6
    :goto_2
    instance-of v0, v12, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 6760
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_3

    .line 6761
    :cond_7
    instance-of v0, v12, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_8

    .line 6762
    move-object v0, v12

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addAppWidgetToWorkspace(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    .line 6764
    invoke-virtual {p0, v12, v1, v0}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 6766
    :goto_3
    instance-of v0, v13, Lcom/miui/home/launcher/common/ResultRunnable;

    if-eqz v0, :cond_9

    .line 6767
    move-object v0, v13

    check-cast v0, Lcom/miui/home/launcher/common/ResultRunnable;

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/common/ResultRunnable;->setResult(Ljava/lang/Object;)V

    :cond_9
    if-eqz v13, :cond_a

    .line 6770
    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public addMinusOneView()V
    .locals 1

    .line 5939
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAdded:Z

    if-nez v0, :cond_0

    .line 5940
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->loadPaView()V

    :cond_0
    return-void
.end method

.method public addOnResumeCallback(Lcom/miui/home/launcher/Launcher$OnResumeCallback;)V
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrRemoveNewHome()V
    .locals 3

    .line 3593
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 3596
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3597
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3598
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V

    goto :goto_0

    .line 3601
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isExistNewHomeView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3602
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addPreinstallAppToWorkspace(Lcom/miui/home/launcher/RemoteShortcutInfo;)V
    .locals 2

    .line 7805
    iget v0, p1, Lcom/miui/home/launcher/RemoteShortcutInfo;->itemType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    .line 7807
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Launcher$79;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$79;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/RemoteShortcutInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addRecommendAppToFolderWithDragAnimation(Landroid/view/View;)Z
    .locals 8

    .line 7780
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    .line 7781
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7783
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7784
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v5

    .line 7785
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

    .line 7793
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->prepareForRecommendAppToFolder(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7795
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    .line 7796
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 7797
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 7798
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

    .line 5750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add restore widget to workspace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    iput-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5752
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5753
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5754
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5755
    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v3, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->screenId:J

    iget v5, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/miui/home/launcher/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 5757
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->requestLayout()V

    .line 5758
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->saveWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method addShortcut(Lcom/miui/home/launcher/ShortcutInfo;ZZZ)Lcom/miui/home/launcher/ItemIcon;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6641
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6642
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6643
    instance-of v4, v2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v4, :cond_0

    .line 6644
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 6645
    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 6646
    iget-object v1, v0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    :cond_0
    const-string v2, "Launcher"

    .line 6648
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

    .line 6653
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v1, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6655
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6656
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 6657
    invoke-virtual {v2, v4, v5, v5}, Lcom/miui/home/launcher/CellLayout;->updateCellOccupiedMarks(Landroid/view/View;ZZ)V

    .line 6658
    iget-object v4, v0, Lcom/miui/home/launcher/Launcher;->mLoadingAsyncInflateManager:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    new-instance v5, Lcom/miui/home/launcher/-$$Lambda$Launcher$42wjepKEBA1dQCMLE8L1qyAO_98;

    invoke-direct {v5, v0, v2, v1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$42wjepKEBA1dQCMLE8L1qyAO_98;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ShortcutInfo;)V

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$f9OciOD0JFQ-4GG6FodX-TdfXRY;

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct {v2, v0, v1, v14, v15}, Lcom/miui/home/launcher/-$$Lambda$Launcher$f9OciOD0JFQ-4GG6FodX-TdfXRY;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;ZZ)V

    invoke-virtual {v4, v5, v2}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->inflateViewAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    const-string v2, "Launcher"

    .line 6662
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

    .line 6666
    iget-object v2, v0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    .line 6667
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v7

    .line 6668
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

    .line 7445
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 7446
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$1L5I0Xbu6F-nS8DwcWDG6flZWG4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$1L5I0Xbu6F-nS8DwcWDG6flZWG4;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7447
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 7448
    iget v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez v1, :cond_0

    .line 7449
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$f3khyZ04A9P1ew_EQuQMS3snOQQ;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$f3khyZ04A9P1ew_EQuQMS3snOQQ;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Application;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 7452
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 7453
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mNewInstalledApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public alreadyHasGadget(I)Z
    .locals 2

    .line 3110
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

    .line 3111
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

    .line 8986
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWallpaperZoomManager:Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;

    if-eqz v0, :cond_0

    .line 8987
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/wallpaper/WallpaperZoomManager;->animateWallpaperZoom(Z)V

    :cond_0
    return-void
.end method

.method public appendWorkspaceTransitionType(I)V
    .locals 1

    .line 5344
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->appendScreenTransitionType(I)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 816
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public autoCategoryAllIcons()V
    .locals 1

    .line 1915
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1916
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoCategoryAllIcons()V

    return-void
.end method

.method public autoFillAllScreens()V
    .locals 1

    .line 1910
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1911
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillAllScreens()V

    return-void
.end method

.method public autoFillCurrentScreen()V
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onReorganizeStarted()V

    .line 1906
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->autoFillCurrentScreen()V

    return-void
.end method

.method public autoFolder()V
    .locals 13

    .line 8060
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8063
    invoke-direct {p0, v0, v1, v0}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    .line 8064
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->removeAllEmptyFoldersInCurrentScreen()V

    .line 8065
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/Workspace;->findCurrentScreenFirstVacantArea(II)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8067
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    const/4 v4, 0x0

    aget v5, v0, v4

    aget v6, v0, v1

    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JII)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    .line 8068
    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 8069
    iget-object v7, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    aget v9, v0, v4

    aget v10, v0, v1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/miui/home/launcher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 8070
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/DragController;->autoDrop(Lcom/miui/home/launcher/DropTarget;)V

    :cond_1
    return-void
.end method

.method public autoScrollWorkspace()V
    .locals 1

    .line 5341
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

    .line 6230
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAutoAddNewAppShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6233
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

    .line 6234
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->makeShortcut()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    .line 6235
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToWorkspace(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v1, "Launcher"

    .line 6236
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

    .line 6237
    iget-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 6238
    iget v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 6240
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

    .line 6241
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->isInstallToRecommendFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6242
    invoke-static {v1}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->removePackageName(Ljava/lang/String;)V

    const-string v1, "com.miui.home:string/default_folder_title_recommend"

    const/4 v2, 0x0

    .line 6243
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoByTitle(Ljava/lang/String;Z)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6245
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v2

    iput v2, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 6246
    iget-wide v1, v1, Lcom/miui/home/launcher/FolderInfo;->id:J

    iput-wide v1, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    :cond_4
    const-string v1, "Launcher"

    .line 6248
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

    .line 6250
    :cond_5
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    iget-wide v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget v8, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6255
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Q54Y-mEVjWUsk6ECwJw1MyoOPg0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Q54Y-mEVjWUsk6ECwJw1MyoOPg0;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

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

    .line 8697
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public bindAppInfosRemoved(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .line 6324
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeApps(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    if-eqz p1, :cond_0

    .line 6326
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->onAppInfoRemoved(Ljava/lang/String;)V

    :cond_0
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

    .line 6332
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 6333
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

    .line 6265
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

    .line 7566
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7567
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->resetDragItemIfNeed(Ljava/util/List;Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 7568
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7569
    invoke-virtual {p0, p2, v1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7571
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7572
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsRemoved(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 7574
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7575
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAddedShortcuts(Ljava/util/List;)V

    .line 7576
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindAppsAdded(Ljava/util/List;)V

    .line 7577
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->bindWidgetsRestored(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 7578
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/Launcher;->pendingAllItems(Ljava/util/List;Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 7580
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7581
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->bindAppsUpdated(Ljava/util/List;)V

    .line 7583
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

    .line 7527
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 7528
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7531
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$QIuS0LA7dNYoaTnJMB_QWcVESQk;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$QIuS0LA7dNYoaTnJMB_QWcVESQk;-><init>(Ljava/util/ArrayList;)V

    .line 7532
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$7jXsNsQIaRno6WYReNnmEoyO7-8;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$7jXsNsQIaRno6WYReNnmEoyO7-8;-><init>(Ljava/util/List;)V

    .line 7533
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$ab_tY2MNedJBkhElFh0_lOLzZFA;

    invoke-direct {v2, p0, v1, p2}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ab_tY2MNedJBkhElFh0_lOLzZFA;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/function/Supplier;Ljava/util/List;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 7548
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7549
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/stream/Stream;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$kesWf4IqZwcZk_LtyUF_bXvYpNM;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$kesWf4IqZwcZk_LtyUF_bXvYpNM;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    .line 7550
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

    .line 6270
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateApps(Ljava/util/List;)V

    .line 6271
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->bindShortcutsChangedOnAppUpdate(Ljava/util/List;)V

    return-void
.end method

.method public bindCategoryAdded()V
    .locals 1

    .line 8702
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryAdded()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 8722
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryNameUpdate()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 1

    .line 8717
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 1

    .line 8707
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->bindCategoryRemoved()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 8712
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

    .line 6423
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    .line 6424
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 6425
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationY(F)V

    return-void

    .line 6429
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 6430
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 6431
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setFreeStyle(Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)V

    .line 6432
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 6433
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->cacheSceneScreenRef(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 6435
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

    .line 7638
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7639
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeGadgets(Ljava/util/List;)V

    return-void
.end method

.method public bindItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 13

    .line 5669
    instance-of v0, p1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    .line 5670
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5672
    :cond_0
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 5673
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;IZLjava/lang/Runnable;)V

    goto :goto_0

    .line 5674
    :cond_1
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->isFolderIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5675
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 5676
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    .line 5677
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 5678
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 5680
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

    .line 5683
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5684
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    :cond_3
    return-void
.end method

.method public bindScreenAdded(JII)V
    .locals 1

    .line 6339
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6340
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Workspace;->bindScreenAdded(JII)V

    :cond_0
    return-void
.end method

.method public bindScreenRemoved(J)V
    .locals 1

    .line 6346
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6347
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->bindScreenRemoved(J)V

    :cond_0
    return-void
.end method

.method public bindScreenTrim()V
    .locals 1

    .line 6353
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-eqz v0, :cond_0

    .line 6354
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

    .line 5595
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->firstLoadScreens(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 5597
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5598
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v0

    .line 5599
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5600
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

    .line 6316
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 6318
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

    .line 6275
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Mp7dWBb762rjF1PvC49_lXfVI8I;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Mp7dWBb762rjF1PvC49_lXfVI8I;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

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

    .line 7620
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 7621
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

    .line 7622
    iget-wide v2, v1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 7623
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7625
    iget-wide v3, v1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    goto :goto_0

    .line 7629
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7630
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/HotSeats;->removeShortcuts(Ljava/util/ArrayList;)V

    .line 7631
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7632
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

    .line 6359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6360
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

    .line 6361
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6362
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6365
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6366
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

    .line 6367
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 6368
    invoke-static {v3, p0}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6369
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6370
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6374
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->restoreWidget(Ljava/util/ArrayList;)V

    return-void
.end method

.method public blurBehindWithAnim(Z)V
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Background;->showUninstallBgColor(Z)V

    return-void
.end method

.method public canTouchControllerInterceptTouchEvent()Z
    .locals 5

    .line 4798
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    .line 4799
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    .line 4800
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    .line 4801
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v3

    .line 4802
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4806
    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 4809
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelFolderAnimations()V
    .locals 1

    .line 4754
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4755
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentShowAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    .line 4756
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContentHideAnimator:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->cancel()V

    return-void
.end method

.method public cancelHomeFeedContainerArrowAnim(Z)V
    .locals 1

    .line 8663
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8664
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->cancelArrowAnim(Z)V

    :cond_0
    return-void
.end method

.method public cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 5189
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public changeAlphaScale(FFIIIIZ)V
    .locals 7

    .line 8224
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/miui/home/launcher/Launcher$83;

    move-object v0, p4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/Launcher$83;-><init>(Lcom/miui/home/launcher/Launcher;FFIIZ)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeEditingEntryViewToHotseats()V
    .locals 1

    const/4 v0, 0x0

    .line 5321
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    const/4 v0, 0x0

    .line 5322
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    return-void
.end method

.method public changeHotseatsToEditingEntryView()V
    .locals 1

    const/4 v0, 0x1

    .line 5316
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5317
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    return-void
.end method

.method public changeShortcutMenuLayerAlphaScale(FFIIZ)V
    .locals 2

    .line 8235
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    if-nez v0, :cond_0

    return-void

    .line 8238
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotX:I

    .line 8239
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGesturePivotY:I

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 8240
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 8241
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 8243
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->updateScreenAlphaAndScale(FF)V

    .line 8244
    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mIsIconCopyAnimating:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    if-eqz p1, :cond_2

    .line 8245
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/miui/home/launcher/Launcher;->transIcon(FIIZ)V

    :cond_2
    return-void
.end method

.method public changeStatusBarMode()V
    .locals 3

    .line 5467
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-eqz v0, :cond_0

    return-void

    .line 5470
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher_WallpaperUtils"

    .line 5471
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

    .line 5472
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

    .line 7762
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 7763
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const v1, 0x7f10007a

    const/16 v2, 0x1f4

    .line 7765
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 7766
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7767
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 7768
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/Launcher$78;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/Launcher$78;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

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

    .line 8075
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    .line 8078
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    .line 8079
    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, v5, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_2

    .line 8083
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

    .line 8098
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

    .line 7259
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method

.method public clearLastLaunchApp()V
    .locals 1

    const/4 v0, 0x0

    .line 651
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public closeAllOverLauncherWindow(Ljava/lang/String;)V
    .locals 1

    .line 2317
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x0

    .line 2319
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    .line 2320
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    .line 2321
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 2322
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2323
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$SFJfgjIveAgTI7Qn6_pJYMyr3rU;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$SFJfgjIveAgTI7Qn6_pJYMyr3rU;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeFolder(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7902
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7903
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7904
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7905
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCloseFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method closeFolder()Z
    .locals 1

    const/4 v0, 0x1

    .line 4750
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    move-result v0

    return v0
.end method

.method public closeFolder(Z)Z
    .locals 6

    .line 4760
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4761
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4762
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4763
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const-string v2, "action_close_folder"

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 4764
    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4765
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->cancelFolderAnimations()V

    const/4 v0, 0x1

    .line 4766
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 4767
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4768
    invoke-static {v1}, Lcom/miui/home/launcher/ShortcutIcon;->setEnableLoadingAnim(Z)V

    .line 4769
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->enableFolderInteractive(Z)V

    .line 4770
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->close(Z)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 4772
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3e75c28f    # 0.24f

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/animate/SpringAnimator;->setDampingResponse(FF)V

    .line 4773
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v3, v2, v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->setStartEnd(FF)V

    .line 4774
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v3}, Lcom/miui/home/launcher/animate/SpringAnimator;->start()V

    .line 4775
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->fadeInOrOutScreenContentWhenFolderAnimate(Z)V

    goto :goto_0

    .line 4777
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->resetScreenContent()V

    .line 4779
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 4780
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 4781
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 4782
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

    .line 2175
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2176
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeSelectToggle(I)V

    goto :goto_0

    .line 2178
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    :goto_0
    return-void
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;
    .locals 2

    .line 2101
    instance-of v0, p2, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    instance-of v0, p2, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2103
    :cond_0
    instance-of v0, p2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_1

    const v0, 0x7f0d002a

    .line 2104
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    goto :goto_1

    .line 2106
    :cond_1
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    const v0, 0x7f0d0026

    .line 2107
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    goto :goto_1

    .line 2108
    :cond_2
    instance-of v0, p2, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_3

    const v0, 0x7f0d0044

    .line 2109
    check-cast p2, Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_1

    :cond_4
    :goto_0
    const v0, 0x7f0d003c

    .line 2102
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 2112
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2113
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ItemIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2114
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 2115
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

    .line 3157
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public createNewFolder(JIILjava/lang/String;)Lcom/miui/home/launcher/FolderIcon;
    .locals 3

    .line 3161
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 3162
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3163
    sget-object p5, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto :goto_0

    .line 3165
    :cond_0
    invoke-virtual {v0, p5, p0}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    :goto_0
    const-wide/16 v1, -0x64

    .line 3169
    iput-wide v1, v0, Lcom/miui/home/launcher/FolderInfo;->container:J

    .line 3170
    iput-wide p1, v0, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    .line 3171
    iput p3, v0, Lcom/miui/home/launcher/FolderInfo;->cellX:I

    .line 3172
    iput p4, v0, Lcom/miui/home/launcher/FolderInfo;->cellY:I

    .line 3174
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 3175
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide p2, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
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

    .line 4189
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4190
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 4193
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bc

    if-eq v0, v3, :cond_2

    .line 4194
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2bd

    if-eq v0, v3, :cond_2

    .line 4195
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x2be

    if-ne v0, v3, :cond_3

    .line 4196
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    .line 4197
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz v0, :cond_3

    .line 4198
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->endDrag(I)V

    .line 4202
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_6

    .line 4203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/16 v3, 0x19

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "debug.launcher2.dumpstate"

    .line 4207
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystemProperties(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 4208
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->dumpState()V

    return v2

    :cond_5
    return v2

    .line 4213
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_7

    goto :goto_0

    :cond_7
    return v2

    .line 4220
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 4249
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v0

    .line 4250
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result v1

    .line 4251
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsContainer;->isInLandscapeOverview()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const v2, 0x3c23d70a    # 0.01f

    .line 4252
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_5

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4259
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 4261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 4262
    :cond_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    const-string v0, ""

    .line 4263
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    .line 4265
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    .line 4266
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4268
    :cond_4
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;)V

    .line 4269
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 4270
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4271
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$49;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/Launcher$49;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;Z)V

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    return v0

    :cond_5
    :goto_0
    const-string p1, "Launcher"

    .line 4255
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

    .line 8965
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/BaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8966
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/library/utils/CPUBooster;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8967
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherStateManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8968
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8969
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8971
    :cond_0
    invoke-static {p1, p3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8974
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object p1

    .line 8975
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/compat/LauncherCellCount;->dump(Ljava/io/PrintWriter;)V

    .line 8977
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Workspace;->dump(Ljava/io/PrintWriter;)V

    .line 8978
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/HotSeats;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8980
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    const-string v0, "Launcher"

    .line 7658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    .line 7659
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

    .line 7660
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

    .line 7661
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

    .line 7662
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

    .line 7663
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

    .line 7664
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->dumpState()V

    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    .line 7665
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableFolderInteractive(Z)V
    .locals 1

    .line 4788
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4789
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->enableInteractive(Z)V

    :cond_0
    return-void
.end method

.method public exitMultiSelectEditModeIfNeed()V
    .locals 2

    .line 7979
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7980
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 7981
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public exitTogglesSelectView(Z)V
    .locals 1

    .line 2133
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-eqz v0, :cond_1

    .line 2134
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->finishDropAddSpriteView(Z)V

    .line 2138
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragLayer;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2139
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    :cond_1
    return-void
.end method

.method public fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "Start filling empty cell"

    .line 6588
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6589
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->enableAutoFillEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Launcher"

    const-string v0, "The switch of auto filling empty doesn\'t turn on"

    .line 6590
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6594
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$66;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$66;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finishBindingMissingItems()V
    .locals 0

    .line 5805
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    return-void
.end method

.method public finishBindingSavedItems()V
    .locals 11

    .line 5767
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5768
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5770
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5771
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5772
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v0, 0x0

    .line 5775
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5779
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5780
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReverseComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5781
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

    .line 5783
    iget-wide v4, v3, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const-wide/16 v6, -0x64

    iget v8, v3, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v9, v3, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_0

    .line 5786
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5787
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshFolderIcons()V

    return-void
.end method

.method public finishLoading(ZZ)V
    .locals 7

    .line 5881
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5883
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 5884
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->waitForAllIconsFinishLoading()V

    const-string v1, "home_data_create_time_key"

    const-wide/16 v2, -0x1

    .line 5885
    invoke-static {p0, v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    .line 5886
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.securitycenter"

    .line 5887
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5888
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5890
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.intent.action.LOADING_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5891
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/high16 v2, 0x1000000

    .line 5892
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const-string v2, "status"

    const-string v3, "finish"

    .line 5894
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launcher_mode"

    .line 5895
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.home.launcher.permission.LOADING_STATUS"

    .line 5896
    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5897
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needShowMisplacedTips()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5898
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100394

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5900
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->onLoadingFinished()V

    .line 5902
    new-instance v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    .line 5903
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 5905
    sget-boolean v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "jobscheduler"

    .line 5906
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 5907
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    .line 5908
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v4, 0x5265c00

    .line 5909
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 5910
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 5913
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 5914
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 5916
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->afterShowUserPresentAnimation()V

    if-eqz p1, :cond_5

    .line 5919
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->refreshProgressIcons()V

    goto :goto_0

    .line 5921
    :cond_5
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$Pngo_DKKRgVfGiGEXgwlF2ulN4g;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Pngo_DKKRgVfGiGEXgwlF2ulN4g;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 5922
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZFvivUCZcNuHa1CaF6RtcxTON4c;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZFvivUCZcNuHa1CaF6RtcxTON4c;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    :goto_0
    const-string p1, "Launcher"

    const-string v0, "show present anim"

    .line 5925
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->updatemIncompatibleAppList(Landroid/content/Context;)V

    .line 5927
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->requestCloudSettingsInfo()V

    .line 5928
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkInvalidateGadget()V

    if-eqz p2, :cond_6

    .line 5930
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method public forceHideErrorBar()V
    .locals 1

    .line 5115
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    return-void
.end method

.method public forceReload()V
    .locals 2

    .line 780
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 781
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    const/4 v0, 0x1

    .line 782
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 783
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel;->forceReload(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 784
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    const/4 v0, 0x0

    .line 785
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 786
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 787
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    :cond_0
    return-void
.end method

.method public getActivityLaunchOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1

    .line 8887
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;
    .locals 1

    .line 8738
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    return-object v0
.end method

.method public getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
    .locals 1

    .line 8747
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;
    .locals 1

    .line 8688
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

    .line 7437
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

    .line 7433
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

    .line 7422
    new-instance v0, Lcom/miui/home/launcher/Launcher$76;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$76;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 7428
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7429
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 1

    .line 8876
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/miui/home/launcher/LauncherAppWidgetHost;
    .locals 1

    .line 2273
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .line 2277
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

    .line 8692
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;
    .locals 1

    .line 8684
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    return-object v0
.end method

.method public getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;
    .locals 1

    .line 8644
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    return-object v0
.end method

.method public getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 7252
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7253
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;
    .locals 1

    .line 7441
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mContactsColorizedPortraitController:Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    return-object v0
.end method

.method public getCurrentDisplayRotation()I
    .locals 1

    .line 1608
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    return v0
.end method

.method public getCurrentLightSpeedIconPackageName()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getCurrentOpenedFolder()Landroid/view/View;
    .locals 1

    .line 4828
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4829
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesktopWallpaperManager()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    return-object v0
.end method

.method public getDragController()Lcom/miui/home/launcher/DragController;
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/miui/home/launcher/DragLayer;
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method

.method public getDragLayerBackground()Lcom/miui/home/launcher/Background;
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayerBackground:Lcom/miui/home/launcher/Background;

    return-object v0
.end method

.method public getDragSourceForCancelUninstall(Landroid/view/View;)Lcom/miui/home/launcher/DragSource;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 4938
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 4939
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4940
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4942
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInWorkspace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4943
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    return-object p1

    .line 4944
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4945
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    .line 4946
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4947
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getDragViewContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDrawerHeaderElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    return-object v0
.end method

.method public getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;
    .locals 1

    .line 5515
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    return-object v0
.end method

.method public getEditingState()I
    .locals 1

    .line 5153
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

    .line 727
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

    .line 8640
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    return-object v0
.end method

.method public getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;
    .locals 1

    .line 8636
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    return-object v0
.end method

.method public getFirstAppInfo(Ljava/lang/String;Z)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 7324
    new-instance v0, Lcom/miui/home/launcher/Launcher$72;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/Launcher$72;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Z)V

    .line 7341
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7342
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p1
.end method

.method public getFirstRussiaPreInstallInfo(Ljava/lang/String;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    .line 7346
    new-instance v0, Lcom/miui/home/launcher/Launcher$73;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$73;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    .line 7363
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7364
    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    return-object p1
.end method

.method public getFolderCling()Lcom/miui/home/launcher/FolderCling;
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-object v0
.end method

.method public getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 6575
    :cond_0
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 6576
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    return-object p1

    .line 6577
    :cond_1
    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 6578
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

    .line 7741
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

    .line 7745
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

    .line 7746
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

    .line 7737
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    return-object v0
.end method

.method public getFsGestureCallbackSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;
    .locals 1

    .line 8250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8251
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8252
    new-instance p2, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHomeDataCreateTime()J
    .locals 2

    .line 5157
    iget-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeDataCreateTime:J

    return-wide v0
.end method

.method public getHotSeats()Lcom/miui/home/launcher/HotSeats;
    .locals 1

    .line 5511
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    return-object v0
.end method

.method public getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 3

    const-string v0, "Launcher"

    .line 717
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

    .line 718
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getLastLaunchComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLastMotionEventLocation()Ljava/lang/String;
    .locals 1

    .line 4301
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastMotionEventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;
    .locals 1

    .line 3573
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    return-object v0
.end method

.method public getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 1

    .line 8742
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

    .line 6842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6845
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcutList(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6846
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6847
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeepShortcutInfo;

    .line 6848
    invoke-virtual {v0}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p2

    .line 6843
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "packageName must not null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLoadingAsyncInflateManager()Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
    .locals 1

    .line 5859
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

    .line 7368
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 7371
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7372
    new-instance p1, Lcom/miui/home/launcher/Launcher$74;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/Launcher$74;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V

    .line 7389
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7390
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

    .line 5459
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

    .line 7846
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    return-object v0
.end method

.method public getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;
    .locals 1

    .line 8656
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v0, :cond_0

    .line 8657
    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverLayoutProgress()F
    .locals 1

    .line 8438
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

    .line 8828
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderIcon(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 0

    .line 6584
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1
.end method

.method public getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;
    .locals 4

    .line 6564
    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6566
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

    .line 8848
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    return-object v0
.end method

.method public getRecentsView()Lcom/miui/home/recents/views/RecentsView;
    .locals 1

    .line 8832
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8833
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

    .line 8853
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    return-object v0
.end method

.method public getRootViewRect()Landroid/graphics/Rect;
    .locals 5

    .line 8857
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8858
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 8859
    new-array v0, v0, [I

    .line 8860
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8861
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

    .line 8862
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

    .line 1039
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    return-object v0
.end method

.method public getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 1

    .line 4983
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

    .line 4987
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

    .line 4988
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getScreen()Landroid/widget/FrameLayout;
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getScreenContent()Landroid/widget/FrameLayout;
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    return-object v0
.end method

.method public getScrimView()Lcom/miui/home/launcher/view/ScrimView;
    .locals 1

    .line 8772
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScrimView:Lcom/miui/home/launcher/view/ScrimView;

    return-object v0
.end method

.method public getSearchBar()Lcom/miui/home/launcher/SearchBar;
    .locals 1

    .line 8672
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    return-object v0
.end method

.method public getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;
    .locals 1

    .line 8676
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    return-object v0
.end method

.method public getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;
    .locals 1

    .line 5519
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    return-object v0
.end method

.method public getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;
    .locals 1

    .line 822
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

    .line 7394
    array-length v0, p3

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7397
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7398
    new-instance p3, Lcom/miui/home/launcher/Launcher$75;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/miui/home/launcher/Launcher$75;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 7417
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    .line 7418
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

    .line 6821
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6822
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$Q8N1gbTOot755C4bijAgIXE2XnU;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$Q8N1gbTOot755C4bijAgIXE2XnU;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runRead(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;
    .locals 1

    .line 7842
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    return-object v0
.end method

.method public getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    .line 7263
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onLauncherComeBackFromOtherApp(Ljava/lang/String;)V

    .line 7265
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;

    move-result-object p1

    .line 7266
    instance-of p2, p1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 7267
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    .line 7272
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V

    .line 7273
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    .line 7277
    :cond_0
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$GdBbRQe3uQbqG6BcnvhnwPyGvSM;

    invoke-direct {v1, p0, p1, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$GdBbRQe3uQbqG6BcnvhnwPyGvSM;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)V

    invoke-direct {p2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7312
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1f4

    .line 7314
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p3, "Launcher"

    .line 7315
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

    .line 7317
    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x1

    .line 7318
    invoke-virtual {p2, p3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :goto_1
    return-object p1

    .line 7269
    :cond_1
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mClosingShortcutIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-object v0
.end method

.method public getShowingShortcutIcon(Ljava/lang/String;I)Lcom/miui/home/launcher/ItemIcon;
    .locals 8

    .line 7049
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

    .line 7050
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 7053
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherFsGestureCompat;->getComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7054
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->reConstructComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 7060
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAllAppsController:Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7061
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x3

    .line 7064
    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v4, 0xe

    .line 7065
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    .line 7064
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7066
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 7067
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v6, ""

    invoke-direct {v2, p1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Integer;

    .line 7068
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    .line 7067
    invoke-virtual {p0, v2, p2, p1}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    .line 7071
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_0

    .line 7076
    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->getLastLaunchShortcutIcon(Ljava/util/List;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    .line 7072
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 7073
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLastLaunchApp()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_8

    return-object v1

    .line 7081
    :cond_8
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p2

    if-nez p2, :cond_c

    .line 7082
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 7083
    iget-wide p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 7084
    iget-wide v2, p1, Lcom/miui/home/launcher/FolderInfo;->screenId:J

    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_9

    .line 7085
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v1

    .line 7088
    :cond_a
    iget-wide v2, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long p2, v2, v4

    if-nez p2, :cond_b

    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_b

    .line 7089
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 7090
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

    .line 7091
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 7093
    :cond_c
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_d

    .line 7094
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

    .line 1027
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    return-object v0
.end method

.method public getSpringLayerBackController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;
    .locals 1

    .line 8910
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerBackController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerBackController;

    return-object v0
.end method

.method public getSpringLayerWaveController()Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;
    .locals 1

    .line 8906
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSpringLayerWaveController:Lcom/miui/home/launcher/graphics/drawable/SpringLayerWaveController;

    return-object v0
.end method

.method public getStateManager()Lcom/miui/home/launcher/LauncherStateManager;
    .locals 1

    .line 8648
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    return-object v0
.end method

.method public getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;
    .locals 2

    .line 8765
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    if-nez v0, :cond_0

    .line 8766
    new-instance v0, Lcom/miui/home/launcher/util/SystemUiController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    .line 8768
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSystemUiController:Lcom/miui/home/launcher/util/SystemUiController;

    return-object v0
.end method

.method public getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;
    .locals 1

    .line 7850
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTipConflictsManager:Lcom/miui/home/launcher/common/ConflictsManager;

    return-object v0
.end method

.method public getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    return-object v0
.end method

.method public getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    return-object v0
.end method

.method public getUserUnlockController()Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;
    .locals 1

    .line 1031
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

    .line 8815
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    return-object v0
.end method

.method public getWorkspace()Lcom/miui/home/launcher/Workspace;
    .locals 1

    .line 5503
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object v0
.end method

.method public getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;
    .locals 1

    .line 5507
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    return-object v0
.end method

.method public getWorkspacePreviousTransitionType()I
    .locals 1

    .line 5352
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v0

    return v0
.end method

.method public hasLaunchedAppsFromFolder()Z
    .locals 1

    .line 4820
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    return v0
.end method

.method public hasMoved()Z
    .locals 1

    .line 7114
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

    .line 8839
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8840
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHideLandscapeShortcutMenuLayer:Z

    .line 8841
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 8842
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const-string v0, "Launcher"

    const-string v1, "hideLandscapeShortcutMenuLayer"

    .line 8843
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public hideNavBarButton(Z)V
    .locals 1

    .line 5433
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarController:Lcom/miui/launcher/utils/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/miui/launcher/utils/StatusBarController;->hideNavBarButton(Z)V

    return-void
.end method

.method public hideSceneScreen(Z)V
    .locals 5

    .line 5077
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 5082
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 5083
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 5085
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onHideAnimationStart()V

    const-string v2, "translationY"

    .line 5087
    new-array v3, p1, [F

    .line 5088
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v1

    .line 5087
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5089
    new-instance v3, Lcom/miui/home/launcher/Launcher$55;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/Launcher$55;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5096
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 5098
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const-string v2, "translationY"

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v3, p1, v1

    invoke-static {v0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 5100
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 5102
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 5103
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public hideShortcutMenuWithoutAnim()V
    .locals 2

    .line 5184
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setWithoutAnimNextHide()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 5185
    invoke-virtual {p0, v1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public inMultiSelectMode()Z
    .locals 1

    .line 4397
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4398
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

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

    .line 8796
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 8797
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 8798
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 8799
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->addToAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 8800
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public invalidateWorkspacePreview()V
    .locals 2

    .line 8025
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8026
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8027
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mInvalidateWorkspaceThumbnailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isActivityLocked()Z
    .locals 1

    .line 2984
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    .line 2985
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

    .line 3622
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOpen:Z

    return v0
.end method

.method public isBackCoverChanged()Z
    .locals 1

    .line 4184
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mBackCoverChanged:Z

    return v0
.end method

.method public isBackNewHome()Z
    .locals 5

    const/4 v0, 0x1

    .line 2332
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "com.miui.newhome.base.Settings"

    .line 2333
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isBackNewHome"

    .line 2334
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    .line 2335
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mIsBackNewHomeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2337
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

    .line 2339
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isCurrentScreenNeedAlignIconsToTop()Z
    .locals 1

    .line 5499
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

    .line 8032
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    if-eqz v0, :cond_0

    .line 8033
    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    .line 8751
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isDrawerMode()Z
    .locals 1

    .line 8755
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isElderlyManMode()Z
    .locals 1

    .line 8759
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public isFolderAnimating()Z
    .locals 1

    .line 4824
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderAnimating:Z

    return v0
.end method

.method public isFolderEditing()Z
    .locals 1

    .line 8823
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v0

    return v0
.end method

.method public final isFolderIdValid(J)Z
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFolderOpenedBeforeResume()Z
    .locals 1

    .line 4816
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    return v0
.end method

.method public isFolderShowing()Z
    .locals 1

    .line 4794
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

    .line 4971
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFreeStyleExists:Z

    return v0
.end method

.method public isInDisableEditing()Z
    .locals 2

    .line 5149
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

    .line 5123
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

    .line 5145
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

    .line 5135
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result v0

    return v0
.end method

.method public isInQuickOrEditingModeExiting()Z
    .locals 2

    .line 5161
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

    .line 5127
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

    .line 8652
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

    .line 7862
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7865
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

    .line 5448
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v0, :cond_0

    .line 5449
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

    .line 5454
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v0, :cond_0

    .line 5455
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

    .line 5463
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    return v0
.end method

.method public isMultiSelectEnabled()Z
    .locals 2

    .line 5131
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

    .line 8373
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    return v0
.end method

.method public isPreviewShowing()Z
    .locals 1

    .line 4975
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isQuickCallScreenShowing()Z
    .locals 1

    .line 6681
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isQuickCallScreenShowing()Z

    move-result v0

    return v0
.end method

.method public isSceneAnimating()Z
    .locals 1

    .line 5119
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    return v0
.end method

.method public isSceneShowing()Z
    .locals 1

    .line 4979
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

    .line 8680
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

    .line 732
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

    .line 1043
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur(I)Z

    move-result v0

    return v0
.end method

.method public isShouldBlur(I)Z
    .locals 0

    .line 1047
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1048
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

    .line 5356
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isShowingTransitionEffectDemo()Z

    move-result v0

    return v0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 1

    .line 747
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

    .line 2121
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

    .line 2989
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    return v0
.end method

.method public isUninstallDialogShowing()Z
    .locals 1

    .line 2975
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 8369
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    return v0
.end method

.method public isWidgetThumbnailViewShowing()Z
    .locals 1

    .line 7858
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

    .line 8819
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 1

    .line 2971
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .line 2979
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallAnimShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2980
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

    .line 4434
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInFolder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 4435
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_0

    const-string v0, "launch_from_folder"

    .line 4436
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackLaunchAppAfterBackToHome(Ljava/lang/String;)V

    .line 4438
    :cond_0
    invoke-static {p1, p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->recordLaunchApplicationEvent(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 4439
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 4440
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4441
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getTopActivityUserId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 4442
    invoke-static {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->launchFullScreenFromFreeform(Landroid/content/Context;)V

    return-void

    .line 4445
    :cond_1
    invoke-static {p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->notifyStartActivity(Landroid/content/Intent;)V

    .line 4446
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->launch(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 4448
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    return-void
.end method

.method public notifyBackGestureStatus()V
    .locals 1

    .line 7669
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7670
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureStatusRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationEnd()V
    .locals 0

    .line 8261
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationEnd()V

    return-void
.end method

.method public notifyFsGestureCallbackMiuiAnimationStart()V
    .locals 1

    .line 8256
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->showFsTransAnimation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mShowFsTransAnimation:Z

    .line 8257
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyMiuiAnimationStart()V

    return-void
.end method

.method public notifyHomeModeFsGestureStart()V
    .locals 2

    .line 8265
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8266
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8267
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeGestureStart()V

    :cond_0
    return-void
.end method

.method public notifyMiuiAnimationEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 7240
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7241
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyMiuiAnimationStart()V
    .locals 4

    .line 7215
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    if-eqz v0, :cond_0

    .line 7216
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->cancelIconBackAnimation()V

    return-void

    .line 7219
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$71;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$71;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 7232
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mStartedMamlAnimation:Z

    .line 7235
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7236
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public notifyPowerKeeperGesture(Ljava/lang/String;)V
    .locals 2

    .line 686
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCallingPowerKeeper:Z

    if-nez v0, :cond_0

    .line 687
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$QXmldPwYzG1goLS1nsqPzfGFXWo;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$QXmldPwYzG1goLS1nsqPzfGFXWo;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    .line 1308
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 1317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "reintentdata"

    .line 1318
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p3, "requestCode"

    .line 1319
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "resultCode"

    .line 1320
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1321
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

    .line 1344
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1347
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderCling;->onRequestMarketDetail(Landroid/content/Intent;)V

    goto :goto_0

    .line 1327
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100397

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 1328
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1327
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1329
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showTogglesSelectView()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1331
    invoke-virtual {p0, v0, p3}, Lcom/miui/home/launcher/Launcher;->onDropShortcut(Lcom/miui/home/launcher/DragObject;Landroid/content/Intent;)V

    goto :goto_0

    .line 1338
    :cond_4
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 1335
    :cond_5
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Launcher;->completeAddShortcut(Landroid/content/Intent;)Landroid/view/View;

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_7

    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    const-string v0, "appWidgetId"

    .line 1353
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 1355
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_7
    :goto_0
    :pswitch_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    if-ne p2, v2, :cond_8

    .line 1359
    invoke-static {p0, p3}, Lcom/miui/home/launcher/WallpaperUtils;->setWallpaperFromCustom(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_d

    .line 1363
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p3

    if-nez p3, :cond_9

    return-void

    :cond_9
    if-ne p2, v2, :cond_c

    .line 1365
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

    .line 1366
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getFolderId()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1367
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    goto :goto_1

    .line 1370
    :cond_b
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    goto :goto_2

    .line 1372
    :cond_c
    iget-object p3, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderCling;->onUserDenyRecommendConnectNetWork()V

    :cond_d
    :goto_2
    const/16 p3, 0x3eb

    if-ne p1, p3, :cond_f

    if-ne p2, v2, :cond_e

    .line 1378
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    goto :goto_3

    .line 1380
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

    .line 8443
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onAttachedToWindow()V

    .line 8444
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8445
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 4307
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    .line 4308
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v2, "event_back"

    invoke-direct {v0, v2}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    .line 4313
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOverviewPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4314
    instance-of v1, v0, Lcom/miui/home/recents/views/RecentsContainer;

    if-eqz v1, :cond_1

    .line 4315
    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onBackPressed()V

    :cond_1
    return-void

    .line 4320
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

    .line 4321
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 4322
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

    .line 4328
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

    .line 4329
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    return-void

    .line 4333
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 4337
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_7

    .line 4338
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    return-void

    .line 4342
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 4343
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    return-void

    .line 4347
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->stepClose()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4348
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v0, :cond_9

    const-string v0, "back_key"

    .line 4349
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 4354
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 4358
    :cond_b
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    .line 4359
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    .line 4363
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

    .line 4367
    :cond_d
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 4368
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    return-void

    .line 4372
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 4373
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceHideErrorBar()V

    .line 4374
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v2}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4375
    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_back"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 4407
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4411
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4415
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4416
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 4417
    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4418
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 4421
    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v1, :cond_3

    .line 4422
    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    .line 4423
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderClick(Lcom/miui/home/launcher/FolderInfo;)V

    .line 4424
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/UserFolderCheckUtils;->needToCheckIsGameFolder(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4425
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$WZ94IUGLlZeKC0grMUPRzFkTl6Q;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$WZ94IUGLlZeKC0grMUPRzFkTl6Q;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 4428
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    if-eqz p1, :cond_4

    .line 4429
    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 8517
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8518
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkOrientation()V

    .line 8519
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkDarkMode()V

    .line 8520
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_0

    .line 8521
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Launcher"

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android:fragments"

    .line 854
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 856
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 857
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 858
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 859
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onCreate()V

    .line 860
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 861
    new-instance v1, Lcom/miui/launcher/utils/StatusBarController;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/launcher/utils/StatusBarController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarController:Lcom/miui/launcher/utils/StatusBarController;

    .line 862
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getDesiredHomePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    const-string v1, "Launcher"

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDesiredHomePackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v1, Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherStateManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    .line 865
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 868
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 869
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 870
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 871
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeCreated(Ljava/lang/String;)V

    .line 873
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 875
    invoke-static {p0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->inHomeStack(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Launcher"

    .line 876
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new launcher in home stack, old launcher is not, kill old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->finish()V

    goto :goto_0

    :cond_3
    const-string p1, "Launcher"

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kill new one:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->finish()V

    return-void

    .line 884
    :cond_4
    :goto_0
    new-instance v2, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    .line 885
    sget-boolean v2, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v2, :cond_5

    .line 886
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 889
    :cond_5
    new-instance v2, Lcom/miui/home/settings/LauncherGestureController;

    invoke-direct {v2, p0}, Lcom/miui/home/settings/LauncherGestureController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherGestureController:Lcom/miui/home/settings/LauncherGestureController;

    .line 891
    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$Launcher$KnHm-oNvNRvxX0QPFsR_ZK_e80o;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$KnHm-oNvNRvxX0QPFsR_ZK_e80o;

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$Hm03YO4U2e-p90kM4jIG_KOlLn0;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 897
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->resetMultiSelectMonitor()V

    .line 898
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMiuiAppTransitionHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->registerAppTransitionAnimationHelper(Landroid/content/Context;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 899
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 900
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v3, 0x100

    .line 905
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 906
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_6

    const/high16 v3, 0x4000000

    .line 908
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 910
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_7

    const/high16 v3, -0x80000000

    .line 911
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 913
    :cond_7
    invoke-static {v2, v1, v1}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->setExtraFlag(Landroid/view/Window;II)V

    .line 915
    invoke-virtual {v2, v1}, Landroid/view/Window;->setFormat(I)V

    .line 916
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/Launcher;->adaptPNotchScreen(Landroid/view/Window;)V

    .line 917
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->doSelfProtect()V

    .line 919
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->initDefaultExecutor()V

    .line 924
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    .line 925
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/Application;->setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;

    .line 927
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/Launcher;->sPrefShowIconShadow:Z

    const/4 v2, 0x0

    .line 929
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 930
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    .line 931
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    .line 934
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->updateApplicationEnableStateIfNeed()V

    .line 936
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerBroadcastReceivers()V

    .line 937
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 938
    new-instance v3, Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, p0, v5}, Lcom/miui/home/launcher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;I)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    .line 939
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$XefkfZ_tY-HSqx5cH3U0gASDyQY;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$XefkfZ_tY-HSqx5cH3U0gASDyQY;-><init>(Lcom/miui/home/launcher/Launcher;)V

    sget-object v4, Lcom/miui/home/launcher/-$$Lambda$Launcher$4AEWuv0VF72VJt86kFz4CsMUx3M;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$4AEWuv0VF72VJt86kFz4CsMUx3M;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 942
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 943
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->needToMigrate()Z

    move-result v3

    if-nez v3, :cond_9

    .line 944
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v3, v4, v1, v5}, Lcom/miui/home/launcher/LauncherModel;->startLoader(Landroid/content/Context;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    goto :goto_1

    .line 946
    :cond_9
    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$Launcher$fZz9mUjdfDbFWz6KSjJTSdZiuKc;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$fZz9mUjdfDbFWz6KSjJTSdZiuKc;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v3, v0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 950
    :goto_1
    new-instance v3, Lcom/miui/home/launcher/DragController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/DragController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    .line 951
    new-instance v3, Lcom/miui/home/launcher/touch/FeedTransController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/touch/FeedTransController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFeedTransController:Lcom/miui/home/launcher/touch/FeedTransController;

    .line 953
    new-instance v3, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    .line 954
    new-instance v3, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    .line 956
    new-instance v3, Lcom/miui/home/launcher/ShakeMonitor;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ShakeMonitor;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    .line 958
    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ApplicationsMessage;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 960
    invoke-static {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->createAnimation(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    .line 961
    new-instance v3, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    .line 962
    invoke-static {}, Lcom/miui/home/launcher/util/ViewRootImplHook;->getInstance()Lcom/miui/home/launcher/util/ViewRootImplHook;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    .line 967
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->needHideMinusScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 968
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0067

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    goto :goto_2

    .line 970
    :cond_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0063

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    .line 972
    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->setContentView(Landroid/view/View;)V

    .line 974
    new-instance v3, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    .line 975
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->registerWallpaperChangedReceiver()V

    .line 976
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->setupViews()V

    .line 977
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initConflictItems()V

    .line 981
    new-instance v3, Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-direct {v3}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    .line 982
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    if-eqz v3, :cond_b

    .line 983
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 984
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->setScreenTransitionType(I)I

    .line 988
    :cond_b
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    .line 991
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 992
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 994
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLauncher()V

    .line 995
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->register(Landroid/content/Context;)V

    .line 996
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsNetworkConnectedAsync()V

    .line 998
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$AnLM7EELa8vBTbFKYJyqZoQl3BI;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$AnLM7EELa8vBTbFKYJyqZoQl3BI;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 1003
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$8UN4HEgbFtFRfaGSIoQamsYQUxg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$8UN4HEgbFtFRfaGSIoQamsYQUxg;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 1004
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_c

    .line 1005
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-interface {v1, p1, v3}, Lcom/miui/home/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 1007
    :cond_c
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSystemUIFsgVersion()V

    .line 1008
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getSecurityHideItemsAsync()V

    .line 1009
    new-instance p1, Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/uninstall/UninstallController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUninstallController:Lcom/miui/home/launcher/uninstall/UninstallController;

    .line 1010
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1011
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1013
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1014
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 1015
    new-instance p1, Lcom/miui/home/recents/util/RotationHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/RotationHelper;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    .line 1016
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RotationHelper;->initialize()V

    .line 1019
    :cond_d
    invoke-static {}, Lcom/miui/launcher/utils/DisplayManagerGlobalUtils;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentDisplayRotation:I

    .line 1020
    new-instance p1, Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    .line 1021
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "light_speed_app"

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mCurrentLightSpeedIconPackageName:Ljava/lang/String;

    .line 1023
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->requestPowerKeeperPermissionIfNeed()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 2841
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2845
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7f10021b

    const/4 v2, 0x2

    .line 2849
    invoke-interface {p1, v2, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f100225

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 2850
    invoke-interface {p1, v3, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x52

    .line 2851
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v4, 0x7f10021c

    .line 2852
    invoke-interface {p1, v2, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/16 v0, 0x58

    .line 2853
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return v3
.end method

.method public onDestroy()V
    .locals 4

    .line 2695
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDestroy()V

    .line 2696
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onDestroy()V

    .line 2697
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 2698
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserUnlockController:Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;

    if-eqz v0, :cond_0

    .line 2699
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockController;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    .line 2701
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    .line 2704
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-eqz v0, :cond_2

    .line 2706
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

    .line 2708
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2711
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 2712
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RotationHelper;->destroy()V

    .line 2715
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2716
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onDestory()V

    .line 2719
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

    .line 2720
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onLauncherDestroy()V

    goto :goto_1

    .line 2722
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->disconnectFsGuestureService()V

    .line 2723
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->unregisterMiuiThumbnailAnimationHelper(Landroid/content/Context;)V

    .line 2724
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2725
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eq v1, p0, :cond_6

    .line 2726
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 2730
    :cond_6
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 2732
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->onDestroy()V

    .line 2733
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 2735
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/progress/ProgressManager;->clear()V

    .line 2737
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->onDestroy()V

    .line 2740
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unbindDesktopItems()V

    .line 2742
    new-instance v0, Lcom/miui/home/launcher/Launcher$19;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$19;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 2749
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 2750
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2753
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesktopWallpaperManager:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    if-eqz v0, :cond_8

    .line 2754
    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->unregisterReceiver()V

    .line 2757
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShakeMonitor;->stopMonitorIfNeed()V

    .line 2758
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onDestroy()V

    .line 2759
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onDestroy()V

    const/4 v0, 0x6

    .line 2760
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 2761
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isChangingConfigurations()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    .line 2763
    invoke-static {}, Lcom/miui/home/launcher/LauncherAnimUtils;->onDestroyActivity()V

    .line 2765
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->resetMtzGadgetList()V

    .line 2767
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->onDestroy()V

    .line 2769
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->unRegister(Landroid/content/Context;)V

    .line 2770
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mFsGestureServiceBinded:Z

    if-eqz v0, :cond_9

    .line 2771
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2774
    :cond_9
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sConfigurationChanged:Z

    if-eqz v0, :cond_b

    .line 2775
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->resetResourceDependenceItem()V

    .line 2776
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->sEnteredSceneScreen:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/miui/home/launcher/SpecificDeviceConfig;->isBigScreenLowMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2781
    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2784
    :cond_b
    invoke-static {}, Lcom/miui/home/launcher/FolderCling;->clearOldVersionRecommendStaticMemory()V

    .line 2785
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$dH8lp1GmmFxlkEs5t5E5m1FWql8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$dH8lp1GmmFxlkEs5t5E5m1FWql8;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->doAllEventBusHandlers(Ljava/util/function/Consumer;)V

    .line 2790
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v0, :cond_c

    .line 2791
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onDestory()V

    .line 2793
    :cond_c
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/common/messages/DragMessage;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2794
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_d

    .line 2795
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDestroy()V

    .line 2797
    :cond_d
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2798
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onDestroy()V

    const/4 v0, 0x0

    .line 2799
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 2800
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 2801
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2802
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2803
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_e

    .line 2804
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/ViewRootImplHook;->releaseHook()V

    .line 2806
    :cond_e
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSoundPoolHelper:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    if-eqz v0, :cond_f

    .line 2807
    invoke-virtual {v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->releaseAsync()V

    .line 2809
    :cond_f
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2810
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 2812
    :cond_10
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v0, :cond_11

    .line 2813
    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    .line 2814
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    .line 2816
    :cond_11
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2817
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->onDestroy(Landroid/content/Context;)V

    .line 2819
    :cond_12
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 8451
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onDetachedFromWindow()V

    .line 8452
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8453
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7965
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x9

    .line 7968
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x7

    .line 7969
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_1
    return-void
.end method

.method public onDragOverThresholdWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7993
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

    .line 7938
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 7941
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7944
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7945
    invoke-virtual {p2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 7946
    iget-wide p1, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-eqz p1, :cond_5

    .line 7947
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->inEditingModeAnimating()Z

    move-result p1

    if-nez p1, :cond_5

    .line 7948
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7949
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 7951
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    .line 7954
    :cond_3
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 7955
    invoke-static {p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x11

    .line 7956
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 7958
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

    .line 7975
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->exitMultiSelectEditModeIfNeed()V

    return-void
.end method

.method onDropSettingShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3134
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3135
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3136
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

    .line 3123
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3124
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->startActivityForCreateShortcut(Landroid/content/Intent;)V

    return-void
.end method

.method onDropToggleShortcut(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3128
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLastAddInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 3129
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 3130
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getToggleId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->completeAddShortcutToggle(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 8506
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onEnterAnimationComplete()V

    .line 8507
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8508
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 8510
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8511
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    :cond_1
    return-void
.end method

.method public onEnterRecentsFromApp()V
    .locals 2

    .line 8868
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    .line 8869
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8870
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 8871
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

    .line 2603
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    return-void
.end method

.method public onFolderOpenOrClose()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "onFolderOpenOrClose"

    .line 7139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7140
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 7141
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onGesturePerformAppToHome()V
    .locals 6

    .line 2455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2456
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-eqz v2, :cond_0

    .line 2457
    invoke-virtual {v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->performAppToHome()V

    const-string v2, "Launcher"

    .line 2458
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

    .line 2460
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v2, :cond_1

    .line 2461
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 2462
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2463
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    invoke-interface {v3, v2}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    const-string v2, "Launcher"

    .line 2464
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

    .line 1715
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1716
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->acceptFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    .line 1717
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1719
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1726
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onSearchRequested()Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1000

    .line 6944
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    .line 6952
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLauncherModeChanged()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 760
    iput-wide v0, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 761
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 762
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->registerSearchBarObserver()V

    goto :goto_0

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->unregisterSearchBarObserver()V

    .line 767
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .line 4843
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mInAutoFilling:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4846
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackCoverChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4853
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 4857
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_3

    .line 4858
    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    .line 4860
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_4

    .line 4861
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout;

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    .line 4865
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellLayout$CellInfo;

    .line 4866
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

    .line 4872
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4873
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showScreenLockedToast(Landroid/content/Context;)V

    .line 4874
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->performFakeLongClick()V

    return v1

    .line 4877
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 4878
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->isIconPositionFixed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v1

    .line 4881
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4882
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getSelectCount()I

    move-result v3

    if-gt v3, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 4885
    invoke-direct {p0, p1, v0, v2}, Lcom/miui/home/launcher/Launcher;->dragMultiItems(Landroid/view/View;ZLcom/miui/home/launcher/DropTarget;)V

    goto :goto_3

    .line 4883
    :cond_9
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->dragSingleItem(Lcom/miui/home/launcher/CellLayout$CellInfo;Landroid/view/View;)V

    :cond_a
    :goto_3
    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    .line 4225
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 4226
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4227
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4230
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4231
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4234
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    .line 4235
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_menu"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    .line 4237
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "menu"

    .line 4238
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4239
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

    .line 7135
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 8583
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 8584
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/DeviceConfig;->setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    .line 8585
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onMultiWindowModeChangedInternal(Z)V

    .line 8586
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8587
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/LauncherCallbacks;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChangedInternal(Z)V
    .locals 1

    .line 8592
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onMultiWindowModeChanged(Z)V

    .line 8593
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMultiSelectModeMenu:Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;

    if-eqz v0, :cond_0

    .line 8594
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->onMultiWindowModeChanged(Z)V

    .line 8596
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    if-eqz v0, :cond_1

    .line 8597
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DropTargetBar;->onMultiWindowModeChanged(Z)V

    .line 8599
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8600
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->onMultiWindowModeChanged(Z)V

    .line 8602
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mRotationHelper:Lcom/miui/home/recents/util/RotationHelper;

    if-eqz v0, :cond_3

    .line 8603
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RotationHelper;->onMultiWindowModeChanged(Z)V

    .line 8605
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8606
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onMultiWindowModeChanged(Z)V

    .line 8608
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->clearCurrentTaskInfo()V

    .line 8609
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    return-void
.end method

.method public onNewHomeTransProgress(FF)V
    .locals 1

    .line 8891
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHomeFeedContainer:Lcom/miui/home/launcher/view/HomeFeedContainer;

    if-nez v0, :cond_0

    return-void

    .line 8894
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onNewHomeTransProgress(FF)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 2346
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2347
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startMiPay()V

    .line 2350
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "locate_app"

    .line 2351
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->locateApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2356
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

    .line 2357
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

    .line 2358
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 2362
    :cond_5
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2363
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 2364
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void

    :cond_6
    if-eqz v0, :cond_8

    .line 2367
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onNewIntent()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2368
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 2369
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

    .line 2374
    :cond_9
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2375
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2376
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onNewIntent(Landroid/content/Intent;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 2378
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

    .line 2380
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isBackNewHome()Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v0, :cond_d

    .line 2381
    :cond_c
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    :cond_d
    return-void

    .line 2384
    :cond_e
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2385
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    invoke-static {p0, p1, v0}, Lcom/miui/home/recents/InternalStateHandler;->handleNewIntent(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Z)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "clickHomeKey"

    .line 2387
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendHideRecentsEvent(Ljava/lang/String;)V

    const p1, 0x7f100025

    .line 2388
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 2389
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearRemoteAnimationProvider()V

    .line 2390
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    :cond_f
    return-void

    .line 2393
    :cond_10
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 2394
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    :cond_11
    const-string v3, "skip_reset_gesture_view_state"

    .line 2398
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2399
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 2402
    :cond_12
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 2404
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isActivityLocked()Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    const-string v3, "android.intent.action.MAIN"

    .line 2407
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "homekey"

    .line 2409
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    .line 2411
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v3, :cond_14

    invoke-interface {v3, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_14

    return-void

    :cond_14
    const-string v3, "filter_flag"

    .line 2432
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-lez v3, :cond_15

    if-nez v2, :cond_15

    return-void

    .line 2437
    :cond_15
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2438
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onNewIntent(Landroid/content/Intent;)V

    .line 2440
    :cond_16
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v2, :cond_17

    invoke-interface {v2, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onHomeIntentAfterFilter(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 2442
    :cond_17
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isTogglesSelectViewShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2443
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    goto :goto_3

    :cond_18
    if-eqz v0, :cond_19

    .line 2445
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onNewIntentWhenAlreadyOnHome()V

    goto :goto_3

    .line 2446
    :cond_19
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2447
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 2450
    :cond_1a
    :goto_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 2451
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    return-void
.end method

.method public onNewIntentWhenAlreadyOnHome()V
    .locals 4

    .line 2469
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->onCancelUninstall()Z

    move-result v0

    .line 2474
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2475
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 2477
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2478
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    goto/16 :goto_0

    .line 2479
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 2480
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v1, "event_home"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    goto/16 :goto_0

    .line 2483
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2484
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v3, :cond_5

    .line 2485
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2486
    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    if-eqz v3, :cond_5

    const-string v3, "home_key"

    .line 2487
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    .line 2490
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2491
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    :cond_7
    if-eqz v0, :cond_8

    .line 2493
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$15;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$15;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 2497
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 2493
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2499
    :cond_8
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2500
    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_home"

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    goto :goto_0

    :cond_9
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 2504
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2505
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    .line 2507
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2508
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->moveToDefaultScreen(Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 2904
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->sceneOptionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2907
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onOverlayScrollEnd()V
    .locals 1

    .line 8421
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 8422
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8423
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 1461
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onPause()V

    .line 1462
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onPause()V

    .line 1463
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onPause()V

    .line 1467
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1468
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onPause()V

    :cond_1
    const/4 v0, 0x1

    .line 1470
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1471
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    const/4 v1, 0x3

    .line 1472
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1473
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPausedTime:J

    .line 1475
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 1480
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/home/launcher/Launcher$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$3;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1486
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1487
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onPause()V

    .line 1489
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/Launcher;->mLastPauseTimeForNewInstall:J

    .line 1490
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->cancelImprovedToast()V

    .line 1491
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1492
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onPause()V

    const-wide/32 v0, 0xea60

    .line 1494
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/MemoryUtils;->trimMemoryInSubThreadDelayed(J)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 2872
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2873
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2874
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isSelectViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2877
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

    .line 6924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6925
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v1

    const/16 v2, 0x1000

    if-nez v1, :cond_0

    .line 6926
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f100110

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6929
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 6930
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_1

    .line 6931
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f10002c

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6934
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6935
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f1001ec

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6938
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onReorganizeStarted()V
    .locals 2

    const/4 v0, 0x7

    .line 6063
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x1

    .line 6064
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 6065
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6066
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/MinusOneScreenView;->snapToScreen(I)I

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4532
    :pswitch_0
    array-length p1, p2

    if-ne p1, v1, :cond_0

    aget p1, p3, v0

    if-nez p1, :cond_0

    const-string p1, "Launcher"

    const-string p2, "onRequestPermissionsResult, grant miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 4534
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsPowerKeeperPermissionGranted:Z

    goto :goto_0

    :cond_0
    const-string p1, "Launcher"

    const-string p2, "onRequestPermissionsResult, denied miui.permission.powerkeeper.HIDDEN_MODE_PROVIDER"

    .line 4537
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPowerKeeperPermissionGranted:Z

    goto :goto_0

    .line 4524
    :pswitch_1
    array-length p1, p2

    if-ne p1, v1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 4526
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->run()V

    goto :goto_0

    .line 4528
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mPerformLaunchAction:Lcom/miui/home/launcher/Launcher$PerformLaunchAction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher$PerformLaunchAction;->reset()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 8808
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8810
    invoke-virtual {p1}, Landroid/os/BadParcelableException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1387
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onResume()V

    .line 1388
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 1389
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onResume()V

    .line 1390
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDesiredHomePackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->needStartFallbackHome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$cPlTThdr0Wab9Anhfj5nlx8z5b4;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1394
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1397
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    .line 1398
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    .line 1399
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1400
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onResume()V

    .line 1402
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->onResume()V

    .line 1403
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    const/4 v1, 0x4

    .line 1404
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1405
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->setGlobalThreadPause(Z)V

    .line 1406
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->scrollToDefault()V

    .line 1407
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsNewIntentNow:Z

    .line 1408
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mHasLaunchedAppFromFolder:Z

    .line 1409
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Launcher;->mIsFolderOpenedBeforeResume:Z

    .line 1410
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mForegroundTaskQueue:Lcom/miui/home/launcher/common/ForegroundTaskQueue;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/common/ForegroundTaskQueue;->handleRemainingTasksOnResume(Landroid/app/Activity;)V

    .line 1411
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 1412
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1413
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.MINUS_SCREEN_ONRESUME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1416
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1417
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1418
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mMinusOneScreenView:Lcom/miui/home/launcher/MinusOneScreenView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MinusOneScreenView;->setCurrentScreen(I)V

    .line 1425
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearLastAddInfo()V

    .line 1426
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsAccessibilityEnabledAsync()V

    .line 1427
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_5

    .line 1428
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onResume()V

    .line 1430
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1431
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->notifyCurrentScreen()V

    .line 1432
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    .line 1433
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->clearLastLaunchApp()V

    .line 1434
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$innKuL5cPBQ1aNtVyaDI2W-qTSA;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$innKuL5cPBQ1aNtVyaDI2W-qTSA;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1435
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_6

    .line 1436
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V

    .line 1438
    :cond_6
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1439
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v0, :cond_7

    .line 1440
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$wnmxtjHFAOHJknppYkOq15y3PqU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$wnmxtjHFAOHJknppYkOq15y3PqU;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1442
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onResume()V

    .line 1444
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

    .line 1445
    invoke-interface {v1}, Lcom/miui/home/launcher/Launcher$OnResumeCallback;->onLauncherResume()V

    goto :goto_0

    .line 1447
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mOnResumeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1449
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    return-void
.end method

.method public onScreenCellLocked(Z)V
    .locals 7

    .line 7919
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7920
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7921
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 7923
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7924
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    move v3, v0

    .line 7926
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 7927
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_1

    .line 7928
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

    .line 771
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->forceReload()V

    .line 772
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 773
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetIconSizeScale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 775
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

    .line 2911
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 2914
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 2915
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    .line 2916
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2917
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2919
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2920
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2921
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Launcher$20;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$20;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2929
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 2930
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2933
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2934
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    .line 2935
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 2937
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz v0, :cond_4

    .line 2938
    invoke-virtual {v0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 2939
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 2941
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

    .line 2945
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onScreenSizeChanged()V

    .line 2946
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onScreenSizeChanged()V

    .line 2947
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->onScreenSizeChanged()V

    .line 2948
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->onScreenSizeChanged()V

    .line 2949
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onScreenSizeChanged()V

    .line 2950
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 2951
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 2953
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onScreenSizeChanged()V

    .line 2954
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScreenSizeChanged()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .line 2964
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2965
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :cond_0
    return v1
.end method

.method public onSecondaryPointerDownWhenShortcutMenuShowing(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 7987
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

    .line 1581
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStart()V

    .line 1582
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStart()V

    .line 1583
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1586
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherResume()V

    .line 1587
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStart()V

    .line 1590
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_2

    .line 1591
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1592
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_2
    const/4 v0, 0x1

    .line 1595
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1596
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1597
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v1, :cond_3

    .line 1598
    invoke-interface {v1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStart()V

    .line 1600
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1601
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1602
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1603
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->tryUpdate()V

    :cond_4
    return-void
.end method

.method public onStartHighlightLocatedApp()V
    .locals 3

    const/4 v0, 0x1

    .line 2595
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppLocating:Z

    .line 2596
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useViewToRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 2597
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLocatedAppWatchDogRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->useViewToPostDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onStateSetStart(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 8958
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 8959
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/LauncherCallbacks;->onStateChanged(Lcom/miui/home/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1552
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStop()V

    .line 1553
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onStop()V

    .line 1554
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onStop()V

    .line 1558
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->onLauncherPaused()V

    .line 1559
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->onStop()V

    .line 1560
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onStop()V

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset()V

    const/4 v0, 0x2

    .line 1564
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 1565
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    .line 1566
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherCallbacks;->onStop()V

    :cond_2
    const/4 v0, 0x0

    .line 1569
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsVisible:Z

    .line 1570
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchEdgeLayout:Lcom/miui/home/launcher/search/SearchEdgeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->finish()V

    .line 1571
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    .line 1572
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherLifecycleMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1573
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1574
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->exitLandscapeOverview()V

    :cond_3
    return-void
.end method

.method public onViewAddToScreen(Landroid/view/View;IJZ)V
    .locals 0

    .line 6630
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {p2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->isPreparedAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6631
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->prepareAnimation()V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 6633
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->isResumed(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 6634
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 6635
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

    .line 1295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MINUS_SCREEN_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "WALLPAPER_COLOR_MODE"

    .line 1296
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1298
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->onWallpaperColorChanged()V

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppsView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 1302
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onWallpaperColorChanged()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 7706
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onWindowFocusChanged(Z)V

    .line 7707
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherLifecycleLog;->onWindowFocusChanged(Z)V

    .line 7708
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mCreatedSuccessfully:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7712
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUnlockAnimationStateMachine:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->onWindowFocus()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7713
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    .line 7715
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWindowFocus:Z

    if-eqz p1, :cond_2

    .line 7716
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-nez v0, :cond_2

    .line 7717
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->startAndBindServiceIfNeed()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 7719
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->myInterface:Lcom/android/systemui/fsgesture/IFsGestureService;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    if-nez v0, :cond_3

    .line 7720
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7721
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mResetFsGestureViewState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 7724
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$tk9wCRBQgFOspKe3QuHJSCBuhG8;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$tk9wCRBQgFOspKe3QuHJSCBuhG8;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 7727
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSkipResetFsGestureViewState:Z

    .line 7728
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    const/4 v1, 0x7

    .line 7729
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 7731
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7732
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    :cond_6
    return-void
.end method

.method public onWorkspaceScroll()V
    .locals 1

    .line 7118
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->needCancelBackAnimationWhenWorkspaceScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7119
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->abortBackAnimationOnChange()V

    .line 7121
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7122
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolderOpenAnim:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    :cond_1
    return-void
.end method

.method public openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V
    .locals 1

    .line 4718
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object p2

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 4719
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFolderOpenOrClose()V

    .line 4720
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/home/launcher/Launcher$51;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/Launcher$51;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V

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

    .line 7605
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7607
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 7610
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->findMyPendingSource()Lcom/miui/home/launcher/PendingSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ItemInfo;->startPending(Lcom/miui/home/launcher/PendingSource;)V

    goto :goto_1

    .line 7612
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

    .line 3183
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3184
    instance-of v1, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v1, :cond_0

    .line 3185
    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/CellLayout;->preRemoveView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public prepareAnimationForUnlock()Z
    .locals 2

    .line 6538
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->prepairUserPersentAnimation()Z

    move-result v0

    .line 6539
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mViewRootImplHook:Lcom/miui/home/launcher/util/ViewRootImplHook;

    if-eqz v1, :cond_0

    .line 6540
    invoke-virtual {v1}, Lcom/miui/home/launcher/util/ViewRootImplHook;->scheduleTraversal()V

    :cond_0
    return v0
.end method

.method public prepareBeforeBindItems()V
    .locals 0

    .line 5575
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->updateGadgetBackup(Landroid/content/Context;)V

    return-void
.end method

.method public refreshSearchBarBlur()V
    .locals 1

    .line 8992
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8993
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->refreshBlur()V

    :cond_0
    return-void
.end method

.method reloadDeviceConfig(Z)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 1

    .line 1144
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1145
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherModel;->stopLoader()V

    .line 1146
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1148
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherApp:Lcom/miui/home/launcher/Application;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherProvider;->onCreate()Z

    .line 1151
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mDeviceProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 1152
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    return-object p1
.end method

.method public reloadGadget(I)V
    .locals 6

    .line 3056
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3057
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

    .line 3058
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 3059
    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 3060
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v4, v2, Lcom/miui/home/launcher/gadget/GadgetInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3062
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3063
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3064
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3065
    invoke-virtual {p0, v2, v1, v3}, Lcom/miui/home/launcher/Launcher;->addGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;ZLjava/util/function/Predicate;)Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reloadSearchBarIfNeed()V
    .locals 3

    .line 3675
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v0

    .line 3676
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 3677
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBar()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3679
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 3680
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 3681
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSearchBarVisibleChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3682
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBarContainer:Lcom/miui/home/launcher/SearchBarContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 3684
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3685
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onScreenSizeChanged()V

    :cond_1
    return-void
.end method

.method public removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    .line 2261
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    .line 2262
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2263
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackWidgetRemove(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2266
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    if-eqz v0, :cond_1

    .line 2267
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2269
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 6903
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6904
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public removeDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 6869
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6870
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isQuickCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6871
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    .line 6873
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->isPowerCleanupShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6874
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    .line 6877
    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6879
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeDeepShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 6880
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->onUninstallShortcut(Ljava/util/List;)V

    goto :goto_0

    .line 6882
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$YaN38glr_71Ire_Y-d44XOVZ9yw;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$YaN38glr_71Ire_Y-d44XOVZ9yw;-><init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method removeFolder(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 4

    .line 3189
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3190
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3195
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3196
    invoke-static {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 3197
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 3198
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    .line 3199
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;->onFolderDeleted()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Launcher"

    .line 3192
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

    .line 3203
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3205
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->removeRecommendAppsViewKey()V

    return-void
.end method

.method public removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 7458
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mReadWriteLockHelper:Lcom/miui/home/launcher/common/ReadWriteLockHelper;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$BAa9KsNacQsFCEzmjxB9lDim1Cg;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$BAa9KsNacQsFCEzmjxB9lDim1Cg;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->runWrite(Ljava/lang/Runnable;)V

    .line 7459
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7460
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7462
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ShortcutInfo;->onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public removeFromNewInstalledList(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 7466
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

    .line 2283
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

    .line 2284
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->removeGadget(Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeProgressIcon(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7470
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

    .line 7477
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7479
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    if-eqz v1, :cond_0

    .line 7481
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 7482
    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7483
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->prepareLayoutAnimation()V

    :cond_0
    const-string v1, "Launcher"

    .line 7485
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

    .line 7486
    iget-wide v1, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/FolderInfo;->remove(J)Z

    .line 7488
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7490
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 7491
    instance-of v2, v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    if-eqz v2, :cond_2

    const-string v2, "Launcher"

    .line 7492
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

    .line 7493
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->printDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7492
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7494
    check-cast v1, Lcom/miui/home/launcher/Launcher$IconContainer;

    invoke-interface {v1, v0}, Lcom/miui/home/launcher/Launcher$IconContainer;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)I

    .line 7497
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 7498
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 7501
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 7502
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 7503
    iget-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    iget-wide v6, p1, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 7504
    invoke-virtual {p1, p0, v3}, Lcom/miui/home/launcher/ShortcutInfo;->onReplaced(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p2, "Launcher"

    .line 7510
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

    .line 7513
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 7514
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_5
    return-void
.end method

.method public removeWorkspaceTransitionType(I)V
    .locals 1

    .line 5348
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->removeScreenTransitionType(I)V

    return-void
.end method

.method public resetDragItems()V
    .locals 1

    .line 6216
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onAppsAdded()V

    .line 6217
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 6218
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6220
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->resetTouchCellInfo()V

    :cond_0
    return-void
.end method

.method public safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V
    .locals 3

    .line 4593
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4601
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    const-string v0, "Launcher"

    .line 4602
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

    .line 4596
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4597
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->handleActivityNotFound(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4598
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->makeUnableToStartActivityToast()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToDefault()V
    .locals 2

    .line 1498
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1499
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1500
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPositionSnap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 1

    .line 8428
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAssistantOverlayController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8429
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setCurSelectedIcon(Lcom/miui/home/launcher/IBackAnimView;)V
    .locals 2

    const/4 v0, 0x0

    .line 7159
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIconAnimatingAbort:Z

    .line 7160
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/Launcher$70;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/Launcher$70;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7171
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mBackHomeAnimationStop:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEditingState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5176
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 1

    const/4 v0, 0x0

    .line 5180
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 8

    .line 5193
    iget v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 5196
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher;->rejectEditingModeChanging(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "setEditingState"

    .line 5200
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x7

    const/16 v1, 0x11

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v1, :cond_b

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 5264
    :pswitch_0
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    goto/16 :goto_2

    .line 5261
    :pswitch_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v5, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    goto/16 :goto_2

    :pswitch_2
    const-string p2, "all"

    .line 5238
    invoke-static {p2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    .line 5239
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v0, :cond_2

    .line 5240
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v6, p3}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5242
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 5243
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 5244
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5245
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 5246
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 5247
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5248
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, p1, v4, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5249
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p2}, Lcom/miui/home/launcher/DragLayer;->clearAllResizeFrames()V

    .line 5251
    :cond_3
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 5252
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v5}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    const p2, 0x7f10006e

    .line 5253
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 5254
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleX(F)V

    .line 5255
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/FitSystemWindowView;->setScaleY(F)V

    goto/16 :goto_2

    .line 5203
    :pswitch_3
    iput-boolean v5, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 5204
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v6}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_4

    .line 5205
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_4
    const/4 v6, 0x0

    .line 5207
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/Launcher;->switchThumbnailView(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    .line 5208
    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq v2, v6, :cond_5

    if-eq v6, v1, :cond_5

    .line 5210
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/Launcher;->showEditPanel(Z)V

    .line 5212
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5213
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->forceToHide()V

    .line 5214
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 5215
    :cond_6
    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/ErrorBar;->isShowing()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDropTargetBar:Lcom/miui/home/launcher/DropTargetBar;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallDialogShowing()Z

    move-result v6

    if-nez v6, :cond_7

    .line 5217
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 5219
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isSceneShowing()Z

    move-result v6

    if-nez v6, :cond_8

    .line 5220
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/Launcher;->exitTogglesSelectView(Z)V

    .line 5222
    :cond_8
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5223
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Launcher;->addOnStateChangeFinishRunnable(Ljava/lang/Runnable;)V

    .line 5224
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget v6, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne v6, v2, :cond_9

    move v6, v5

    goto :goto_1

    :cond_9
    move v6, v4

    :goto_1
    invoke-virtual {p2, p1, v6, p3}, Lcom/miui/home/launcher/Workspace;->setEditMode(IZLcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5225
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2, v4}, Lcom/miui/home/launcher/Workspace;->updateAssistantPoints(Z)V

    .line 5226
    iput-boolean v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingModeExiting:Z

    .line 5227
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 5228
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result p2

    if-nez p2, :cond_a

    .line 5230
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Workspace;->checkAllScreensToSelfDelete()V

    .line 5232
    :cond_a
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/Launcher;->showDefaultScreenPreviewView(Z)V

    .line 5233
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p2, v3, :cond_c

    const p2, 0x7f10006f

    .line 5234
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_2

    .line 5258
    :cond_b
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v6}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V

    .line 5268
    :cond_c
    :goto_2
    iget p2, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5269
    iput p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    .line 5270
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-ne p1, v3, :cond_d

    .line 5271
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {p1, v5}, Lcom/miui/home/launcher/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    .line 5273
    :cond_d
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShakeMonitor:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShakeMonitor;->onEditModeStateChanged()V

    const-string p1, "Launcher"

    const-string v3, "edit state changed from %s to %s"

    const/4 v6, 0x2

    .line 5274
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

    .line 5275
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v3, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;

    iget v4, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    invoke-direct {v3, v4, p2}, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;-><init>(II)V

    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5276
    iget p1, p0, Lcom/miui/home/launcher/Launcher;->mEditingState:I

    if-eq p1, v2, :cond_f

    if-ne p2, v2, :cond_e

    if-eq p1, v0, :cond_f

    .line 5278
    :cond_e
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    :cond_f
    if-ne p2, v1, :cond_10

    .line 5281
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-nez p1, :cond_10

    .line 5282
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mShortcutMenuLayer:Lcom/miui/home/launcher/ShortcutMenuLayer;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/ShortcutMenuLayer;->hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V

    .line 5284
    :cond_10
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 5285
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_11
    return-void

    nop

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

    .line 8433
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mFeedOverlayController:Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8434
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setFeedOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchComponentName:Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public setLastLaunchApp(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    .locals 3

    .line 659
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAllLoadedShortcut:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 660
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 661
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isEquals(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    iput-object v1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchApp:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 664
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLastLaunchComponentName:Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method public setLauncherCallbacks(Lcom/miui/home/launcher/LauncherCallbacks;)Z
    .locals 0

    .line 8381
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherCallbacks:Lcom/miui/home/launcher/LauncherCallbacks;

    const/4 p1, 0x1

    return p1
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 8390
    new-instance v0, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 8391
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    const/4 v1, 0x0

    .line 8392
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher$LauncherOverlayCallbacksImpl;->onScrollChanged(F)V

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 8394
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mOverLayoutProgress:F

    const/4 v0, 0x0

    .line 8395
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsMultiProcessMinusScreenShowing:Z

    .line 8396
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 8397
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragLayer;->setAssistantOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setLauncherWindowAlpha(F)V
    .locals 3

    .line 7695
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7696
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 7697
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 7698
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "Launcher"

    .line 7699
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

    .line 8726
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8727
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mStateManager:Lcom/miui/home/launcher/LauncherStateManager;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public showDefaultScreenPreviewView(Z)V
    .locals 3

    .line 8039
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->isShowing()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 8042
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setIsShowing(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 8044
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 8045
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 8046
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setVisibility(I)V

    .line 8047
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8048
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewView:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->onShow(Z)V

    const v0, 0x7f100072

    .line 8049
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    goto :goto_0

    .line 8051
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 8052
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 8053
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultScreenPreviewExitAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const v0, 0x7f10005d

    .line 8054
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 8056
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

    .line 2313
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mErrorBar:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ErrorBar;->showError(I)V

    return-void
.end method

.method public showMenu(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 7873
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-nez p1, :cond_0

    .line 7874
    new-instance p1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    .line 7876
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7877
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->removeSelfByFragmentManager()V

    .line 7879
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/LauncherMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7880
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    if-eqz p1, :cond_3

    .line 7881
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7882
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mLauncherMenuDialog:Lcom/miui/home/launcher/LauncherMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showPresent()V
    .locals 4

    .line 3691
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->shouldShowUserPresentAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3692
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/CPUBooster;->boostCpuToMax(I)V

    .line 3693
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3694
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->boost(Landroid/view/View;Z)V

    .line 3695
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mBoostResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3697
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->showAnimation()V

    goto :goto_0

    .line 3699
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mUserPresentAnimation:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->resetAnimation()V

    .line 3701
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mLifecycleLog:Lcom/miui/home/launcher/LauncherLifecycleLog;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherLifecycleLog;->showUserPresentAnimation()V

    .line 3702
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3703
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    :cond_1
    return-void
.end method

.method public showSceneScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 4995
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z

    .line 4996
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4998
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenLoading()V

    goto :goto_0

    .line 5000
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->reinit()V

    .line 5001
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->showSceneScreenCore(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    :goto_0
    return-void
.end method

.method public showSceneScreenLoading()V
    .locals 5

    .line 5041
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    const/4 v2, 0x0

    const v3, 0x7f0d0052

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    .line 5044
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 5046
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mScreenContent:Lcom/miui/home/launcher/FitSystemWindowView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FitSystemWindowView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 5047
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSceneScreenLoading:Landroid/view/ViewGroup;

    const-string v1, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5048
    new-instance v1, Lcom/miui/home/launcher/Launcher$53;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Launcher$53;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5053
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 5055
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->goOutOldLayer()V

    return-void
.end method

.method public showStatusBar(Z)V
    .locals 2

    .line 5377
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->keepStatusBarShowingForBetterPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5380
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5381
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$8NWtVSbeEsvmKtHOCaDEnepptDY;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$Launcher$8NWtVSbeEsvmKtHOCaDEnepptDY;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showStatusBarDelay(ZJ)V
    .locals 1

    .line 5368
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->keepStatusBarShowingForBetterPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5371
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBar:Z

    .line 5372
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5373
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mShowStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showTogglesSelectView()V
    .locals 4

    .line 2125
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    if-nez v0, :cond_0

    .line 2126
    new-instance v0, Lcom/miui/home/launcher/TogglesSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/TogglesSelectView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Launcher;->mTogglesSelectView:Lcom/miui/home/launcher/TogglesSelectView;

    .line 2127
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

    .line 7888
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-nez p1, :cond_0

    .line 7889
    new-instance p1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-direct {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    .line 7891
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7892
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    .line 7894
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 7895
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    if-eqz p1, :cond_3

    .line 7896
    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 7897
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher;->mTransitionEffectMenuDialog:Lcom/miui/home/launcher/TransitionEffectMenuDialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public showWidgetsPreviewLayout(Z)V
    .locals 4

    .line 5290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    .line 5291
    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5295
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 5296
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->resetAdapter()V

    .line 5297
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setScreenType(I)V

    .line 5298
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setVisibility(I)V

    .line 5299
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5300
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5301
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5302
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->clearAllScreensToast()V

    .line 5303
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/HotSeats;->setVisibility(I)V

    .line 5304
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    goto :goto_1

    .line 5306
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWidgetsPreviewPage:Lcom/miui/home/launcher/widget/WidgetsPreviewPage;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher;->mWidgetPreviewPageExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5307
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 5308
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mEditingEntryView:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->setVisibility(I)V

    .line 5309
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

    .line 5310
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setVisibility(I)V

    .line 5312
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

    .line 5441
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->blockSnap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5442
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->snapToScreen(I)I

    .line 5443
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mWorkspacePreview:Lcom/miui/home/launcher/WorkspaceThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->updateborderLine()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    .line 4548
    :try_start_0
    instance-of v1, p3, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_1

    .line 4549
    move-object v0, p3

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v0

    .line 4550
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    if-eqz v1, :cond_0

    .line 4551
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mAppTransitionManager:Lcom/miui/home/recents/LauncherAppTransitionManager;

    invoke-virtual {v1, p0, p3, v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 4553
    :cond_0
    invoke-static {p3, v0}, Lcom/miui/launcher/utils/ActivityUtilsCompat;->getLaunchActivityOptions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 4556
    :goto_0
    instance-of v0, p2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 4557
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 4558
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch()V

    .line 4559
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setLastLaunchApp(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4560
    invoke-static {p0, v0}, Lcom/miui/home/launcher/LauncherModel;->updateItemFlagAndLaunchCount(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)Z

    .line 4561
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->onLaunchApplication(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 4562
    iget v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 4563
    move-object p3, v0

    check-cast p3, Lcom/miui/home/launcher/DeepShortcutInfo;

    invoke-virtual {p3}, Lcom/miui/home/launcher/DeepShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v2

    .line 4564
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 4565
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4566
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    .line 4565
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/common/PinShortcutRequestUtils;->startShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    const-string v0, "profile"

    .line 4570
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 4571
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x10000000

    .line 4572
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4573
    invoke-direct {p0, v1, p3}, Lcom/miui/home/launcher/Launcher;->tryToAddSourceBounds(Landroid/content/Intent;Landroid/view/View;)V

    .line 4575
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackGoolgPlay(Landroid/content/Intent;)V

    if-eqz v0, :cond_5

    .line 4576
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 4578
    :cond_3
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4579
    invoke-static {p0, v1, v4, v0}, Lcom/miui/launcher/utils/LauncherUtils;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 4582
    :cond_4
    new-instance p3, Lcom/miui/home/launcher/-$$Lambda$Launcher$tQJ56nYJt2EQqZ2uQkIr8ctaNrY;

    invoke-direct {p3, p0, v1, v0, v4}, Lcom/miui/home/launcher/-$$Lambda$Launcher$tQJ56nYJt2EQqZ2uQkIr8ctaNrY;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    goto :goto_2

    .line 4577
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    const v0, 0x7f10034a

    const/4 v1, 0x0

    .line 4586
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Launcher"

    .line 4587
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

    .line 3119
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4647
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4630
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$bOSSRs3Q3rO0LtT_M6Bs976icus;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/miui/home/launcher/-$$Lambda$Launcher$bOSSRs3Q3rO0LtT_M6Bs976icus;-><init>(Lcom/miui/home/launcher/Launcher;ILandroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    const/16 p1, 0x3ea

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 4641
    iput-boolean p1, p0, Lcom/miui/home/launcher/Launcher;->mWaitingForMarketDetail:Z

    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 4

    const/4 v0, 0x3

    .line 5611
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V

    .line 5612
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5614
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5615
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5618
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

    .line 5580
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsLauncherReady:Z

    const/4 v0, 0x1

    .line 5581
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspaceLoading:Z

    .line 5582
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearForReload()V

    .line 5583
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mPosInvalidItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5584
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->startLoading()V

    .line 5585
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mHotSeats:Lcom/miui/home/launcher/HotSeats;

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->startLoading()V

    .line 5586
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->setEnable(Z)V

    .line 5587
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->initLoadingAsyncInflateManager()V

    .line 5588
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->addHomeFeedContainer()V

    .line 5589
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    .line 5590
    invoke-static {p0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6

    .line 2826
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2829
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2830
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->clearTypedText()V

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string p1, "search"

    .line 2834
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/SearchManager;

    .line 2835
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

    .line 8460
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8461
    invoke-static {}, Lcom/miui/home/launcher/common/SecurityHide;->getHideItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    if-nez v0, :cond_0

    .line 8463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIVACY_APPS_HELPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 8464
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8465
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 8466
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mSecurityHideStarted:Z

    :cond_0
    return-void
.end method

.method public tryToRegisterWidgetListener()V
    .locals 3

    .line 8624
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z

    if-nez v0, :cond_0

    .line 8626
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mAppWidgetHost:Lcom/miui/home/launcher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHost;->startListening()V

    const/4 v0, 0x1

    .line 8627
    iput-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsAppWidgetHostStartedListening:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "startListening error"

    .line 8630
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 7012
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 7013
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "miui.intent.action.CREATE_QUICK_CLEANUP_SHORTCUT"

    .line 7017
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7018
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V

    return-void

    :cond_1
    const-string v2, "com.android.securitycenter.CREATE_DEEP_CLEAN_SHORTCUT"

    .line 7022
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7023
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V

    return-void

    :cond_2
    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 7027
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 7029
    new-instance v1, Lcom/miui/home/launcher/Launcher$69;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/miui/home/launcher/Launcher$69;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 7044
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public updateDeepShortcut(Lcom/miui/launcher/common/ShortcutInfoCompat;)V
    .locals 3

    .line 6910
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    .line 6911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6912
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->getLoadedDeepShortcut(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/home/launcher/DeepShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6914
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/DeepShortcutInfo;->updateDeepShortcutInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    :cond_0
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 7643
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mApplicationsMessage:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public updateQsbDefaultLayout(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/appwidget/AppWidgetHostView;)V
    .locals 4

    .line 8480
    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 8481
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8483
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8484
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "attached-launcher-identifier"

    const-string v3, "com.miui.home"

    .line 8485
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "requested-widget-style"

    const-string v3, "cqsb"

    .line 8486
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8487
    invoke-virtual {p3, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 8490
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 p3, 0x80

    .line 8491
    invoke-virtual {p1, v0, p3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 8492
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string p3, "com.google.android.gsa.searchwidget.alt_initial_layout_cqsb"

    const/4 v0, -0x1

    .line 8493
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 8495
    iput p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public updateSoftInputMode()V
    .locals 2

    .line 8784
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    .line 8789
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    if-eq v0, v1, :cond_1

    .line 8790
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8791
    iput v0, p0, Lcom/miui/home/launcher/Launcher;->mSoftInputMode:I

    :cond_1
    return-void
.end method

.method public updateStatusBarClock()V
    .locals 2

    .line 5437
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock(J)V

    return-void
.end method

.method public updateStatusBarClock(J)V
    .locals 1

    .line 5408
    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mDuringMinusOneStartActivityForResult:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher;->isDisableUpdateStatusBarClock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5412
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Launcher"

    const-string p2, "workspace is loading, don\'t update status bar"

    .line 5413
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5417
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5418
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMultiProcessMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher;->mIsPause:Z

    if-nez v0, :cond_3

    .line 5420
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    .line 5421
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 5422
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/Workspace;->isScreenHasClockGadget(J)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 5423
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 5424
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 5425
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

    .line 5427
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/Launcher;->mStatusBarController:Lcom/miui/launcher/utils/StatusBarController;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zCp78dFRWyBMB785MjsSCXNu17A;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$zCp78dFRWyBMB785MjsSCXNu17A;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p2, p1, v0}, Lcom/miui/launcher/utils/StatusBarController;->showOrHideClock(ZLjava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public updateWallpaperOffset(FFFF)Z
    .locals 1

    .line 5537
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffset(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWallpaperOffsetAnimate(FFFF)Z
    .locals 1

    .line 5541
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/DragLayer;->updateWallpaperOffsetAnimate(FFFF)Z

    move-result p1

    return p1
.end method

.method public updateWidgetProgress(Ljava/lang/String;I)V
    .locals 3

    .line 6410
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

    .line 6411
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isRestore()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6412
    invoke-virtual {v1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProgress(I)V

    .line 6413
    iget-object v2, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 6414
    iget-object v1, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v1, Lcom/miui/home/launcher/PendingAppWidgetHostView;

    .line 6415
    invoke-virtual {v1}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->updateProgress()V

    goto :goto_0

    :cond_1
    return-void
.end method
